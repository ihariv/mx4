#!/bin/sh

VENDOR=meizu
DEVICE=mx4

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
STOCK_DIR="/mnt"

echo "Pulling $DEVICE files..."
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
	DIR=`dirname $FILE`
	if [ ! -d $BASE/$DIR ]; then
		mkdir -p $BASE/$DIR
	fi
	#adb pull /system/$FILE $BASE/$FILE
	cp -a $STOCK_DIR/$FILE $BASE/$FILE
done

./setup-makefiles.sh
