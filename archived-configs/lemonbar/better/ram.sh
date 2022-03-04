#!/bin/bash

while true; do
    echo "r$(free | grep Mem | awk '{printf("%.f", $3/$2 * 100.0)}')%"
    sleep 10
done
