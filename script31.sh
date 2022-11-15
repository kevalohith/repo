#!/bin/bash
pr=`df -h . | awk 'NR==2 {print $(NF-1)}' | sed 's/%/ /g'`
if [ $pr -gt 30 ]
then
	echo "the disk space reached 30 percent" | mail -s "disk space reached 30 percent" kevalohith@gmail.com
	echo "send an email"
fi

