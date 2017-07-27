#!/bin/bash

if [[ ! "$EUID" = 0 ]] ;then
	echo "Must have admin privileges to run - exiting"
else
	echo "Unloading KVM kernel modules"	
	if ! rmmod kvm_intel ; then
		echo "Unable to unload kvm_intel kernel module"
	fi
	if ! rmmod kvm ;then
		echo "Unable to unload kvm kernel module"
	fi
	echo "Starting VirtualBox services"
	systemctl start vboxdrv.service
	systemctl enable vboxdrv.service
	systemctl start vboxautostart-service.service
	systemctl enable vboxautostart-service.service
	systemctl start vboxballoonctrl-service.service
	systemctl enable  vboxballoonctrl-service.service
	systemctl start vboxweb-service.service
	systemctl enable vboxweb-service.service
fi

