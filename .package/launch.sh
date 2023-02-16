#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export LXANCEPHISHER_ROOT="/data/data/com.termux/files/usr/opt/lxancephisher"
else
	export LXANCEPHISHER_ROOT="/usr/opt/lxancephisher"
fi

cd $LXANCEPHISHER_ROOT
bash ./lxancephisher.sh
