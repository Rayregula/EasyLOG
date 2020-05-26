#!/bin/sh
## Shell script for easily creating quick and custom log files from within your own scripts.
## by defining which arguments to print and then calling the script
## v0.0.8 By Jason Regula


VERSION="v0.1.1"
CURRENTDATE=$(date "+%m-%d-%Y") # current date
CURRENTTIME=$(date "+%I:%M %p") # current time 12 hour clock
CURRENTTIME24=$(date "+%H:%M") # current time 24 hour clock
EasyLOG_FILENAME=${EasyLOG_FILENAME:-"$EasyLOG_SCRIPT_NAME"\_"$CURRENTDATE.txt"}
EasyLOG_DIR=${EasyLOG_DIR:-$HOME/Documents/LOGS/}
EasyLOG_SCRIPT_NAME=${EasyLOG_SCRIPT_NAME:-"EasyLOG.sh"}
EasyLOG_SCRIPT_NAMEINFO=${EasyLOG_SCRIPT_NAMEINFO:-""}
USE24HOUR=${USE24HOUR:-"false"}
[ $USE24HOUR == true ] && CURRENTTIME=$CURRENTTIME24
SHOW_EasyLOG_END=${SHOW_EasyLOG_END:-"true"}


clear
echo ""
echo "EasyLOG.sh -- create easy log files"
echo "Version $VERSION by Jason Regula"
echo ""

# create folders if they don't exist
[[ -d $EasyLOG_DIR ]] && echo "Directory: $EasyLOG_DIR Exists!" || (echo "Directory: $EasyLOG_DIR does not exist, creating.."; mkdir $EasyLOG_DIR)

#default log values; replace in your own script
EasyLOG_HEADER=${EasyLOG_HEADER:-"\
################################# \n\
-- Log file for: $EasyLOG_SCRIPT_NAME $EasyLOG_SCRIPT_NAMEINFO\n\
-- Created with EasyLOG \n\
-- Version: $VERSION by Jason Regula \n\
-- DATE: $CURRENTDATE TIME: $CURRENTTIME \n\
################################# \n\
"}

# defualt log datablock
EasyLOG_DATABLOCK=${EasyLOG_DATABLOCK:-"\
# Overwrite values in your own script. end lines with <backslash n backslash> \n\
# \n\
# From within your script you can use: <EasyLOG_DATABLOCK=\$CUSTOM_FUNCTION> ./easylog.sh \n\
# for any of the variables below to set your own values. \n\
# \n\
# EasyLOG_FILENAME = Filename for the log file. \n\
# EasyLOG_DIR = Log File Directory. \n\
# EasyLOG_SCRIPT_NAME = Name of the script the log was created for. \n\
# EasyLOG_SCRIPT_NAMEINFO = Used just after the script name in the default header (for a version number or the like) \n\
# EasyLOG_HEADER = Used to create a custom log header \n\
# EasyLOG_DATA = Information contained in the first block of log \n\
# EasyLOG_DATA2= Information contained in the second block of log \n\
# USE24HOUR = use 24 hour time format instead of the default 12 hour with AM/PM \n\
# SHOW_EasyLOG_END = show end of file string \n\
# EasyLOG_END = contents of end log string \n\
# \n\
# See the README here: https://github.com/Rayregula/EasyLOG/blob/master/README.md
"}


EasyLOG_DATABLOCK2=${EasyLOG_DATABLOCK2:-" "}


EasyLOG_DATABLOCK3=${EasyLOG_DATABLOCK3:-" "}


EasyLOG_END=${EasyLOG_END:-"\
## End of Log File \n\
## Check out the EasyLOG Project on Github <3 \n\
## https://github.com/Rayregula/EasyLOG
"}


## you can reformat the log files here

function LOG_FORMAT() {
  [ ! -z "$EasyLOG_HEADER" ] && echo $EasyLOG_HEADER
  echo ""
  [ ! -z "$EasyLOG_DATABLOCK" ] && echo $EasyLOG_DATABLOCK
  echo ""
  [ ! -z "$EasyLOG_DATABLOCK2" ] && echo $EasyLOG_DATABLOCK2
  echo ""
  [ ! -z "$EasyLOG_DATABLOCK3" ] && echo $EasyLOG_DATABLOCK3
  echo ""
  echo ""
  [ "$SHOW_EasyLOG_END" == "true" ] && echo $EasyLOG_END


}

function CREATE_LOG() {
  LOG_FORMAT > $EasyLOG_DIR/$EasyLOG_FILENAME
}

echo ""
echo "Log file created at $EasyLOG_DIR with name: $EasyLOG_FILENAME"


CREATE_LOG
exit 0
