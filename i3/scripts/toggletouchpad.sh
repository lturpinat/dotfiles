#!/bin/bash
# Get the device id of the Synaptics TouchPad
id=$(xinput list --id-only 'SynPS/2 Synaptics TouchPad')

# Get the current state of the Device Enabled property
# The devString will look like: "Device Enabled (132): 0"
devString=$(xinput --list-props $id | grep "Device Enabled")

# Parse the devString into an array
read -a devString_array <<< "$devString"

# Save the current state of the Device Enabled property
# from the 4th element of devString_array
devEnabled=${devString_array[3]}

# Flip the state of the Device Enabled property
if [ $devEnabled -eq 1 ]; then
    devEnabled=0
else
    devEnabled=1
fi

# Set the "Device Enabled" property with the new value
xinput set-prop $id "Device Enabled" $devEnabled

# Push out a desktop notification of the new value
notify-send --icon computer "Synaptics TouchPad" "Device Enabled = $devEnabled"
exit
