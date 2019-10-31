#!/bin/bash

export FABRIC_VERSION=latest
export NODE1=$1
export NODE2=$2
export NODE3=$3

echo "docker stack deploy -c networks/fabric/docker-compose/10org3peergoleveldb_raft/docker-compose-ca.yaml fabric-ca"
docker stack deploy -c networks/fabric/docker-compose/10org3peergoleveldb_raft/docker-compose-ca.yaml fabric-ca
echo "docker stack deploy -c networks/fabric/docker-compose/10org3peergoleveldb_raft/docker-compose-orderer.yaml fabric-orderer"
docker stack deploy -c networks/fabric/docker-compose/10org3peergoleveldb_raft/docker-compose-orderer.yaml fabric-orderer
echo "docker stack deploy -c networks/fabric/docker-compose/10org3peergoleveldb_raft/docker-compose-peer.yaml fabric-peer"
docker stack deploy -c networks/fabric/docker-compose/10org3peergoleveldb_raft/docker-compose-peer.yaml fabric-peer
