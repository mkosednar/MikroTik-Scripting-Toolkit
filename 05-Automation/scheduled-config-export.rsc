# Scheduled text configuration export
# Classification: CONFIGURATION CHANGE
# Purpose: Create a daily scheduler entry that writes a RouterOS text export.
# Review before importing. This adds a scheduler item and may create export files.
# Exports can disclose sensitive network information; protect and periodically remove them.
# Verify syntax and export behavior on the exact RouterOS release before production use.

# Creates a daily export at 03:00 with a fixed filename.
/system scheduler add name="toolkit-daily-export" start-time=03:00:00 interval=1d on-event="/export file=daily-config-export" policy=read,write,policy,test

# Verify:
# /system scheduler print detail
# /file print

# Remove the scheduler entry if no longer required:
# /system scheduler remove [find name="toolkit-daily-export"]
#
# Note: This example deliberately does not upload exports off-device.
# Securely transfer and store exports yourself, and do not commit them to Git.
