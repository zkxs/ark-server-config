#!/bin/sh
cat config/realconfig/GameUserSettings.ini | sed -n 's/ServerAdminPassword=//p'
