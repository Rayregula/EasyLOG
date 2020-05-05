#!/bin/sh
## create customized log files.
## v0.0.7 By Jason Regula

VERSION="v0.0.7"
CURRENTDATE=$(date "+%m-%d-%Y") # current date
CURRENTTIME=$(date "+%I:%M %p") # current time 12 hour clock
CURRENTTIME24=$(date "+%H:%M") # current time 24 hour clock
EasyLOG_NAME=${EasyLOG_NAME:-"EasyLOG-latest_$CURRENTDATE.txt"}
EasyLOG_DIR=${EasyLOG_DIR:-$HOME/Documents/LOGS/}
EasyLOG_SCRIPT_NAME=${EasyLOG_SCRIPT_NAME:-"EasyLOG.sh"}
echo "EasyLOG.sh -- create easy log files"
echo "Version $VERSION by Jason Regula"
echo ""

# create folders if they don't exist
[[ -d $EasyLOG_DIR ]] && echo "Directory: $EasyLOG_DIR Exists!" || (echo "Directory: $EasyLOG_DIR does not exist, creating.."; mkdir $EasyLOG_DIR)

#default log values; replace in your own script
EasyLOG_HEADER=${EasyLOG_HEADER:-"\
################################# \n\
-- Log file for: $EasyLOG_SCRIPT_NAME \n\
-- Created with EasyLOG \n\
-- Version: $VERSION by Jason Regula \n\
-- DATE: $CURRENTDATE TIME: $CURRENTTIME \n\
################################# \n\
"}

EasyLOG_DATA=${EasyLOG_DATA:-"\
# Overwrite values in your own script. end lines with <backslash n backslash> \n\
# \n\
# From within your script you can use: <EasyLOG_DATA=\$CUSTOM_FUNCTION> ./easylog.sh \n\
# for any of the veriables below to set yoru own values. \n\
# \n\
# EasyLOG_NAME=Log_\$CURRENTDATE.txt #Name the log file will be saved with. \n\
# EasyLOG_DIR=\$HOME/Documents/LOGS/ #Location files will be created. \n\
# EasyLOG_SCRIPT_NAME=\${EasyLOG_SCRIPT_NAME:-EasyLOG.sh} #name of script that the log file was created by. \n\
# EasyLOG_HEADER= #how the top of the log file will appear. \n\
# EasyLOG_DATA= #the informaition to be entered in the body of the log file. \n\
"}


function LOG_FORMAT() {
  echo $EasyLOG_HEADER
  echo ""
  echo $EasyLOG_DATA
  echo ""
}

function CREATE_LOG() {
  LOG_FORMAT > $EasyLOG_DIR/$EasyLOG_NAME
}

CREATE_LOG
exit
