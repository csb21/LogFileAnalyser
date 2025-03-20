#!/bin/bash

#Define log file
LOG_FILE="$(pwd)/process_monitor.log"

#Define the process to monitor
PROCESS_NAME="nginx"

#Function to check process status
check_process() {
	if pgrep -x "$PROCESS_NAME" > /dev/null; then
		echo "$(date '+[%Y-%m-%d %H:%M:%S]') Checked Process: $PROCESS_NAME - Running"
		echo "$(date '+[%Y-%m-%d %H:%M:%S]') Checked Process: $PROCESS_NAME - Running" >> "$LOG_FILE"
	else
		echo "$(date '+[%Y-%m-%d %H:%M:%S]') Checked Process: $PROCESS_NAME - Not Running"
		echo "$(date '+[%Y-%m-%d %H:%M:%S]') Checked Process: $PROCESS_NAME - Not Running" >> "$LOG_FILE"
	fi
}

#Run the proccess and check every 10 seconds
while true; do
	check_process
	sleep 10
done
