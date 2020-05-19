#!/bin/sh
## sample script for EasyLOG.sh
## version 0.0.2 By Jason Regula

SCRIPT_NAME="sample_script.sh"

## Config for log output.
LOGFILE_DATA="\
This is a sample log file \n\
\n\
Current User is $USER \n\
The script working Directory is: $(pwd) \n\
"
## Overwrite EasyLOG built-in values and call script.
EasyLOG_SCRIPT_NAME=$SCRIPT_NAME EasyLOG_DATA=$LOGFILE_DATA ./EasyLOG.sh
