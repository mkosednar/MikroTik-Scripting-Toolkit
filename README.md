# MikroTik Scripting Toolkit

A collection of MikroTik RouterOS scripts and technical guides for network management, automation, monitoring and security.

## Scope

This repository contains practical examples written in the native RouterOS scripting language. It is an early-stage toolkit: the current collection is intentionally small, and the planned topic areas should not be mistaken for a complete production-ready toolkit.

## Requirements

- MikroTik RouterOS. Check each example and verify compatibility with the installed release.
- WinBox, WebFig or SSH access with permission to administer the target router.
- A current backup before importing or running scripts that change configuration.

## Current scripts

| File | Purpose | Classification |
| --- | --- | --- |
| `01-System-Management/system-inventory.rsc` | Print basic identity, RouterOS, board, license and clock information | Read-only |
| `02-Network-Management/interface-traffic-snapshot.rsc` | Display interface state and traffic counters | Read-only |
| `04-Monitoring/wan-netwatch.rsc` | Add a Netwatch probe and log reachability changes | Configuration change |
| `05-Automation/scheduled-config-export.rsc` | Add a daily scheduler entry that exports configuration to a file | Configuration change |
| `06-DHCP/dhcp-lease-audit.rsc` | Display DHCP lease and server details | Read-only |

## Documentation and guidance

- `docs/SAFETY.md` — backups, Safe Mode, remote-access risks, and handling sensitive exports.
- `docs/ROUTEROS-SCRIPTING.md` — basic scripting concepts and official reference links.
- `03-Firewall-Security/README.md` — firewall review guidance and read-only inspection commands. **There is currently no automated firewall configuration script in this repository.**

## Planned expansion

Additional examples may be added for firewall auditing, VLANs, VPN, DNS, routing, wireless, logging, backups, and network automation. These are roadmap topics, not currently implemented scripts.

## How to use an example

1. Read the entire script and its header.
2. Confirm compatibility with your RouterOS version and device.
3. Back up the router configuration.
4. Review every command before importing. Do not treat an import as a dry run.
5. Test in a lab or during a maintenance window.
6. Verify the result and check the RouterOS log.

Most examples are intended to be run from the RouterOS Terminal. Files ending in `.rsc` can be uploaded to the router and imported with:

```routeros
/import file-name=example.rsc
```

Importing a file executes its commands.

## Safety

- Read-only examples are labeled as such.
- Configuration-changing examples are explicitly identified.
- Never publish exports, backups, logs or screenshots that may contain public IP addresses, usernames, topology details or other sensitive information.
- Do not use firewall or remote-access examples without understanding how they affect management access.

See [docs/SAFETY.md](docs/SAFETY.md) before running scripts.

## Compatibility and testing

Examples are educational starting points, not vendor-certified configurations. RouterOS behavior and available properties can vary between major versions and device models. Unless explicitly stated, examples have not been tested on physical MikroTik hardware.

## Contributing

Keep examples focused, documented and safe by default. Include RouterOS version notes, prerequisites, whether the script changes configuration, and a rollback procedure for changes.

## Disclaimer

Use at your own risk. Always validate scripts against the official MikroTik documentation and your own network requirements.
