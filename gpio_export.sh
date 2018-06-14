#!/bin/bash

# USAGE:
#    gpio_export.sh 5
#    gpio_export.sh 5 17 26
#
#    Exports the given GPIO pins so that they can be 
#    handled by the user

for arg in "$@"
do
    echo $arg > /sys/class/gpio/export
done
