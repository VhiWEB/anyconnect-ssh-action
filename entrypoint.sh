#!/bin/sh

# Connect to VPN
( echo "yes"; echo $INPUT_VPN_PASSWORD ) | openconnect $INPUT_VPN_HOST --user=$INPUT_VPN_USER --authgroup=$INPUT_VPN_GROUP

# Prepare Private Key
echo $SSH_PRIVATE_KEY > ~/.ssh/id_rsa

# Execute SSH Command
ssh -o 'StrictHostKeyChecking no' $INPUT_SSH_USER@$INPUT_SSH_HOST -p $INPUT_SSH_PORT $INPUT_SSH_COMMAND