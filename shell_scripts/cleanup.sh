#!/bin/bash
echo "$0"

TOTAL=`ls | wc -1 `
DELETE=`expr $TOTAL - 20 `
if [ $DELETE -gt 0 ];
then 
	ls -rt | head -$DELETE | xargs rm
fi
