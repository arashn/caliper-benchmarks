#!/bin/bash

echo "docker stack rm fabric-peer"
docker stack rm fabric-peer
echo "docker stack rm fabric-orderer"
docker stack rm fabric-orderer
echo "docker stack rm fabric-ca"
docker stack rm fabric-ca

echo "(test -z \"$(docker images dev* -q)\") || docker rmi $(docker images dev* -q)"
(test -z \"$(docker images dev* -q)\") || docker rmi $(docker images dev* -q)

echo "rm -rf /tmp/hfc-*"
rm -rf /tmp/hfc-*