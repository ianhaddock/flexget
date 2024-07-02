#!/bin/sh

if [ -f /config/.config-lock ]; then
    rm /config/.config-lock
fi
flexget -c /config/config.yml daemon start
