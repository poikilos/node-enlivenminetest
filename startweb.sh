#!/bin/sh
if [ -f "`command -v screen`" ]; then
    screen -S enliven-node node server.js
else
    nohup node server.js &
    echo "node server.js is running in background. terminate as follows:"
    echo "  killall node"
fi
