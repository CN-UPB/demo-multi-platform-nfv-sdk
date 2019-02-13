#!/bin/bash
osm vim-delete emu-vim1
sleep 2
docker rm -f vim-emu
sleep 2
osm vim-list
