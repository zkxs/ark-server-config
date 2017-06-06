#!/bin/bash
touch runforever
while [ -f runforever ]; do
	./update.sh
	./ds.sh
done
