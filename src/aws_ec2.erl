


%%%-------------------------------------------------------------------
%%% File    : aws_ec2.erl
%%% Author  : Russell Brown <>
%%% Description : A gen_server to talk at AWS EC2
%%%
%%% Created : 19 Aug 2009 by Russell Brown <russell@ossme.net>
%%%-------------------------------------------------------------------
-module(aws_ec2).

-behaviour(gen_server).

%% API
-export([start_link/0, run_instance/5, run_instances/7, terminate_instance/3, terminate_instances/3, describe_instance/3, describe_instances/3]).

%% gen_server callbacks
-export([init/1, handle_call/3, handle_cast/2, handle_info/2,
	 terminate/2, code_change/3]).

-define(SERVER, ?MODULE).

-include_lib("ec2.hrl").

-record(state, {model}).


%%====================================================================
%% API
%%====================================================================
%%--------------------------------------------------------------------
%% Function: start_link() -> {ok,Pid} | ignore | {error,Error}
%% Description: Starts the server
%%--------------------------------------------------------------------
start_link() ->
    gen_server:start_link({local, ?SERVER}, ?MODULE,  [{filename, filename:join(code:priv_dir(?MODULE), "ec2.xsd")}], []).

%% Run Instance just delegates to run_instances/6
run_instance(Ami, UserData, KeyName, AccessKey, SecretKey) ->
    run_instances(Ami, 1, 1, UserData, KeyName, AccessKey, SecretKey).

%% Run instances
run_instances(Ami, MinCount, MaxCount, UserData, KeyName, AccessKey, SecretKey) ->
    ParamTuples = [{"Action", "RunInstances"}, {"ImageId", Ami}, {"MinCount", integer_to_list(MinCount)}, {"MaxCount", integer_to_list(MaxCount)}, {"KeyName", KeyName}, {"UserData",  base64:encode_to_string(UserData)}],
    gen_server:call(?SERVER, {invoke, ParamTuples, AccessKey, SecretKey}).

%% Terminates the supplied instance id
terminate_instance(InstanceId, AccessKey, SecretKey) ->
    terminate_instances([InstanceId], AccessKey, SecretKey).

%% Terminate all the instances whose ids are in InstanceIds
terminate_instances(InstanceIds, AccessKey, SecretKey) ->
    ParamTuples = lists:append([{"Action", "TerminateInstances"}], aws_ec2_util:generate_list_params(InstanceIds, "InstanceId")),
    gen_server:call(?SERVER, {invoke, ParamTuples, AccessKey, SecretKey}).


%% Describe the supplied instance id
describe_instance(InstanceId, AccessKey, SecretKey) ->
    describe_instances([InstanceId], AccessKey, SecretKey).

%% Describe all the instances whose ids are in InstanceIds. Use [] for ALL instances
describe_instances(InstanceIds, AccessKey, SecretKey) ->
    ParamTuples = lists:append([{"Action", "DescribeInstances"}], aws_ec2_util:generate_list_params(InstanceIds, "InstanceId")),
   gen_server:call(?SERVER, {invoke, ParamTuples, AccessKey, SecretKey}).


%%====================================================================
%% gen_server callbacks
%%====================================================================

%%--------------------------------------------------------------------
%% Function: init(Args) -> {ok, State} |
%%                         {ok, State, Timeout} |
%%                         ignore               |
%%                         {stop, Reason}
%% Description: Initiates the server
%%--------------------------------------------------------------------
init(L) ->
    Filename = proplists:get_value(filename, L),
    {ok, Model} =  erlsom:compile_xsd_file(Filename),
    {ok, #state{model=Model}}.

%%--------------------------------------------------------------------
%% Function: %% handle_call(Request, From, State) -> {reply, Reply, State} |
%%                                      {reply, Reply, State, Timeout} |
%%                                      {noreply, State} |
%%                                      {noreply, State, Timeout} |
%%                                      {stop, Reason, Reply, State} |
%%                                      {stop, Reason, State}
%% Description: Handling call messages
%%--------------------------------------------------------------------
handle_call({invoke, ParamTuples, AccessKey, SecretKey}, _From, State) ->
    Url = aws_ec2_util:ec2_url(ParamTuples, AccessKey, SecretKey),
    {ok, {{_Version, 200, _ReasonPhrase}, _Headers, Body}} = http:request( Url ),
    {ok, Response, _} = erlsom:scan(Body, State#state.model),
    {reply, Response, State};
handle_call(_Request, _From, State) ->
    Reply = ok,
    {reply, Reply, State}.

%%--------------------------------------------------------------------
%% Function: handle_cast(Msg, State) -> {noreply, State} |
%%                                      {noreply, State, Timeout} |
%%                                      {stop, Reason, State}
%% Description: Handling cast messages
%%--------------------------------------------------------------------
handle_cast(_Msg, State) ->
    {noreply, State}.

%%--------------------------------------------------------------------
%% Function: handle_info(Info, State) -> {noreply, State} |
%%                                       {noreply, State, Timeout} |
%%                                       {stop, Reason, State}
%% Description: Handling all non call/cast messages
%%--------------------------------------------------------------------
handle_info(_Info, State) ->
    {noreply, State}.

%%--------------------------------------------------------------------
%% Function: terminate(Reason, State) -> void()
%% Description: This function is called by a gen_server when it is about to
%% terminate. It should be the opposite of Module:init/1 and do any necessary
%% cleaning up. When it returns, the gen_server terminates with Reason.
%% The return value is ignored.
%%--------------------------------------------------------------------
terminate(_Reason, _State) ->
    ok.

%%--------------------------------------------------------------------
%% Func: code_change(OldVsn, State, Extra) -> {ok, NewState}
%% Description: Convert process state when code is changed
%%--------------------------------------------------------------------
code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

%%--------------------------------------------------------------------
%%% Internal functions
%%--------------------------------------------------------------------




