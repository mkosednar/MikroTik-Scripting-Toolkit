# MikroTik Scripting Toolkit

A collection of MikroTik RouterOS scripts, tools and technical guides for network management, automation, monitoring and security.

## Scope

This repository focuses on practical RouterOS examples written in the native RouterOS scripting language. Examples are organized by task and include notes about prerequisites, expected behavior and operational risk.

## Requirements

- MikroTik RouterOS. Each example states its intended version where known.
- WinBox, WebFig or SSH access with permission to administer the target router.
- A current backup before importing or running scripts that change configuration.

## Repository structure

- `01-System-Management/` — device inventory and basic system information.
- `02-Network-Management/` — interface and traffic inspection.
- `03-Firewall-Security/` — security guidance and review checklists.
- `04-Monitoring/` — reachability monitoring examples.
- `05-Automation/` — scheduled maintenance and exports.
- `06-DHCP/` — DHCP lease inspection.
- `docs/` — safety and RouterOS scripting references.

## How to use an example

1. Read the script header and the related documentation.
2. Confirm compatibility with your RouterOS version.
3. Back up the router configuration.
4. Review the commands before importing. Do not paste unfamiliar commands into a production router.
5. Test in a lab or during a maintenance window.
6. Verify the result and check the RouterOS log.

Most examples are intended to be run from the RouterOS Terminal. Files ending in `.rsc` can be uploaded to the router and imported with:

```routeros
/import file-name=example.rsc
```

Importing a file executes its commands; it is not a dry run.

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
