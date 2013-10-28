#!/bin/sh

[ -d ".ssh" ] || { echo "error: missing '.ssh'"; exit 1; }

chmod 700 .ssh
chmod 600 .ssh/config
