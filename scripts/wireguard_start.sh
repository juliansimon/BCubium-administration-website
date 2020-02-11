#!/bin/bash

SERVICE=wg-quick@wg0
STATUS=$(systemctl is-active $SERVICE)
ACTIVE=active

if [ "$STATUS" == "$ACTIVE" ] ; then
        echo -n "$SERVICE process is already running"
else
	echo "start"
   	sudo systemctl start $SERVICE
        systemctl status $SERVICE | grep Active
fi
