#!/bin/sh
## sample script for EasyLOG.sh
## v0.0.1 By Jason Regula

SCRIPT_NAME="sample_script.sh"

## Config for log output.
LOGFILE_DATA="\
Sample Data: test sample\
\n\
FINDING time: $CURRENTDATE TIME: $CURRENTTIME
"
## Overwrite builtin values and call script.
EasyLOG_SCRIPT_NAME=$SCRIPT_NAME EasyLOG_DATA=$LOGFILE_DATA ./EasyLOG.sh
