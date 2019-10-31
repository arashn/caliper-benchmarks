#!/bin/bash

export FABRIC_VERSION=latest
export NODE1=$1
export NODE2=$2
export NODE3=$3

echo "docker stack deploy -c networks/fabric/docker-compose/10org3peergoleveldb_raft/docker-compose-tls-ca.yaml fabric-ca-tls"
docker stack deploy -c networks/fabric/docker-compose/10org3peergoleveldb_raft/docker-compose-tls-ca.yaml fabric-ca-tls
echo "docker stack deploy -c networks/fabric/docker-compose/10org3peergoleveldb_raft/docker-compose-tls-orderer.yaml fabric-orderer-tls"
docker stack deploy -c networks/fabric/docker-compose/10org3peergoleveldb_raft/docker-compose-tls-orderer.yaml fabric-orderer-tls
echo "docker stack deploy -c networks/fabric/docker-compose/10org3peergoleveldb_raft/docker-compose-tls-peer.yaml fabric-peer-tls"
docker stack deploy -c networks/fabric/docker-compose/10org3peergoleveldb_raft/docker-compose-tls-peer.yaml fabric-peer-tls
