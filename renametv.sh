#!/bin/bash
echo "What is the title of the series?"
read series
echo "What season?"
read season
echo "What episode number do you want to start with?"
read start
echo "What is the file extension (minus the . )"
read ext
for f in *; do
if [ $start -lt 10 ];
  then
	file+="$series s"
	file+="$season"
	file+="e0$start"
	file+=".$ext"
	mv "$f" "$file"
  else
	file+="$series s"
	file+="$season"
	file+="e$start"
	file+=".$ext"
	mv "$f" "$file"
fi
file=""
((start++))
done

