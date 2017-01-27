-module(lib1).
-export([test/0]).

-ifdef(TEST).
-export([test/1]).
-endif.

test() ->
    ok_test_0.

-ifdef(TEST).
test(What) ->
    {ok, What}.
-endif.
