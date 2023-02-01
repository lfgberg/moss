#!/bin/zsh

# Ensure at least 1 file was passed
if [ "$#" -lt 1 ]; then
    echo "Insufficient arguments; provide at least 1 submission.zip from canvas."
    exit 64
fi

DATE=`date +%d%m%y`
mkdir $DATE

# Unzip each passed zip (usecase for multiple sections)
for x in $*
do
    NAME=`basename $x`
    cp $x $DATE
    unzip -qq ./$DATE/$NAME -d $DATE
    rm ./$DATE/$NAME
done

cd $DATE
    
# Unzip each submission zip to its own dir
for x in ./*.zip
do
    NAME=`basename $x .zip`
    unzip -qq $x -d $NAME
done

# Rm each submission zip
rm *.zip

# Submit to moss for report; wget report url
echo "Submitting files to MOSS"
NAME=`../submit.pl -l java -d ./*/*/*/**.java | tail -n 1`
wget -r -q $NAME -O ../$DATE.html
echo Saved report to $DATE.html

# Cleanup
rm -rf ../$DATE