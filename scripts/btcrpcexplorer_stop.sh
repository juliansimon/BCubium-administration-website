#!/bin/bash

SERVICE=btc-rpc-explorer
STATUS=$(systemctl is-active $SERVICE)
ACTIVE=active

if [ "$STATUS" == "$ACTIVE" ] ; then
	sudo systemctl stop $SERVICE
	systemctl status $SERVICE | grep Active
else
	echo -n "$SERVICE process is not running"
fi
