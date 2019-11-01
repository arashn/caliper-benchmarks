#!/bin/bash

echo "docker stack rm fabric-peer"
docker stack rm fabric-peer
echo "docker stack rm fabric-orderer"
docker stack rm fabric-orderer
echo "docker stack rm fabric-ca"
docker stack rm fabric-ca

for node in "$@"
do
    echo ssh $node '(test -z "$(docker ps -aq)") || docker stop $(docker ps -aq); (test -z "$(docker ps -aq)") || docker rm $(docker ps -aq); (test -z "$(docker images dev* -q)") || docker rmi $(docker images dev* -q)'
    ssh $node '(test -z "$(docker ps -aq)") || docker stop $(docker ps -aq); (test -z "$(docker ps -aq)") || docker rm $(docker ps -aq); (test -z "$(docker images dev* -q)") || docker rmi $(docker images dev* -q)'
done

echo "rm -rf /tmp/hfc-*"
rm -rf /tmp/hfc-*
