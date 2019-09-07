#/bin/bash

cd dev

for i in {0,1,2}*.ipynb
do
    output=$((python run_notebook.py --fn $i) 2>&1)
    echo "$output"
done