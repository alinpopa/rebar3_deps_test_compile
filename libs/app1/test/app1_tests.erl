-module(app1_tests).
-include_lib("eunit/include/eunit.hrl").

test_test() ->
    ?assertEqual({test_app1_ok,ok_test_0}, app1:test()).

test_with_lib1_test() ->
    ?assertEqual({ok, simple_test}, lib1:test(simple_test)).
