#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

# Available Styles
# >> Styles Below Only Works With "rofi-git(AUR)", Current Version: 1.5.4-76-gca067234
#
# blurry	blurry_full		kde_simplemenu		kde_krunner		launchpad
# gnome_do	slingshot		appdrawer			appfolder		column
# row		row_center		screen				row_dock		row_dropdown

style="blurry"

# rofi -no-lazy-grab -show drun -theme Repos/rofi/launchers-git/"$style".rasi
rofi -no-lazy-grab -combi-modi drun,ssh, -show combi -theme ~/.config/rofi/launchers/"$style".rasi
