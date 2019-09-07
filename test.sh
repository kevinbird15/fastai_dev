#/bin/bash

cd dev

return_code=0

for i in {0,1,2}*.ipynb
do
    output=$((python run_notebook.py --fn $i) 2>&1)
    echo "$output"
    if [[ $string == *"Error "* ]]; then
        return_code=1
    fi
done
exit $return_code;