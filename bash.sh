# Pass arg 1 as day number 

make_dir () {
    mkdir $1
    echo >> $1/$1_script.py
    echo >> $1/$1_input.txt
}

dir=day$1

if [ -d $dir ]; then
    echo "Directory $dir already exists"
else
    make_dir $dir
    echo "Successfully made directory $dir"
fi

