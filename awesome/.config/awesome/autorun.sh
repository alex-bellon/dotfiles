#!/usr/bin/zsh

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run Franz
run Telegram
run slack
run notion-app
feh --bg-fill ~/Pictures/wallpaper.png
wal -i /home/alex/Pictures/wallpaper.png
