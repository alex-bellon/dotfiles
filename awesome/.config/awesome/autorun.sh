#!/usr/bin/zsh

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#run atom
feh --bg-fill ~/Pictures/wallpaper.png
wal -i /home/alex/Pictures/wallpaper.png
