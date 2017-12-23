#! /usr/bin/env awk

BEGIN {
    found=0
    config_name=a
}

{
    if (($1=="####")&&($2==config_name)) {
	if ($3=="##########################") {
	    found=1
	}
    }

    if (found==0) {
	print $0
    }

    if ($0=="#### DO NOT DELETE THIS LINE") {
	found=0
    }
}
