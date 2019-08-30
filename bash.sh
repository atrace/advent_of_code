# Pass arg 1 as day number 

make_dir () {
    mkdir $1
    echo >> $1/$1_script.py
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

if [ $1 == 'a' ]; then
    COUNT=1
    while [ $COUNT -le 25 ]; do
        setup_dir $COUNT
        ((COUNT++))
    done
    echo "Made all remaining directories"
elif [ $1 -le 25 ] && [ $1 -gt 0 ]; then
    setup_dir $1
else
    echo "Please enter a number in the range 1-25"
fi
