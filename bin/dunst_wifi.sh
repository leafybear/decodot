#!/bin/sh

function getNetworkName {
	iwgetid -r
}

function getIP {
	ip a | grep wlan0 | sed -n '2p' | awk '{print $2}'
}

network=`getNetworkName`
ip=`getIP`

dunstify -h string:x-dunst-stack-tag:test $network -A 'tested,default' $ip
