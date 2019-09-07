#/bin/bash

cd dev

function onExit {	
    if [ "$?" != "0" ]; then	
        echo "Test failure";
        exit 1;	
    fi	
}	

trap onExit EXIT;

for i in {0,1,2}*.ipynb
do
    output=$((python run_notebook.py --fn $i) 2>&1)
    echo "$output"
done