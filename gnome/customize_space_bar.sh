#!/usr/bin/env bash

PREFIX_SWITCH="<Alt>"
PREFIX_MOVE="<Alt><Shift>"

export GSETTINGS_SCHEMA_DIR=::$HOME/.local/share/gnome-shell/extensions/space-bar@luchrioh/schemas

for i in $(seq 1 5); do
    gsettings set \
        org.gnome.shell.extensions.space-bar.shortcuts activate-$i-key \
        "['$PREFIX_SWITCH$i']"
    gsettings set \
        org.gnome.desktop.wm.keybindings move-to-workspace-$i \
        "['$PREFIX_MOVE$i']"
done

HOME="Q"
DISC="W"
SLACK="E"

ZOOM="Z"

PLAN="A"
MUSIC="S"
PIN="D"

gsettings set \
    org.gnome.desktop.wm.keybindings switch-to-workspace-6 \
    "['$PREFIX_SWITCH$HOME']"
gsettings set \
    org.gnome.desktop.wm.keybindings move-to-workspace-6 \
    "['$PREFIX_MOVE$HOME']"

gsettings set \
    org.gnome.desktop.wm.keybindings switch-to-workspace-7 \
    "['$PREFIX_SWITCH$PLAN']"
gsettings set \
    org.gnome.desktop.wm.keybindings move-to-workspace-7 \
    "['$PREFIX_MOVE$PLAN']"

gsettings set \
    org.gnome.desktop.wm.keybindings switch-to-workspace-8 \
    "['$PREFIX_SWITCH$DISC']"
gsettings set \
    org.gnome.desktop.wm.keybindings move-to-workspace-8 \
    "['$PREFIX_MOVE$DISC']"

gsettings set \
    org.gnome.desktop.wm.keybindings switch-to-workspace-9 \
    "['$PREFIX_SWITCH$SLACK']"
gsettings set \
    org.gnome.desktop.wm.keybindings move-to-workspace-9 \
    "['$PREFIX_MOVE$SLACK']"

gsettings set \
    org.gnome.desktop.wm.keybindings switch-to-workspace-10 \
    "['$PREFIX_SWITCH$ZOOM']"
gsettings set \
    org.gnome.desktop.wm.keybindings move-to-workspace-10 \
    "['$PREFIX_MOVE$ZOOM']"

gsettings set \
    org.gnome.desktop.wm.keybindings switch-to-workspace-11 \
    "['$PREFIX_SWITCH$MUSIC']"
gsettings set \
    org.gnome.desktop.wm.keybindings move-to-workspace-11 \
    "['$PREFIX_MOVE$MUSIC']"

gsettings set \
    org.gnome.desktop.wm.keybindings switch-to-workspace-12 \
    "['$PREFIX_SWITCH$PIN']"
gsettings set \
    org.gnome.desktop.wm.keybindings move-to-workspace-12 \
    "['$PREFIX_MOVE$PIN']"
