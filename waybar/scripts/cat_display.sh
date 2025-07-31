#!/bin/bash

STATE_FILE="$HOME/.config/waybar/scripts/cat_state.txt"
STATE=$(cat "$STATE_FILE")

case "$STATE" in
  blink)     ICON="=^.-^=" ;;   # моргает
  meow)      ICON="=^o^=" ;;    # мяу
  watching)  ICON="=^._.v=" ;;  # следит
  *)         ICON="=^.^=" ;;    # обычный
esac

echo "{\"text\": \"$ICON\"}"
