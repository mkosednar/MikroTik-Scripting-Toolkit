# System inventory
# Classification: READ-ONLY
# Purpose: Print basic identity, version, uptime, architecture and resource details.
# Run from RouterOS Terminal or import this file.
# Compatibility: Common RouterOS v6/v7 menu paths; verify on your device.

:put "=== SYSTEM IDENTITY ==="
/system identity print

:put "=== ROUTEROS VERSION ==="
/system resource print

:put "=== BOARD ==="
/system routerboard print

:put "=== LICENSE ==="
/system license print

:put "=== CLOCK ==="
/system clock print

# This example only reads and prints device information.
