#!/usr/bin/python
#
# Opens chromium with correct proxy setting
# e.g. chromium-browser --proxy-server="172.17.0.5:3128" 20.0.0.2:8899
#
# This is needed because we cannot fix the IPs of the docker interfaces.

import docker
import subprocess

PROXY_CONTAINER_NAME = ["/mn.dc1_service1-2-vdu01-1"]


def main():
    print("Searching proxy IP...")
    client = docker.APIClient(base_url='unix://var/run/docker.sock')
    PROXY_IP = None
    # find proxy container and its IP
    for c in client.containers():
        name = c.get("Names")[0]
        print(name)
        if name in PROXY_CONTAINER_NAME:
            try:
                PROXY_IP = c.get("NetworkSettings").get("Networks").get("bridge").get("IPAddress")
            except:
                print("Error parsing IP address from Docker API")
            print("Found proxy container: '{}' with IP '{}'".format(name, PROXY_IP))
            break
    # quit if no IP was found
    if PROXY_IP is None:
        print("Could not determine proxy IP. Exit.")
        exit(1)
    # try to open chromium with proxy setting if we have the IP
    subprocess.call("google-chrome --proxy-server='{}:3128' 20.0.0.1:80".format(PROXY_IP), shell=True)
            

if __name__ == "__main__":
    main()
