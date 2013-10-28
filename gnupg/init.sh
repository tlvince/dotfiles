#!/bin/sh

[ -d ".gnupg" ] || { echo "error: missing '.gnupg'"; exit 1; }

chmod 700 .gnupg
chmod 600 .gnupg/gpg.conf
