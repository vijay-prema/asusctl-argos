# asusctl-argos

Argos script which gives you a tray icon in Gnome to run asusctl commands (allowing control of various functions of Asus laptops)



## Requirements

- [Argos](https://github.com/p-e-w/argos)

- [asusctl](https://gitlab.com/asus-linux/asusctl)

- [supergfxctl](https://gitlab.com/asus-linux/supergfxctl) (optional, for gpu control)



## Installation

1. Install the requirements listed above (Make sure you enable Argos in Gnome Extensions)

2. Put `asus.+.sh` into your Argos scripts folder (usually `~/.config/argos/`)

3. If you want the Asus ROG tray icon to show up, you can [download it](https://gitlab.com/asus-linux/asusctl-gex/-/raw/main/icons/scalable/notification-performance.svg?inline=false) and copy it to `~/.local/share/icons/hicolor/scalable/apps/profile-performance.svg`. You might need to restart Gnome with Alt+F2, type `r` and press enter.

4. Customize the script based on what you want to see.



## Current Functionality

![](screenshot.png)
