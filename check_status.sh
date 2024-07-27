#!/bin/bash


SERVICE_NAME=apache2


#Cheching availability of apache2 file in /etc file

SERVICE=`ls -lhrt /etc/ | grep $SERVICE_NAME | awk '{print $9}'`
RC=$?


if [ "$RC" = "0" ];then
	echo "$SERVICE service present on server"
	echo "\n\nChecking status of a service........."
	echo "........"
	echo "........\n\n"
	echo "`sudo systemctl status $SERVICE_NAME`"   ### Checking service status###
	echo "\n\n\nFINISH\n\n\n"
else
	echo "$SERVICE_NAME servcice is not present on server"
fi
