#!/usr/bin/env bash

mem_tresh=1000
used_mem=$(free -m |awk '/Mem/ {print $3}')

if [ $used_mem -gt $mem_tresh ]; then
  sudo reboot
fi
exit 0
