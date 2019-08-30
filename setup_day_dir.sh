#!/bin/bash

USAGE="
Usage: $0 [-h] [-a] [n]
Sets up directories for a given day or all days of advent of code. Creates a directory day[n] in current dir with empty files for associated text input and python script.

    -h    show this help message.
    -a    set up directories for all remaining days (not already existing).
    n     input number [0-25] to setup directory for day n.
"

make_dir () {
    mkdir $1
    echo "input_file = \"./$1_input.txt\"" > $1/$1_script.py
    echo >> $1/$1_input.txt
}

setup_dir () {
    DIR=day$1
    if [ -d $DIR ]; then
        echo "Directory $DIR already exists"
    else
        make_dir $DIR
        echo "Successfully made directory $DIR"
    fi
}

if [ $1 == '-h' ]; then
    echo "$USAGE"
elif [ $1 == '-a' ]; then
    COUNT=1
    while [ $COUNT -le 25 ]; do
        setup_dir $COUNT
        ((COUNT++))
    done
    echo "Made all remaining directories"
elif [ $1 -le 25 ] && [ $1 -gt 0 ]; then
    setup_dir $1
else
    echo "Please supply a number in the range 1-25. For help please use $0 -h"
fi

