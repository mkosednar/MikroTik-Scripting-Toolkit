# Safety and Operational Guidelines

RouterOS scripts can change firewall rules, routing, interfaces, users and remote-management access. A small syntax or logic error can disconnect you from a router.

## Before running anything

1. Confirm the device model and RouterOS version.
2. Read the entire script, including comments and any commands it creates.
3. Make a backup and store it somewhere secure:
   - Use `/system backup save name=pre-change` for a binary backup.
   - Use `/export file=pre-change` for a text export.
4. Remember that backups and exports can reveal network topology and configuration details. Protect them as sensitive data.
5. Prefer a lab router or maintenance window for configuration changes.
6. Ensure you have local or out-of-band access before changing firewall, bridge, VLAN, routing or management settings.

## Safe Mode

For interactive configuration work, RouterOS Safe Mode can help roll back changes if the session is unexpectedly lost. In the RouterOS terminal, use Ctrl+X to toggle Safe Mode. Read the official documentation for version-specific behavior. Safe Mode is not a substitute for a backup or testing.

## Script classification

- **Read-only:** prints or inspects state and does not intentionally alter configuration.
- **Configuration change:** adds, removes or modifies RouterOS configuration objects.
- **Potentially disruptive:** can affect connectivity, security policy, routing or device availability.

Check the header of each example before importing it.

## Remote access and firewall changes

Never apply an unfamiliar firewall ruleset remotely without a tested rollback plan and a second management path. Rule order matters. An allow rule placed after a drop rule may not work as intended.

## Exports and credentials

Do not commit router backups, configuration exports, private keys, passwords, tokens, public IP inventories or customer information to this repository. Review files before sharing them. Use private storage for operational artifacts.

## Official references

Consult the [MikroTik RouterOS documentation](https://help.mikrotik.com/docs/) and the [RouterOS scripting manual](https://help.mikrotik.com/docs/display/ROS/Scripting) for authoritative syntax and version details.
