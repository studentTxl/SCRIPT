#########################################################################
# File Name: first.sh
# Author: tongxianglong
# mail: studentTxl@163.com
# Created Time: Wed 29 Nov 2017 05:28:38 PM CST
#########################################################################
#!/bin/bash
#
declare -i EVENSUM=0
declare -i ODDSUM=0

for I in {1..100}; do
	if [ $[$I%2] -eq 0 ]; then
		let EVENSUM+=$I
	else
		let ODDSUM+=$I
	fi
done

echo "ODD sum is: $ODDSUM."
echo "EVEN sum is: $EVENSUM."
