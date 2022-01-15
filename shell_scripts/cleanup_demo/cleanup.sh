#!/bin/bash
echo "$0"

TOTAL=`ls | wc -l `
DELETE=`expr $TOTAL - 20 `
if [ $DELETE -gt 0 ];
then 
	ls -rt | head -$DELETE | xargs rm
fi
