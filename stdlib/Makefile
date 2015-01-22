# this will change to the lfe org later
STD_LIB_ORG=lfex
# this will change to stdlib- later
STD_LIB_PREFIX=
STD_LIBS=lutil lcfg ltest
PWD=$(shell pwd)
LFE_DIR=$(shell dirname $(PWD))
BIN_DIR=$(LFE_DIR)/bin
BIN_PATH=$(BIN_DIR):$(PATH)
LFEC=$(BIN_DIR)/lfec
EBIN_DIR=$(LFE_DIR)/ebin
INCLUDE_DIR=$(LFE_DIR)/include

all: compile

.PHONY: compile $(STD_LIBS)

compile: $(STD_LIBS)

$(STD_LIBS):
	@echo "Compiling $@ ..."
	@if [ ! -d $@ ] ; then \
	git clone https://github.com/$(STD_LIB_ORG)/$(STD_LIB_PREFIX)$@ ; \
	fi
	-@cp $@/include/*.lfe $(INCLUDE_DIR)
	@PATH=$(BIN_PATH) ERL_LIBS=$(LFE_DIR):$(ERL_LIBS) $(LFEC) -o $(EBIN_DIR) \
	$@/src/*.lfe

