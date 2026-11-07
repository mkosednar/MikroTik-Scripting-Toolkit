# Interface status and traffic snapshot
# Classification: READ-ONLY
# Purpose: Display interface state and available traffic counters.
# Note: Counter availability and output format may vary by interface type and RouterOS release.

:put "=== INTERFACE STATUS ==="
/interface print detail

:put "=== INTERFACE TRAFFIC COUNTERS ==="
/interface print stats

# For a live view of one interface, use the interactive command:
# /interface monitor-traffic interface-name once
# Replace interface-name with the actual interface name.
