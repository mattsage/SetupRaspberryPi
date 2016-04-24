#!/bin/bash
sudo bluetoothctl << EOF
power on
connect FE:FC:A8:65:9F:FE
exit
EOF
