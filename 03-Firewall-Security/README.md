# Firewall and Security Examples

Firewall configuration is highly dependent on topology, RouterOS version, interface roles, address plan, VPN design and management requirements.

For that reason, this folder currently provides guidance rather than a universal paste-and-run firewall ruleset.

## Review checklist

- Identify trusted LAN, WAN, VPN and management interfaces.
- Confirm which services must be reachable from each network.
- Review existing filter, NAT and raw rules before making changes.
- Check rule order and counters.
- Preserve established/related traffic where appropriate.
- Explicitly protect router management services.
- Avoid exposing WinBox, SSH, API or WebFig to the public internet without a deliberate access-control design.
- Test from a second session or out-of-band connection.
- Prepare and understand a rollback procedure.

## Useful inspection commands

These commands display current configuration and do not intentionally modify it:

```routeros
/ip firewall filter print detail
/ip firewall nat print detail
/ip service print
/user print
```

Review output locally and redact sensitive details before sharing it.

## Why no generic baseline?

A generic ruleset can lock out administrators, break VPN access, interfere with IPv6, or fail to account for bridge/VLAN and FastTrack behavior. Build and test policy for the actual network rather than applying a blind template.
