#!/bin/sh

# @license
# Copyright (C) 2020 Jake Gustafson
#
# This is part of node-enliven-minetest, a webapp for managing
# Minetest.
#
# This code and any other files where not specified otherwise are
# subject to the license (See license.txt).

if [ -f "`command -v screen`" ]; then
    screen -S enliven-node node server.js
else
    nohup node server.js &
    echo "node server.js is running in background. terminate as follows:"
    echo "  killall node"
fi
