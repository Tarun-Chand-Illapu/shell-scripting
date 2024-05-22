#!/bin/bash
# Shell Script to read the given data and print each line with corresponding prompt

n=$(wc -l < data.txt)
count=1
if [ $n -gt 10 ]; then
    echo "Limit exceed"
else
    while IFS= read -r line
    do
        echo "Line $count: $line"
        count=$((count + 1))
    done < "data.txt"
fi

