#!/bin/bash

# Replace this with your A2DP sink name
A2DP_SINK="bluez_output.E8_9E_13_BD_8D_AC.a2dp-sink"

while true; do
    # Check current profile
    CURRENT_PROFILE=$(pactl list sinks | grep -A15 "$A2DP_SINK" | grep "Active Profile" | awk '{print $3}')

    if [[ "$CURRENT_PROFILE" != "a2dp_sink" ]]; then
        echo "Switching back to A2DP/SBC..."
        pactl set-card-profile bluez_card.E8_9E_13_BD_8D_AC a2dp-sink
    fi

    sleep 1
done

