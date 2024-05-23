#!/bin/bash


> test2.txt

while IFS= read -r line;
do
	echo "$line" | awk '{if ($2=="")
	print "Word is Missing";
else
 print $2 }' >> test2.txt

done < "data.txt"
cat test2.txt

