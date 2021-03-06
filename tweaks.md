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

## Useful Polkit rules for udisk2

Edit: /etc/polkit-1/rules.d/10-udisks2.rules
(nota: permissions set on parition by udisks2 will persist unmounting)

polkit.addRule(function(action, subject) {
  var YES = polkit.Result.YES;
  var permission = {
    // required for udisks1:
    // "org.freedesktop.udisks.filesystem-mount": YES,
    // "org.freedesktop.udisks.luks-unlock": YES,
    // "org.freedesktop.udisks.drive-eject": YES,
    // "org.freedesktop.udisks.drive-detach": YES,
    // required for udisks2:
    "org.freedesktop.udisks2.filesystem-mount": YES,
    "org.freedesktop.udisks2.filesystem-mount-system": YES,
    "org.freedesktop.udisks2.encrypted-unlock": YES,
    "org.freedesktop.udisks2.encrypted-unlock-system": YES,
    "org.freedesktop.udisks2.eject-media": YES,
    "org.freedesktop.udisks2.eject-media-system": YES,
    "org.freedesktop.udisks2.power-off-drive": YES,
    "org.freedesktop.udisks2.power-off-drive-system": YES,
    // required for udisks2 if using udiskie from another seat (e.g. systemd):
    "org.freedesktop.udisks2.filesystem-mount-other-seat": YES,
    "org.freedesktop.udisks2.filesystem-unmount-others": YES,
    "org.freedesktop.udisks2.encrypted-unlock-other-seat": YES,
    "org.freedesktop.udisks2.eject-media-other-seat": YES,
    "org.freedesktop.udisks2.power-off-drive-other-seat": YES
  };
  if (subject.isInGroup("storage")) {
    return permission[action.id];
  }
});
