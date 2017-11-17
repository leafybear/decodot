#!/bin/bash

mydisk="/dev/sda2"

while true; do
    echo "d$(df | grep "$mydisk" | awk '{print $5}')"
    sleep 60
done
