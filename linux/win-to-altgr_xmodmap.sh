#!/bin/bash

######################################
# Script to map Win key to AltGr key #
#                                    #
# Author: dmesg00@duck.com            #
######################################

# Variables
xmodmap_config_dir=/tmp/.win-altgr
xmodmap_config_file=${xmodmap_config_dir}/super-key.key

# Check dir and create/restore config
mkdir -p ${xmodmap_config_dir}
if [ -f ${xmodmap_config_file} ] ; then
	echo "* Restoring original function of Win-Key..."
	sleep 2
	restore_key=$(cat ${xmodmap_config_file})
	xmodmap -e "keycode ${restore_key} = Super_L"
	rm -rf ${xmodmap_config_file}
	echo "* Restored!"
else
	echo "* Creating mapping of Win-Key to AltGr-Key..."
	sleep 2
	win_key_detect=$(xmodmap -pke | grep Super_L | tr -s " " | grep keycode | head -1 | cut -d " " -f 2)
	echo ${win_key_detect} > ${xmodmap_config_file}
	xmodmap -e "keycode ${win_key_detect} = ISO_Level3_Shift"
	echo "* Created!"
fi
