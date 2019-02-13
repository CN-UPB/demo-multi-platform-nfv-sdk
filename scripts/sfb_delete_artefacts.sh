#!/bin/bash
osm nsd-list
osm nsd-delete demo
osm vnfd-list
osm vnfd-delete default-vnf0
osm vnfd-delete default-vnf1
osm vnfd-delete default-vnf2
