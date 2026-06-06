#!/bin/bash

##################################
# Script to disable CapsLock     #
#                                #
# Author: dmesg00@duck.com        #
##################################

# Variables
xmodmap_config_dir=/tmp/.disable-capslock
xmodmap_config_file=${xmodmap_config_dir}/capslock.key

# Check dir and create/restore config
mkdir -p ${xmodmap_config_dir}
if [ -f ${xmodmap_config_file} ] ; then
	echo "* Restoring original function of CapsLock..."
	sleep 2
	restore_key=$(cat ${xmodmap_config_file})
	xmodmap -e "keycode ${restore_key} = Caps_Lock"
	rm -rf ${xmodmap_config_file}
	echo "* Restored!"
else
	echo "* Creating mapping of CapsLock to Shift..."
	sleep 2
	capslock_key_detect=$(xmodmap -pke | grep Caps_Lock | tr -s " " | grep keycode | head -1 | cut -d " " -f 2)
	echo ${capslock_key_detect} > ${xmodmap_config_file}
	xmodmap -e "keycode ${capslock_key_detect} = Shift_L"
	echo "* Created!"
fi
