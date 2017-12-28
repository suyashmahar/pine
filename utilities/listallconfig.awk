#! /usr/bin/env awk
{
    if (($1=="####")&&($3=="##########################")) {
	printf "%s ", $2
    }
}

END {
    printf "\n"
}
