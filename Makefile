PATH := $(shell realpath utils):${PATH}

dependencies: /tmp/chu-desk-dependencies
	cat premise $< | sort | uniq > $@

custom-dependencies: /tmp/chu-desk-custom-dependencies
	cat premise $< | sort | uniq > $@

install:
	@install-conf -v conf

install-wsl:
	@install-conf -v -a wsl conf conf/wsl

