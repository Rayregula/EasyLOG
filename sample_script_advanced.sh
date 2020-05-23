#!/bin/sh
## advanced_sample script for EasyLOG.sh
## version 0.0.4 By Jason Regula

VERSION="0.0.4"
SCRIPT_NAME="sample_script_advanced.sh"
DIRFORLOGS="$HOME/Documents/myeasylogs/"

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
## if you have a bunch of things to override it makes it a lot cleaner to escape your newlines.
## then you can easily see all your options
## be sure to place a space before or after the escape character so they don't end up as a single string
CONFIG_FOR_EasyLOG= \
EasyLOG_SCRIPT_NAME=$SCRIPT_NAME \
USE24HOUR=true \
EasyLOG_SCRIPT_NAMEINFO="(version: $VERSION)" \
EasyLOG_DIR=$DIRFORLOGS \
EasyLOG_DATABLOCK=$LOGFILE_DATA \
EasyLOG_DATABLOCK2=$LOGFILE_DATA2 \
EasyLOG_DATABLOCK3="current time/date is: $(date)" \
./EasyLOG.sh

## run variable
$CONFIG_FOR_EasyLOG
