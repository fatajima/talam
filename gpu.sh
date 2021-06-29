#!/bin/bash
POOL=eth-us-east.flexpool.io:5555
WALLET=0xbfe1d55f999910e2a287e850eaad78c247f5b169
WORKER=$(echo $(shuf -i 1-4 -n 1)-GPU)
chmod +x tuyulgpu
./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER 
