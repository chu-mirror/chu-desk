PATH := $(shell realpath utils):${PATH}

dependencies: /tmp/chu-desk-dependencies
	cat $< | sort | uniq > $@

install:
	@install-conf -v conf

install-wsl:
	@install-conf -v -a wsl conf conf/wsl

