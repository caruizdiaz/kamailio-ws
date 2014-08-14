#!/bin/bash
killall rtpengine
echo 'del 0' > /proc/mediaproxy/control
rtpengine --ip 192.168.2.103 -a 186.0.191.55 --listen-ng=127.0.0.1:22222 -m 30000 -M 35000
