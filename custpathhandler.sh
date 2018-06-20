#! /usr/bin/env bash

# Contains functions for handling all custom .gitignore
# directory related features

function load_dirs() {
    if [ -f "${SCRIPTPATH}/dirs.list" ]; then
	dirNames=`cat ${SCRIPTPATH}/dirs.list`
    else
	echo "WARNING: Directory list not compiled"
	echo "INFO: Adding default default gitignore directories."

	# Add 2 default locations present in github's repository 
	echo ":${SCRIPTPATH}/gitignore" >> "${SCRIPTPATH}/dirs.list"
	if [ -d "${SCRIPTPATH}/global" ]; then
	    echo "global:${SCRIPTPATH}/global" >> "${SCRIPTPATH}/dirs.list"
	fi

	load_dirs
	return
    fi
    
    # Read each line from dirs.list and add an entry to map.
    # Lines in dirs.list have pattern:
    #     alias:path
    while read -r line; do
	lineSplit=("$line")
	dirNameMap["${lineSplit[0]}"]="${lineSplit[1]}"
    done < "${SCRIPTPATH}/dirs.list"

}
