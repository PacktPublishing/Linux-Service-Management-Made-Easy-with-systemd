#!/bin/bash
# Run script with systemd only at shutdown, and not for reboot.
# Copy this file to the /usr/local/bin/ directory.

systemctl list-jobs | egrep -q 'reboot.target.*start' && echo "Testing myscript.service for reboot" > /root/reboot_test.txt
systemctl list-jobs | egrep -q 'shutdown.target.*start' && echo "Testing myscript.service for shutdown" > /root/shutdown_test.txt
