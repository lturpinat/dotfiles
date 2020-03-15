# Tweaks

## Speeding dhcpcd

Disabling ARP probing

> echo "noarp" >> /etc/dhcpcd.conf

## Disabling power button

Edit /etc/systemd/logind.conf

> HandlePowerKey=ignore

## Disable watchdog

Append the following to the boot parameters

> modprobe.blacklist=iTCO_wdt

## Fix GPU freezes/crashes

Append the following to the boot parameters:

> acpi_rev_override=1
