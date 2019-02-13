#!/bin/bash
osm nsd-list
osm nsd-delete demo
osm vnfd-list
osm vnfd-delete vnf0
osm vnfd-delete vnf1
osm vnfd-delete vnf2
