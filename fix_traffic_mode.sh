#!/bin/bash
# Fix TrafficModeType constants in all Java files

# Backup original files just in case
find ./m3ua/impl ./m3ua/api -name "*.java" -exec cp {} {}.bak \;

# Replace TrafficModeType.Override -> TrafficModeType.TRAFFIC_MODE_OVERRIDE
find ./m3ua/impl ./m3ua/api -name "*.java" -exec sed -i 's/\bTrafficModeType\.Override\b/TrafficModeType.TRAFFIC_MODE_OVERRIDE/g' {} \;

# Replace TrafficModeType.Loadshare -> TrafficModeType.TRAFFIC_MODE_LOADSHARE
find ./m3ua/impl ./m3ua/api -name "*.java" -exec sed -i 's/\bTrafficModeType\.Loadshare\b/TrafficModeType.TRAFFIC_MODE_LOADSHARE/g' {} \;

# Replace TrafficModeType.Broadcast -> TrafficModeType.TRAFFIC_MODE_BROADCAST
find ./m3ua/impl ./m3ua/api -name "*.java" -exec sed -i 's/\bTrafficModeType\.Broadcast\b/TrafficModeType.TRAFFIC_MODE_BROADCAST/g' {} \;

echo "All TrafficModeType constants have been updated. Backup files have .bak extension."
