#!/bin/bash

cd ../.
start=`date +%s`
# build debian stretch required targets
BLDENV=stretch make stretch
# build ONIE image
make target/sonic-broadcom.bin
end=`date +%s`

runtime=$((end-start))
echo "Complete build time: $runtime"