#!/bin/sh
umask 002
./ark/ShooterGame/Binaries/Linux/ShooterGameServer TheCenter?listen?SessionName=DannoDanDan?MaxPlayers=30?BanListURL="http://playark.com/banlist.txt"?AlwaysNotifyPlayerJoined=True?AlwaysNotifyPlayerJoin=True?OverrideOfficialDifficulty=7.0 -NoBattlEye -nosteamclient -server -log
