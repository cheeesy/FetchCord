#!/bin/bash

if [ $EUID -ne 0 ]; then
  echo "This script must to be run as root."
  exit 1
else
  cp fetch_cord/getde.sh /usr/local/bin/getde
  cp fetch_cord/getwm.sh /usr/local/bin/getwm
  cp discord /usr/local/bin/discord
  cp fetchcord /usr/local/bin/
  chmod 755 /usr/local/bin/getde /usr/local/bin/getwm /usr/local/bin/fetchcord
  python3 setup.py install --root="/"
fi
