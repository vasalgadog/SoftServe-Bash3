# !/bin/bash

THRESHOLD=80

df -h --output=pcent,target | grep -v "Use%" | while read line; do
    USAGE=$(echo $line | awk '{print $1}' | tr -d '%')
    MOUNT=$(echo $line | awk '{print $2}')

    if [ "$USAGE" -gt "$THRESHOLD" ]; then
        echo "⚠️  WARNING: Disk mounted on '$MOUNT' is ${USAGE}% os usage."
    fi
done