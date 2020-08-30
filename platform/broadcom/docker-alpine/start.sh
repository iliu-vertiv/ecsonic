#!/bin/sh

while true; do iptables -t nat -L; sleep 480;done