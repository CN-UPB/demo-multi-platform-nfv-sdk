#!/bin/bash
docker run --name vim-emu -t -d --rm --privileged --pid='host' --network=netosm -v /var/run/docker.sock:/var/run/docker.sock vim-emu-img python examples/osm_default_daemon_topology_2_pop.py
sleep 2
export VIMEMU_HOSTNAME=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' vim-emu)
echo $VIMEMU_HOSTNAME
osm vim-create --name emu-vim1 --user username --password password --auth_url http://$VIMEMU_HOSTNAME:6001/v2.0 --tenant tenantName --account_type openstack
sleep 2
osm vim-list
