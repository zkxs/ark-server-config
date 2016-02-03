#!/bin/sh
diff --suppress-common-lines -y GameUserSettings.ini realconfig/GameUserSettings.ini | grep -v 'CENSORED'
