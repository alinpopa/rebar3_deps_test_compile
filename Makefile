.PHONY: all clean test compile

LOCALDEP_DIR := $(shell pwd)/deps
REBAR := $(shell pwd)/rebar3
export LOCALDEP_DIR REBAR

all: compile test

clean:
	make -C deps/lib1 clean
	make -C deps/lib2 clean
	make -C deps/lib3 clean
	make -C libs/app1 clean

compile:
	make -C deps/lib1 compile
	make -C deps/lib2 compile
	make -C deps/lib3 compile
	make -C libs/app1 compile

test: compile
	make -C deps/lib1 test
	make -C deps/lib2 test
	make -C deps/lib3 test
	make -C libs/app1 test
