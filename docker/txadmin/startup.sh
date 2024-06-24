#!/bin/bash

# Start vsftpd and SSH server
/usr/sbin/sshd -D &

# Run your script in a screen session
screen -dmS script_session bash ./run.sh

# Keep the container running
tail -f /dev/null
