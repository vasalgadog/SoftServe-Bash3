# !/bin/bash

printLogs() {
    grep "ERROR" /var/log/$1 | tail -f
}
option=$1

if ["$option" != "syslog" || "$option" != "auth.log"]; then
    option="syslog"
fi

if find /var/log/ $1; then
    printLogs $1
else
    echo "Maybe you are using WSL, you need to activate systemd and restart it."
    exit 1
fi
