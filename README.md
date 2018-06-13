# Multi-Platform NFV SDK Demo

Showing the end-to-end workflow from descriptor generation, creating a project and packaging it, to uploading it to OSM (or possible Tango) and running the uploaded service on the `vim-emu` emulator.



Example service: [Simple video streaming network service](https://github.com/sonata-nfv/son-tutorials/tree/master/upb-emulator-mano-integration-demo) ([OSM files](https://github.com/sonata-nfv/son-tutorials/tree/master/upb-emulator-mano-integration-demo/osm/pkggen))



## Installation

TODO



## Demo steps

1. Generate OSM descriptors using tng-sdk-descriptorgen and download the generated descriptors with `project.yaml` (GUI)
2. Check the generated project with `tng-prj status` (CLI)
3. Package the project with `tng-pkg -p <pkg-dir>` (CLI)
4. Upload the package to OSM (or theoretically to 5GTANGO)
5. Unpackage the package and trigger OSM instantiate (GUI?)
6. Run the service on the emulator and show the running service on the emulator's dashboard (GUI)
7. Show the streamed video (CatTube on Cromium browser)

