#!/bin/sh

# get the path wehere we are located
path=$(dirname $(readlink -f ./test.sh))

# start the server
http-server "${path}" -p 5174 --ssl --key ~/.config/xentara/private/xentara.key.pem --cert ~/.config/xentara/certs/xentara.pem
