#!/usr/bin/zsh

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#run atom
wal -i /home/alex/Pictures/wallpaper.jpg
