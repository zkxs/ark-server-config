#!/bin/bash
./saveworld.sh
./rcon -P$(./printpass.sh) -a127.0.0.1 -p32330 DoExit
