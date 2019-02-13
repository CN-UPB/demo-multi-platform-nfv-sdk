#!/bin/bash
# package
cd ../osm-demo-service-cdn;./pack.sh;ls -l;cd ../scripts
# onboard
osm vnfd-create ../osm-demo-service-cdn/osm_vnf0.tar.gz
osm vnfd-create ../osm-demo-service-cdn/osm_vnf1.tar.gz
osm vnfd-create ../osm-demo-service-cdn/osm_vnf2.tar.gz
osm vnfd-list
sleep 2
osm nsd-create ../osm-demo-service-cdn/osm_ns.tar.gz
osm nsd-list