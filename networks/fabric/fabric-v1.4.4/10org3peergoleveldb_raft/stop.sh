#!/bin/bash

echo "docker stack rm fabric-peer"
docker stack rm fabric-peer
echo "docker stack rm fabric-orderer"
docker stack rm fabric-orderer
echo "docker stack rm fabric-ca"
docker stack rm fabric-ca
