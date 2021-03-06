-module(erl_optics_sup).

-behaviour(supervisor).

-export([start_link/0]).

-export([init/1]).

-define(SERVER, ?MODULE).

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

init([]) ->
    Children = [],
    RestartStrategy = {one_for_one, 1, 1},
    {ok, {RestartStrategy, Children}}.
