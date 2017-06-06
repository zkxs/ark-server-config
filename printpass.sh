#!/bin/sh
cat GameUserSettings.ini | sed -n 's/ServerAdminPassword=//p'
