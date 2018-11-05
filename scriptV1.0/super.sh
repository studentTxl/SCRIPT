#########################################################################
# File Name: super.sh
# Author: tongxianglong
# mail: studentTxl@163.com
# Created Time: Tue 05 Dec 2017 10:26:41 PM CST
#########################################################################
#!/bin/bash
#
declare -i MAX=0
declare -i MIN=0

for I in {1..10}; do
	MYRAND=$RANDOM
	[ $I -eq 1 ] && MIN=$MYRAND
	if [ $I -le 9 ]; then
		echo -n "$MYRAND,"
	else
		echo "$MYRAND."
	fi
	[ $MYRAND -gt $MAX ] && MAX=$MYRAND
	[ $MYRAND -lt $MIN ] && MIN=$MYRAND
done

echo $MAX, $MIN
