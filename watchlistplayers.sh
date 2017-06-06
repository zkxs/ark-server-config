#!/bin/bash
umask 022
while :
do
	./listplayers.sh &> /tmp/ark_players.tmp
	mv /tmp/ark_players.tmp /var/www/tmp/ark_players.txt
	sleep 5
done
