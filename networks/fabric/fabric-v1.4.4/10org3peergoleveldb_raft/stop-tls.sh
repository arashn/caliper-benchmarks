#!/bin/bash

echo "docker stack rm fabric-peer-tls"
docker stack rm fabric-peer-tls
echo "docker stack rm fabric-orderer-tls"
docker stack rm fabric-orderer-tls
echo "docker stack rm fabric-ca-tls"
docker stack rm fabric-ca-tls
