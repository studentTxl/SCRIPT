#########################################################################
# File Name: syntax.sh
# Author: tongxianglong
# mail: studentTxl@163.com
# Created Time: Fri 22 Dec 2017 04:19:53 PM CST
#########################################################################
#!/bin/bash
#
until bash -n $1 &> /dev/null; do
	read -p "Syntax error, [Qq] to quit, others for editing:" CHOICE
	case $CHOICE in
	q|Q)
		echo "Something wrong, quiting."
		exit 5
		;;
	*)
		vim + $1
		;;
	esac
done
