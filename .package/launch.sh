#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export LXPHISHER_ROOT="/data/data/com.termux/files/usr/opt/lxphisher"
else
	export LXPHISHER_ROOT="/usr/opt/lxphisher"
fi

cd $LXPHISHER_ROOT
bash ./lxphisher.sh
