# DHCP lease audit
# Classification: READ-ONLY
# Purpose: Print DHCP server lease details for a basic audit.
# Note: A router may have multiple DHCP servers; this prints leases known to the device.

:put "=== DHCP LEASES ==="
/ip dhcp-server lease print detail

:put "=== DHCP SERVERS ==="
/ip dhcp-server print detail

# This example does not renew, remove, make-static or otherwise change leases.
