#!/bin/bash

while :
do
	cnt=`ps aux | grep teamviewer | awk 'BEGIN{cnt=0} {cnt+=1} END{printf "%d", cnt}'`

	if [ $cnt -le 2 ];
	then
		res=0    # inactive
	else
		res=1    # active
	fi	

	if [ $res -eq 0 ];
	then
		echo Time: $(date)
		echo "Teamviewer is not active. Activating Teamviewer..."
		teamviewer &
	fi
	
	sleep 10
done
