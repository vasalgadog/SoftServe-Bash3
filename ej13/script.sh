# !/bin/bash

option="$1"

if [[ -z "$option" ]]; then
    option="syslog"
fi

if [[ "$option" -eq "auth" ]]; then
    tail -f /var/log/auth.log
    exit 0
else if [[ "$option" -eq "syslog" ]]; then
    tail -f /var/log/syslog
    exit 0
else
    echo "Option not valid"
    exit 1
fi