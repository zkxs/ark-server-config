#!/bin/bash
echo "GameUserSettings.ini:"
diff --suppress-common-lines -y GameUserSettings.ini realconfig/GameUserSettings.ini | grep -v 'CENSORED'
echo -e "\nGame.ini:"
diff --suppress-common-lines -y Game.ini realconfig/Game.ini
echo -ne "\n"
