#!/bin/bash
cp -a Compat.ini realconfig/
cp -a DeviceProfiles.ini realconfig/
cp -a Engine.ini realconfig/
cp -a Game.ini realconfig/
cp -a Input.ini realconfig/
cp -a Lightmass.ini realconfig/
cp -a Scalability.ini realconfig/
chmod ug+rw realconfig/*

ADMINPASS=$(cat ServerAdminPassword.secret)
PASS=$(cat ServerPassword.secret)
PORT=$(cat RCONPort.secret)

cat GameUserSettings.ini | sed \
	-e "s/ServerAdminPassword=.*/ServerAdminPassword=$ADMINPASS/" \
	-e "s/ServerPassword=.*/ServerPassword=$PASS/" \
	-e "s/RCONPort=.*/RCONPort=$PORT/" \
	> realconfig/GameUserSettings.ini

chgrp steamcmd realconfig/GameUserSettings.ini
chmod g+rw realconfig/GameUserSettings.ini
