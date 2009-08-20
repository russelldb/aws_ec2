-module(aws_ec2_util).

-export([ec2_url/3, generate_list_params/2]).

-define(PROTOCOL, "http://").
-define(HTTP_VERB, "GET").
-define(EC2_HOST, "eu-west-1.ec2.amazonaws.com").
-define(PATH, "/").
-define(NEW_LINE, "\n").
-define(VERSION, "2009-04-04").
-define(SIG_METHOD, "HmacSHA1").
-define(SIG_VERSION, "2").

%% Generates an EC2 url for the given params
ec2_url(Params, AccessKey, SecretKey) ->
    QueryString = generate_querystring(Params, AccessKey, SecretKey),
    lists:flatten([?PROTOCOL, ?EC2_HOST, ?PATH, "?", QueryString]).

%% Generates a list of param tuples from a list of values and param name
generate_list_params([], _ParamName) ->
	[];
generate_list_params(ParamValues, ParamName) ->
    lists:zipwith(fun(Param, ParamNumber) -> {ParamName ++ "." ++ integer_to_list(ParamNumber), Param} end, ParamValues, lists:seq(1, length(ParamValues))).

%%%%Private
%% The default set of params
default_params(AccessKey) ->
    [{"Version", ?VERSION}, {"Timestamp", generate_timestamp()}, {"SignatureMethod", ?SIG_METHOD}, {"SignatureVersion", ?SIG_VERSION},  {"AWSAccessKeyId", AccessKey}].

%% Generates a unix style timestamp
generate_timestamp() ->
    iso_8601_format(erlang:localtime_to_universaltime(erlang:localtime())).

iso_8601_format(DateTime) ->
    {{Year,Month,Day},{Hour,Min,Sec}} = DateTime,
    TS = io_lib:format("~4.10.0B-~2.10.0B-~2.10.0BT~2.10.0B:~2.10.0B:~2.10.0B.000Z", % Added 3 zeroes as milliseconds, iz a hack but harmless
		       [Year, Month, Day, Hour, Min, Sec]),
    lists:flatten(TS).

%% Function to sort params list.
sort_params(Params) ->
    lists:sort(fun({A, _}, {X, _}) -> A < X end, Params).

%% Function to encode parameter list
encode_params(Params) ->
    [{K, fmt:percent_encode(V)} || {K, V} <- Params].

%% Function to create a list of strings that are K=V
tuples_to_params(Params) ->
    tuples_to_params(Params, []).

tuples_to_params([], Params) -> lists:reverse(Params);
tuples_to_params([{K,V}|T], Params) ->
    tuples_to_params(T, [K++"="++V|Params]).

%% Turns the output of tuples_to_params into a single querystring
params_to_querystring(Params) ->
    params_to_querystring(lists:reverse(Params), []).

params_to_querystring([], QueryString) ->
    lists:flatten(QueryString);
params_to_querystring([H|T], []) ->
    params_to_querystring(T, H);
params_to_querystring([H|T], QueryString) ->
    params_to_querystring(T, [H++"&"|QueryString]).

%% Takes that query string output from params_to_querystring/1 and turns it into the string to be signed for the request
string_to_sign(QueryString) ->
    lists:flatten([?HTTP_VERB, ?NEW_LINE, ?EC2_HOST, ?NEW_LINE, ?PATH, ?NEW_LINE, QueryString]).

%% Signs a query string with the secret key (and base64s the result (and 'urlencodes' the results of that))
sign(StringToSign, Key) ->
    fmt:percent_encode(base64:encode_to_string(crypto:sha_mac(Key, StringToSign))).

%% Generates the query string portion of the ec2 url from a list of param tuples
generate_querystring(Params, AccessKey, SecretKey) ->
    SortedParams = sort_params(lists:append(Params, default_params(AccessKey))),
    SignedString = sign(
		     string_to_sign(
		       params_to_querystring(
			 tuples_to_params(
			   encode_params(SortedParams)
			  )
			)
		      )
		     , SecretKey ),
    FinalParams = lists:append(SortedParams, [{"Signature", SignedString}]),
    params_to_querystring(tuples_to_params(FinalParams)).
