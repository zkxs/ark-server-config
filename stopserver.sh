#!/bin/bash
./saveworld.sh
if [ -f runforever ]; then
  rm runforever
fi
./rcon -P$(./printpass.sh) -a127.0.0.1 -p32330 DoExit
