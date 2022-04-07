
#directory structure
NET_DIR=netlists
SCHEMATICS_DIR=schematics
RAW_DIR=raw
LOG_DIR=logs
UTILITIES_DIR=utilities
WAV_DIR=wav
VEC_DIR=vectors
PS_DIR=postscript
MK_DIR=mkdir -p
RM_DIR=rm -fr
OUT_DIRS=$(RAW_DIR) $(LOG_DIR) $(WAV_DIR) $(NET_DIR) $(VEC_DIR) $(WAV_DIR) $(PS_DIR)

# commands
GNETLIST=gnetlist -g spice-sdb
NGSPICE=ngspice -b
TEE=tee
VEC2WAV=$(UTILITIES_DIR)/vec2wav.py

# targets
TARGETS=setup colpitts hartley multivibrator polivoks

all: $(TARGETS)

clean:
	$(foreach dir, $(OUT_DIRS), $(RM_DIR) $(dir);)

setup:
	$(foreach dir, $(OUT_DIRS), $(MK_DIR) $(dir);)

colpitts: setup
	$(GNETLIST) -o $(NET_DIR)/$@.net $(SCHEMATICS_DIR)/$@.sch
	$(NGSPICE) $(NET_DIR)/$@.net -r $(RAW_DIR)/$@.raw | $(TEE) $(LOG_DIR)/$@.log
	$(VEC2WAV) $(VEC_DIR)/$@.vec $(WAV_DIR)/$@.wav

hartley: setup
	$(GNETLIST) -o $(NET_DIR)/$@.net $(SCHEMATICS_DIR)/$@.sch
	$(NGSPICE) $(NET_DIR)/$@.net -r $(RAW_DIR)/$@.raw | $(TEE) $(LOG_DIR)/$@.log
	$(VEC2WAV) $(VEC_DIR)/$@.vec $(WAV_DIR)/$@.wav

multivibrator: setup
	$(GNETLIST) -o $(NET_DIR)/$@.net $(SCHEMATICS_DIR)/$@.sch
	$(NGSPICE) $(NET_DIR)/$@.net -r $(RAW_DIR)/$@.raw | $(TEE) $(LOG_DIR)/$@.log
	$(VEC2WAV) $(VEC_DIR)/$@.vec $(WAV_DIR)/$@.wav

polivoks: setup
	$(GNETLIST) -o $(NET_DIR)/$@.net $(SCHEMATICS_DIR)/$@*.sch
	$(NGSPICE) $(NET_DIR)/$@.net -r $(RAW_DIR)/$@.raw | $(TEE) $(LOG_DIR)/$@.log
