-module(app1).
-export([test/0]).

test() ->
    {test_app1_ok, lib1:test()}.
