%%%-------------------------------------------------------------------
%%% File    : aws_sup.erl
%%% Author  : Russell Brown <>
%%% Description : supervisor for aws_ec2 gen server
%%%
%%% Created : 19 Aug 2009 by Russell Brown <>
%%%-------------------------------------------------------------------
-module(aws_sup).

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

%%====================================================================
%% API functions
%%====================================================================
%%--------------------------------------------------------------------
%% Function: start_link() -> {ok,Pid} | ignore | {error,Error}
%% Description: Starts the supervisor
%%--------------------------------------------------------------------
start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%%====================================================================
%% Supervisor callbacks
%%====================================================================
%%--------------------------------------------------------------------
%% Func: init(Args) -> {ok,  {SupFlags,  [ChildSpec]}} |
%%                     ignore                          |
%%                     {error, Reason}
%% Description: Whenever a supervisor is started using 
%% supervisor:start_link/[2,3], this function is called by the new process 
%% to find out about restart strategy, maximum restart frequency and child 
%% specifications.
%%--------------------------------------------------------------------
init([]) ->
    AwsEc2Child = {ec2,{aws_ec2,start_link,[]},
	      permanent,2000,worker,[aws_ec2]},
    {ok,{{one_for_all,0,1}, [AwsEc2Child]}}.

%%====================================================================
%% Internal functions
%%====================================================================
