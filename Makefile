.PHONY: test run_test

TEST_FILES := $(wildcard test/*_test.sh )

default: help

help:
		@echo "Use make install to install into $(HOME)/bin"
		@echo "See README.md for usage instructions"

install:
		mkdir -p $(HOME)/bin
		install -m 755 aws-profile $(HOME)/bin
		install -m 755 codedeploy $(HOME)/bin
