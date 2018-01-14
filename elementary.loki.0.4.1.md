# TROUBLESHOOTING

### Q: *Why the flying f\*ck the desktop takes too long the init*?
### A: Nobody knows, but we (the internet) got a workaround:
`$ sudo mv /etc/xdg/autostart/at-spi-dbus-bus.desktop /etc/xdg/autostart/at-spi-dbus-bus.disabled`
>Tested in envy.

### Q: *The battery drains too fast!, what can i do!?*
### A: well...
>TODO

### Q: *I know that ubuntu got drivers for my machine, but Elementary dont, what can i do?*
### A: Sure they're drivers, you can see it executing: `$ ubuntu-driver list`; and if you `$ sudo ubuntu-drivers autoinstall` the apt will install all the aviable drivers for your (my) machine. :)
