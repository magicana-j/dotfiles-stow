#!/bin/sh
# /etc/profile.d/lang-tty.sh

if [[ $(tty) == /dev/tty* ]]; then
  export LANG=en_US.utf-8
  export LC_ALL=en_US.utf-8
fi
