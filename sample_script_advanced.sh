#!/bin/sh
## advanced_sample script for EasyLOG.sh
## version 0.0.3 By Jason Regula

SCRIPT_NAME="sample_script_advanced.sh"
DIRFORLOGS="$HOME/Documents/myeasylogs/"
#EasyLOG_FILENAME=""
## Config for log output.
LOGFILE_DATA="\
This is a sample log file \n\
\n\
Current User is $USER \n\
The script working Directory is: $(pwd) \n\
"
## Config for log block 2 output
LOGFILE_DATA2="\
You can pass data from existing variables \n\
Just assign them to the appropriate EasyLOG variable before running EasyLog \n\
\n\
plain data may also be assigned directly to an EasyLOG variable if it's easier to do so.
\n\
<3 Jason \n\
"
## Overwrite EasyLOG built-in values and call script.
EasyLOG_SCRIPT_NAME=$SCRIPT_NAME EasyLOG_DIR=$DIRFORLOGS EasyLOG_DATA=$LOGFILE_DATA EasyLOG_DATA2=$LOGFILE_DATA2 EasyLOG_DATA3="current time/date is: $(date)" ./EasyLOG.sh
