# second_monitor_udev_setup
Set of helpers script for setting up udev rule for the second monitor hotplug

## Files

- 90-monitor.rules - udev rule that triggers systemd service when a drm change event has been detected
- hotplug_monitor.sh - a script that turn monitor on or off using xrandr depending on the /sys/class/ status
- hot_plug.service - systemd service that starts the script
- install.sh - a setup stript that put the above files in their respective directories and reload udev rules


It's far from perfect I made it for my own system and it relies on some hardcoded paths in my home directory and some i3-wm commands


