#!/bin/sh

PARAM_NUM=2
if [ $# -ne $PARAM_NUM ]
then
	echo "Please input $PARAM_NUM parameters...";
	exit
fi

CLASS_NAME=$(echo "$1" | cut -d . -f 1)
javac $CLASS_NAME.java

touch Manifest.txt
echo "Main-Class: $CLASS_NAME" > Manifest.txt

jar cfm $CLASS_NAME.jar Manifest.txt $CLASS_NAME.class

cp jar-template $2
cat $CLASS_NAME.jar >> $2
chmod +x $2
mv $2 ../

rm $CLASS_NAME.class
rm $CLASS_NAME.jar
rm Manifest.txt
echo "Done."

# Use the following cmd to gen executable jar file:

# ./gen.sh MyTimestamp myts

# (1)  The first param: MyTimestamp is the CLASS_NAME
# (2) The second param: myts is the executable jar file name

