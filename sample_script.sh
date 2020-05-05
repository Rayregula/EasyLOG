#!/bin/sh
## sample script for EasyLOG.sh
## v0.0.1 By Jason Regula

NAME="sample_script.sh"

LOGFILE_HEADER="\
-- EasyLOG 'Version' 22\
\n\
DATE: $CURRENTDATE TIME: $CURRENTTIME
"

LOGFILE_DATA="\
Sample Data: test sample\
\n\
FINDING time: $CURRENTDATE TIME: $CURRENTTIME
"
## Overwrite builtin values and call script
EasyLOG_HEADER=$LOGFILE_HEADER EasyLOG_DATA=$LOGFILE_DATA ./easylog.sh
