#! /usr/bin/env awk

BEGIN {
    config_name=a
    found=0
}

{
    if (($1=="####")&&($2==config_name)) {
	if ($3=="##########################") {
	    found=1
	    exit 1
	}
    }
}

END {
    if (found==0) {
	exit 0
    }
}
