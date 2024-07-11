#!/bin/bash

# Get the start and end times as input
read -p "Enter start date and time (YYYY-MM-DD HH:MM): " start_time
read -p "Enter end date and time (YYYY-MM-DD HH:MM): " end_time

# Convert the input times to seconds since epoch
start_seconds=$(date -d "$start_time" +%s)
end_seconds=$(date -d "$end_time" +%s)

# Use find to locate files modified in the specified interval
find . -type f -newermt @$start_seconds ! -newermt @$end_seconds
