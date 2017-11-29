#!/bin/bash

gnetlist -g spice-sdb -o colpitts.net colpitts.sch
ngspice -b colpitts.net
