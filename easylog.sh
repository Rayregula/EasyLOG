#!/bin/sh
## create customized log files.
## v0.0.3 By Jason Regula

VERSION="v0.0.3"
CURRENTDATE=$(date "+%m-%d-%Y") # current date
CURRENTTIME=$(date "+%I:%M %p") # current date
LOG_NAME=${LOG_NAME:-"Log_$CURRENTDATE.txt"}
# LOGDIR="$HOME/Documents/LOGS/"
LOGDIR=${LOGDIR:-$HOME/Documents/LOGS/}
echo "easylog.sh -- create easy log files"
echo "Version $VERSION by Jason Regula"
echo ""

# create folders if they don't exist
[[ -d $LOGDIR ]] && echo "Directory: $LOGDIR Exists!" || (echo "Directory: $LOGDIR does not exist, creating.."; mkdir $LOGDIR)

#defulat log values; replace in your own script
LOGHEADER=${LOGHEADER:-"\
-- EasyLOG Version: $VERSION \n\
-- DATE: $CURRENTDATE TIME: $CURRENTTIME \n\
"}

LOGDATA=${LOGDATA:-"\
# Overwrite values in your own script. end lines with <backslash n backslash> \n\
# \n\
# From within your script you can use: <LOGDATA=\$CUSTOM_FUNCTION> ./easylog.sh \n\
# for any of the veriables below to set yoru own values. \n\
# \n\
# LOG_NAME=Log_\$CURRENTDATE.txt #Name the log file will be saved with \n\
# LOGDIR=\$HOME/Documents/LOGS/ #Location files will be created \n\
# LOGHEADER= #how the top of the log file will appear. \n\
# LOGDATA= #the informaition to be entered in the body of the log file. \n\
"}


function LOG_FORMAT() {
  echo $LOGHEADER
  echo ""
  echo $LOGDATA
  echo ""
}

LOG_FORMAT > $LOGDIR/$LOG_NAME
exit
