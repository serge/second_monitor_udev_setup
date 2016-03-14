#! /bin/bash

cp 90-monitor.rules /etc/udev/rules.d/
cp hotplug_monitor.sh /usr/local/bin/
cp hot_plug.service /etc/systemd/system/

udevadm control --reload-rules
