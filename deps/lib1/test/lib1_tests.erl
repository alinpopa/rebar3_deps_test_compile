-module(lib1_tests).
-include_lib("eunit/include/eunit.hrl").

test_test() ->
    ?assertEqual({ok, simple_test0}, lib1:test(simple_test0)).
