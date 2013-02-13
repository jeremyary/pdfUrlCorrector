#!/bin/sh
# repair URI links in pdf files (within same dir as script) to include http:// 
# author jeremyary@github, 8/15/12

COUNT=`find ./*pdf | wc -l`
echo "$COUNT PDF FILES FOUND..."

mkdir fixed

ITER=1
for i in *.pdf
do
    echo "processing file $ITER..."
    perl /usr/local/bin/changepdfstring.pl -o -v "$i" 'regex(pattern)' '$1' "fixed/$i"
    ITER=`expr $ITER + 1` 
done

echo "DONE."
