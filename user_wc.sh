#########################################################################
# File Name: user_wc.sh
# Author: tongxianglong
# mail: studentTxl@163.com
# Created Time: Fri 08 Dec 2017 07:07:00 PM CST
#########################################################################
#!/bin/bash
#
declare -i SHOWNUM=0
declare -i SHOWUSERS=0

for I in `seq 1 $#`; do
	if [ $# -gt 0 ]; then
		case $1 in
		-h|--help)
			echo "Usage: `basename $0` -h|--help -c|--count -v|--verbose"
			exit 0 ;;
		-v|--verbose)
			let SHOWUSERS=1
			shift ;;
		-c|--count)
			let SHOWNUM=1
			shift ;;
		*)
			echo "Usage: `basename $0` -h|--help -c|--count -v|--verbase"
		esac
	fi
done

if [  $SHOWNUM -eq 1 ]; then
	echo "Logged users: `who | wc -l`."
	if [ $SHOWUSERS -eq 1 ]; then
		echo "They are:"
		who
	fi
fi
