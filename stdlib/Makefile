STD_LIBS=

all: download compile

.PHONY: download compile

download:
	@echo "  Downloading libs for the LFE stdlib ..."
ifdef STD_LIBS
	@echo "Hey there!"
else
	@echo "  No libs are defined for inclusion in the stdlib:"
	@echo "    Skipping download."
endif

compile:
	@echo "  Compiling libs for the LFE stdlib ..."
ifdef STD_LIBS
	@echo "Hey there!"
else
	@echo "  No libs are defined for inclusion in the stdlib:"
	@echo "    Skipping compile."
endif
