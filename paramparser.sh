#! /usr/bin/env bash

# From: https://stackoverflow.com/a/38153758/6556360
# parse the arguments.
parse_params ()
{
    local existing_named
    local ARGV=()
    echo "local ARGV=(); "
    while [[ "$1" != "" ]]; do
        # If equals delimited named parameter
        if [[ "$1" =~ ^..*=..* ]]; then
            # key is part before first =
            local _key=$(echo "$1" | cut -d = -f 1)
            # val is everything after key and = (protect from param==value error)
            local _val="${1/$_key=}"
            # remove dashes from key name
            _key=${_key//\-}
            # search for existing parameter name
            if (echo "$existing_named" | grep "\b$_key\b" >/dev/null); then
                # if name already exists then it's a multi-value named parameter
                # re-declare it as an array if needed
                if ! (declare -p _key 2> /dev/null | grep -q 'declare \-a'); then
                    echo "$_key=(\"\$$_key\");"
                fi
                # append new value
                echo "$_key+=('$_val');"
            else
                # single-value named parameter
                echo "local $_key=\"$_val\";"
                existing_named=" $_key"
            fi
            # If standalone named parameter
        elif [[ "$1" =~ ^\-. ]]; then
            # remove dashes
            local _key=${1//\-}
            echo "local $_key=\"$_key\";"
            # non-named parameter
        else
            # escape asterisk to prevent bash asterisk expansion
            _escaped=${1/\*/\'\"*\"\'}
            echo "ARGV+=('$_escaped');"
        fi
        shift
    done
}
