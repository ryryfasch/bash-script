#!/usr/bin/env bash

sudo docker start "determined_austin"

./foreverstart.sh

sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT        --to-port 3000
