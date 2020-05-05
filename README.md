# EasyLOG
## Shell script for easily creating log files.
### Usage:
1. Create a variable in your own script to replace `EasyLOG_DATA` and any additional options you want. <br/>
1. Overwrite default values and call EasyLOG.sh: `<EasyLOG Variable>=<User_Variable> [...] ./EasyLOG.sh`


###### When creating a variable to override `EasyLOG_DATA` or `EasyLOG_HEADER` place a: "\n\\" after a string to create a new line in the log file.

##### See Examples Below: 

 
## User Writable Values:
###### Variables below are able to be freely customized on a per script basis:
 `EasyLOG_NAME` = Filename for the log file. <br/>
 `EasyLOG_DIR` = Log File Directory. <br/>
 `EasyLOG_SCRIPT_NAME` = Name of the script the log was created for. <br/>
 `EasyLOG_HEADER` = Used to create a custom log header <br/>
 `EasyLOG_DATA` = Information contained in the log <br/>
 
 
## Default Values:
###### Values are as follows if you choose not to override them:
 `EasyLOG_NAME` = `EasyLOG-latest_$CURRENTDATE.txt` <br/>
 `EasyLOG_DIR` = `$HOME/Documents/LOGS/` <br/>
 `EasyLOG_SCRIPT_NAME` = `EasyLOG.sh` <br/>

 `EasyLOG_HEADER` = <br/> 
 
	################################# \n\
	-- Log file for: $EasyLOG_SCRIPT_NAME \n\
	-- Created with EasyLOG \n\
	-- Version: $VERSION by Jason Regula \n\
	-- DATE: $CURRENTDATE TIME: $CURRENTTIME \n\
	################################# \n\
	
 `EasyLOG_DATA` = Information contained in the log <br/>


## Examples:
### Running the following script:

	#!/bin/sh
	## sample script for EasyLOG.sh
	## v0.0.1 By Jason Regula

	SCRIPT_NAME="sample_script.sh"

	## Config for log output.
	LOGFILE_DATA="\
	This is a sample log file: \n\
	\n\
	Current User is $USER \n\
	The script working Directory is: $(pwd) \n\
	"
	## Overwrite built-in values and call script.
	EasyLOG_SCRIPT_NAME=$SCRIPT_NAME EasyLOG_DATA=$LOGFILE_DATA ./EasyLOG.sh
	
### Will create a log with the following:

	################################# 
	-- Log file for: sample_script.sh 
	-- Created with EasyLOG 
	-- Version: v0.0.5 by Jason Regula 
	-- DATE: 05-05-2020 TIME: 03:46 AM 
	################################# 


	This is a sample log file: 

	Current User is jason 
	The script working Directory is: /Users/jason/Documents/Projects/EasyLOG 