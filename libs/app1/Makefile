.PHONY: compile test clean

compile:
	rebar3 compile

test:
	rebar3 do compile, eunit

clean:
	-rm -rf _build
