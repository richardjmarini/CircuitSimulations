
#directory structure
NETLISTS_DIR=netlists
SCHEMATICS_DIR=schematics
RAW_DIR=raw
LOGS_DIR=logs
UTILITIES_DIR=utilities
WAVE_DIR=wav
VECTORS_DIR=vectors

# commands
GNETLIST=gnetlist -g spice-sdb
NGSPICE=ngspice -b
TEE=tee
VEC2WAV=$(UTILITIES_DIR)/vec2wav.py

# targets
TARGETS=colpitts

all: $(TARGETS)

colpitts:
	$(GNETLIST) -o $(NETLISTS_DIR)/$@.net $(SCHEMATICS_DIR)/$@.sch
	$(NGSPICE) $(NETLISTS_DIR)/$@.net -r $(RAW_DIR)/$@.raw | $(TEE) $(LOGS_DIR)/$@.log
	$(VEC2WAV) $(VECTORS_DIR)/$@.data $(WAVE_DIR)/$@.wav
