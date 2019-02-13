#!/bin/bash
osm vnfd-create ../osm-demo-service-cdn/osm_vnf0.tar.gz
osm vnfd-create ../osm-demo-service-cdn/osm_vnf1.tar.gz
osm vnfd-create ../osm-demo-service-cdn/osm_vnf2.tar.gz
sleep 2
osm nsd-create ../osm-demo-service-cdn/osm_ns.tar.gz