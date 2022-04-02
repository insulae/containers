#!/bin/sh

USER=''
IP=''
PORT=''

ssh -t -f -L \
/tmp/docker-ssh.sock:/var/run/docker.sock \
-N $USER@$IP -p$PORT
