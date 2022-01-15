#!/bin/bash

SPACE=` df -kh .|awk -F " " '{print $(NF-1)}'| tail -1 | sed "s/%/ /g"`

if [ "$SPACE" -gt "40" ];

then 
	 echo " Space utilized is more than 40% " | mailx -v -s " action required " -c " mrm.maha@gmail.com " " mahantheshmr.in@gmail.com "

else
        echo " no action is required space is less than 40% "
fi


