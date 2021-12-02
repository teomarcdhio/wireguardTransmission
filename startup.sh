#!/bin/sh

# Start the first process
wg-quick up wg0



# Start the second process
/usr/bin/transmission-daemon --foreground --config-dir /transmission/config 

