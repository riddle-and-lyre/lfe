# this will change to the lfe org later
STD_LIB_ORG=lfex
# this will change to stdlib- later
STD_LIB_PREFIX=
STD_LIBS=lutil lcfg ltest
LFE_DIR=$(shell pwd)/..
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
	-git clone https://github.com/$(STD_LIB_ORG)/$(STD_LIB_PREFIX)$@
	-cp $@/include/*.lfe $(INCLUDE_DIR)
	PATH=$(BIN_PATH) $(LFEC) ERL_LIBS=$(LFE_DIR):$(ERL_LIBS) \
	$@/src/*.lfe -o $(EBIN_DIR)

