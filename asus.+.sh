#!/usr/bin/env bash

GFX=$(supergfxctl -g)
STATE=$(supergfxctl -S)
PROF=$(asusctl profile -p)
BATT=$(cat /etc/asusd/asusd.ron | grep charge_control_end_threshold | tr -dc '0-9')

echo "| iconName=profile-performance"
echo "---"
echo "GPU:\t\t ${GFX^} ($STATE) | iconName=nvidia"
echo "-- Integrated | bash='supergfxctl -m Integrated' terminal=false"
echo "-- Hybrid | bash='supergfxctl -m Hybrid' terminal=false"
echo "-- Dedicated | bash='supergfxctl -m Dedicated' terminal=false"
echo "-- Compute | bash='supergfxctl -m Compute' terminal=false"
echo "-- Log out and back in to apply | size=8"
echo "CPU:\t\t ${PROF:18} | iconName=amd"
echo "-- Performance | bash='asusctl profile -P Performance' terminal=false"
echo "-- Balanced | bash='asusctl profile -P Balanced' terminal=false"
echo "-- Quiet | bash='asusctl profile -P Quiet' terminal=false"
echo "---"
echo "Charge Limit:\t $BATT% | iconName=battery"
echo "-- 60% | bash='asusctl -c 60' terminal=false"
echo "-- 80% | bash='asusctl -c 80' terminal=false"
echo "-- 100% (OFF) | bash='asusctl -c 100' terminal=false"
echo "ROG Control Center | bash='rog-control-center' terminal=false iconName=profile-performance"
echo "---"
echo "Reset Keyboard LEDs | bash='asusctl led-mode static' terminal=false iconName=keyboard"

