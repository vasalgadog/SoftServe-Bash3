# !/bin/bash

while true; do
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | sed 's/%//g')
    if [[ "$cpu_usage" -gt 90 ]]; then
        echo "🔴 CPU usage is $cpu_usage%"
    fi
    sleep 5
done