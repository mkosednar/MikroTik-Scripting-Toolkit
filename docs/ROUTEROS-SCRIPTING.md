# RouterOS Scripting Notes

This document introduces common RouterOS scripting concepts used in the examples.

## Running scripts

A RouterOS script can be entered in the Terminal or stored as a script object under `/system script`. An `.rsc` file is a sequence of RouterOS commands. Importing it executes those commands in order.

```routeros
/import file-name=example.rsc
```

## Comments and output

Use `#` for comments and `:put` to print text to the terminal.

```routeros
# Print a short status message
:put "RouterOS script started"
```

## Variables and loops

Variables are declared with `:local` or `:global`. Use `:foreach` to iterate over items returned by a menu's `find` command.

```routeros
:foreach item in=[/interface find] do={
    :put [/interface get $item name]
}
```

Prefer local variables unless a value must persist beyond the current script execution.

## Error handling

RouterOS supports `:do { ... } on-error={ ... }` for handling errors. Keep error handling explicit; silently ignoring a failed configuration command can leave a router in an unexpected state.

## Scheduler and permissions

Scheduled scripts run with the permissions and policies configured for the scheduler/script object. Grant only the permissions required. Test scheduled execution separately from interactive execution.

## Version differences

RouterOS scripting syntax and menu properties can change. Verify every property and command against the documentation for the exact RouterOS release installed on the target device. Do not assume that a v7 example works unchanged on v6.

## Useful official documentation

- [RouterOS scripting](https://help.mikrotik.com/docs/display/ROS/Scripting)
- [Scripting examples](https://help.mikrotik.com/docs/display/ROS/Scripting+examples)
- [Netwatch](https://help.mikrotik.com/docs/display/ROS/Netwatch)
- [Scheduler](https://help.mikrotik.com/docs/display/ROS/Scheduler)
