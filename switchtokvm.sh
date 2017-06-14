#!/bin/bash

if [[ ! "$EUID" = 0 ]] ;then
	echo "Must have admin privileges to run - exiting"
else
	echo "Stopping VirtualBox services"	
	systemctl stop vboxdrv.service
	systemctl stop vboxautostart-service.service
	systemctl stop vboxballoonctrl-service.service
	systemctl stop vboxweb-service.service
	echo "Loading kvm kernel module"
	if ! modprobe kvm ;then
		echo "Warning: Unable to load kvm kernel module"
	fi
fi

