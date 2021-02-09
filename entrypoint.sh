#!/bin/sh

# Connect to VPN
( echo "yes"; echo $INPUT_VPN_PASSWORD ) | openconnect $INPUT_VPN_HOST --user=$INPUT_VPN_USER --authgroup=$INPUT_VPN_GROUP

# Execute SSH Command
echo $SSH_PRIVATE_KEY | ssh -o 'StrictHostKeyChecking no' -i /dev/stdin -p $INPUT_SSH_PORT $INPUT_SSH_USER@$INPUT_SSH_HOST $INPUT_SSH_COMMAND