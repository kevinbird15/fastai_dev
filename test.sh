#/bin/bash

cd dev

# stop on first error
set -e;

function onExit {
    if [ "$?" != "0" ]; then
        echo "Test failure";
        echo "$output"
        exit 1;
    fi
}

trap onExit EXIT;

for i in {0,1,2}*.ipynb
do
    echo $i
    output=$((python run_notebook.py --fn $i) 2>&1)
done