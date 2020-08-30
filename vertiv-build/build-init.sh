#!/bin/bash

sudo modprobe overlay
./generate-recipes.sh

cd ../.
start=`date +%s`
make init
init=`date +%s`
make configure PLATFORM=broadcom
conf=`date +%s`

initruntime=$((init-start))
confruntime=$((conf-init))

echo "Init runtime: $initruntime"
echo "Conf runtime: $confruntime"