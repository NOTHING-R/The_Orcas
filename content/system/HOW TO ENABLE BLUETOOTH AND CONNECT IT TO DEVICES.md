+++
title = "HOW TO ENABLE BLUETOOTH AND CONNECT IT TO DEVICES"
date = "2025-12-19"
author = ""
+++


# Enabling Bluetooth on Arch Linux with i3wm

This tutorial is based on the official Arch Wiki and common setups for a minimal i3wm environment.


## Install the required packages

    sudo pacman -S bluez bluez-utils

-   `bluez` provides the Bluetooth stack.
-   `bluez-utils` includes `bluetoothctl` for management.


## Enable and start the Bluetooth service

    sudo systemctl enable --now bluetooth.service

-   This starts the service now and enables it on boot.
-   Check status:

    systemctl status bluetooth.service


## Unblock Bluetooth (if blocked by rfkill)

    rfkill list

If Bluetooth is soft-blocked:

    rfkill unblock bluetooth


## Basic management via CLI (using bluetoothctl)

Run:

    bluetoothctl

Inside the interactive prompt:

    power on          # Turn Bluetooth on
    scan on           # Scan for devices (discoverable mode on your device)
    pair XX:XX:XX:XX:XX:XX   # Pair with device's MAC (shown in scan)
    trust XX:XX:XX:XX:XX:XX  # Optional: auto-connect in future
    connect XX:XX:XX:XX:XX:XX
    exit

This works perfectly in a terminal with i3wm—no GUI needed.


## Recommended GUI manager for i3wm (tray applet)

i3wm doesn&rsquo;t have a built-in Bluetooth tray, so install ****Blueman**** (lightweight GTK-based manager with a system tray applet):

    sudo pacman -S blueman

-   Start the tray applet:

    blueman-applet

(run in terminal or add to your i3 config for autostart).

-   To autostart in i3: Add this line to `~/.config/i3/config`:

    exec --no-startup-id blueman-applet

-   Then reload i3 (`Mod+Shift+R`).

A tray icon will appear (assuming you have a status bar like i3status/polybar that supports trays). Right-click it to manage devices, or run `blueman-manager` for the full GUI.


### Alternative lightweight option: Blueberry

    sudo pacman -S blueberry

Run `blueberry` for the manager (no persistent tray).


## Troubleshooting tips

-   If no adapter is detected: Check `lsmod | grep btusb` (kernel module). Reload if needed:

    sudo modprobe btusb

-   For audio devices (headphones/speakers): Ensure PipeWire or PulseAudio is set up with Bluetooth support (e.g., `pipewire-pulse` replaces `pulseaudio-bluetooth` in modern setups).

-   Dual-boot issues: See Arch Wiki for pairing key fixes if devices don&rsquo;t reconnect properly.

For full details, refer to the [Arch Wiki Bluetooth page](https://wiki.archlinux.org/title/Bluetooth). This should get Bluetooth fully working in your i3wm setup!

