#########################################################################
# File Name: compress.sh
# Author: tongxianglong
# mail: studentTxl@163.com
# Created Time: Mon 18 Dec 2017 04:53:41 PM CST
#########################################################################
#!/bin/bash
#
read -p "Three files:" FILE1 FILE2 FILE3
read -p "Destination:" DEST
read -p"Compreess[gzip|bzip2|xz]:" COMP

case $COMP in
gzip)
	tar -zcf ${DEST}.tar.gz $FILE1 $FILE2 $FILE3
	;;
bzip2)
	tar -jcf ${DEST}.tar.bz2  $FILE1 $FILE2 $FILE3
	;;
xz)
	tar -cf ${DEST}.tar $FILE1 $FILE2 $FILE3
	XZ ${DEST}.tar
	;;
*)
	echo "Unknown."
	exit 9
	;;
esac

shannon_test
