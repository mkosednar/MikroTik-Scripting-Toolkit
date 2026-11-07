# WAN reachability monitor using Netwatch
# Classification: CONFIGURATION CHANGE
# Purpose: Add a Netwatch probe and log state transitions.
# RouterOS: Check the installed release's Netwatch properties before importing.
# Change the probe target if 1.1.1.1 is not suitable for your environment.

# Creates one Netwatch entry. Review /tool netwatch before importing to avoid duplicates.
/tool netwatch add host=1.1.1.1 interval=30s timeout=2s comment="Toolkit WAN reachability example" \
    down-script=":log warning \"Toolkit: probe 1.1.1.1 is DOWN\"" \
    up-script=":log info \"Toolkit: probe 1.1.1.1 is UP\""

# To inspect entries:
# /tool netwatch print detail

# To remove this example entry, identify its item number first:
# /tool netwatch print
# /tool netwatch remove <item-number>
