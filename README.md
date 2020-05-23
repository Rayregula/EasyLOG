# EasyLOG
## Shell script for easily creating log files.
### Usage:
1. Create a variable in your own script to replace default `EasyLOG_DATA` and any additional options you want. <br/>
1. Overwrite default values and call EasyLOG.sh: `<EasyLOG Variable>=<User_Variable> [...] ./EasyLOG.sh`


###### When creating a variable to override the default `EasyLOG_DATA` or `EasyLOG_HEADER` place a: "\n\\" after a string to create a new line in the log file.

##### [See Examples Below:](https://github.com/Rayregula/EasyLOG#examples) 

 
## User Writable Values:
###### Variables below are able to be freely customized on a per script basis:
 `EasyLOG_FILENAME` = Filename for the log file. <br/>
 `EasyLOG_DIR` = Log File Directory. <br/>
 `EasyLOG_SCRIPT_NAME` = Name of the script the log was created for. <br/>
 `EasyLOG_SCRIPT_NAMEINFO` = Used just after the script name in the default header (for a version number or the like) <br/>
 `EasyLOG_HEADER` = Used to create a custom log header <br/>
 `EasyLOG_DATA` = Information contained in the first block of log <br/>
 `EasyLOG_DATA2`= Information contained in the second block of log <br/>
 `USE24HOUR` = use 24 hour time format instead of the default 12 hour with AM/PM <br/>
 `SHOW_EasyLOG_END` = show end of file string <br/>
 `EasyLOG_END` = contents of end log string <br/>
 
## Log Fortmat:
###### Log file is formatted as follows:

 * `EasyLOG_HEADER`
 * 
 * `EasyLOG_DATABLOCK`
 * 
 * `EasyLOG_DATABLOCK2`
 * 
 * `EasyLOG_DATABLOCK3`
 * 
 * 
 * `EasyLOG_END`
 
## Default Values:
###### Default values are as follows if you choose not to override them:
 `EasyLOG_FILENAME` = `$EasyLOG_SCRIPT_NAME_$CURRENTDATE.txt` <br/>
 `EasyLOG_DIR` = `$HOME/Documents/LOGS/` <br/>
 `EasyLOG_SCRIPT_NAME` = `EasyLOG.sh` <br/>
 `EasyLOG_SCRIPT_NAMEINFO` = `""`

 `EasyLOG_HEADER` = <br/> 
 
	################################# \n\
	-- Log file for: $EasyLOG_SCRIPT_NAME $EasyLOG_SCRIPT_NAMEINFO\n\
	-- Created with EasyLOG \n\
	-- Version: $VERSION by Jason Regula \n\
	-- DATE: $CURRENTDATE TIME: $CURRENTTIME \n\
	################################# \n\
	
 `EasyLOG_DATA` = [Default Help Info] <br/>
 `EasyLOG_DATA2` = [Left Blank] <br/>
 `EasyLOG_DATA3` = [Left Blank] <br/>
 `USE24HOUR` = false <br/>
 `SHOW_EasyLOG_END` = true <br/>
 `EasyLOG_END` = <br/>
 
 ```
## End of Log File
## Check out the EasyLOG Project on Github <3
## https://github.com/Rayregula/EasyLOG
 ```

---
## Examples:
### Simple Example:
#### Running the following script:

```bash
#!/bin/sh
## simple sample script for EasyLOG.sh
## version 0.0.3 By Jason Regula

SCRIPT_NAME="sample_script_simple.sh"

## Config for log output.
LOGFILE_DATA="\
This is a sample log file \n\
\n\
Current User is $USER \n\
The script working Directory is: $(pwd) \n\
"
## Overwrite EasyLOG built-in values and call script.
EasyLOG_SCRIPT_NAME=$SCRIPT_NAME EasyLOG_DATA=$LOGFILE_DATA ./EasyLOG.sh
```	
#### Will create a log with the following:

```
################################# 
-- Log file for: sample_script_simple.sh 
-- Created with EasyLOG 
-- Version: v0.1.1 by Jason Regula 
-- DATE: 05-22-2020 TIME: 05:53 PM 
################################# 


This is a sample log file 

Current User is jason 
The script working Directory is: /Users/jason/Documents/Projects/EasyLOG 





## End of Log File 
## Check out the EasyLOG Project on Github <3 
## https://github.com/Rayregula/EasyLOG
``` 
---
### Advanced Sample:
#### Running the following script:

```bash
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
EasyLOG_DATA=$LOGFILE_DATA \
EasyLOG_DATA2=$LOGFILE_DATA2 \
EasyLOG_DATA3="current time/date is: $(date)" \
./EasyLOG.sh

## run variable
$CONFIG_FOR_EasyLOG
```

#### Will create a log with the following:

```
################################# 
-- Log file for: sample_script_advanced.sh (version: 0.0.4)
-- Created with EasyLOG 
-- Version: v0.1.1 by Jason Regula 
-- DATE: 05-22-2020 TIME: 18:08 
################################# 


This is a sample log file 

Current User is jason
The script working Directory is: /Users/jason/Documents/Projects/EasyLOG 


You can pass data from existing variables 
Just assign them to the appropriate EasyLOG variable before running EasyLog 

plain data may also be assigned directly to an EasyLOG variable if it's easier to do so. 
<3 Jason 


current time/date is: Fri May 22 18:08:42 AKDT 2020


## End of Log File 
## Check out the EasyLOG Project on Github <3 
## https://github.com/Rayregula/EasyLOG

```
---
### Practical Sample:

---