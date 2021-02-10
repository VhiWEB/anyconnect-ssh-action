#!/bin/sh

# Connect to VPN
( echo "yes"; echo $INPUT_VPN_PASSWORD ) | openconnect $INPUT_VPN_HOST --user=$INPUT_VPN_USER --authgroup=$INPUT_VPN_GROUP

# Prepare private-key
echo $INPUT_SSH_PRIVATE_KEY > ssh-private-key
chmod 400 ssh-private-key

# Execute SSH Command
ssh -o 'StrictHostKeyChecking no' -i ssh-private-key -p $INPUT_SSH_PORT $INPUT_SSH_USER@$INPUT_SSH_HOST $INPUT_SSH_COMMAND