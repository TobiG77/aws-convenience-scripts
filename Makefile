
default: help

help:
		@echo "Use make install to install into $(HOME)/bin"
		@echo "See README.md for usage instructions"

install:
		mkdir -p $(HOME)/bin
		install -m 755 aws-profile-switch $(HOME)/bin
