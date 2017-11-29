# commands
GNETLIST=gnetlist -g spice-sdb
NGSPICE=ngspice -b
TEE=tee

# directory structure
NETLISTS_DIR=netlists
SCHEMATICS_DIR=schematics
RAW_DIR=raw
LOGS_DIR=logs

# targets
TARGETS=colpitts

all: $(TARGETS)

colpitts:
	$(GNETLIST) -o $(NETLISTS_DIR)/$@.net $(SCHEMATICS_DIR)/$@.sch
	$(NGSPICE) $(NETLISTS_DIR)/$@.net -r $(RAW_DIR)/$@.raw | $(TEE) $(LOGS_DIR)/$@.log
