#!/bin/bash

echo "If this is the first time you starting this, it'll likely take a long time"
echo "If so, you should use scripts/tail-runelite-logs.sh to monitor the progress"

set -xe

if lxdock shell -c "systemctl status runefoil" | grep -q inactive; then
  lxdock shell -c "systemctl start runefoil"
else
  echo "Error: runelite already started. Due to security reason only one instance can be started at a time"
fi

