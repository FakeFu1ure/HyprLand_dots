#!/bin/bash

STATE_FILE="$HOME/.config/waybar/scripts/cat_state.txt"

# Проиграть звук (если есть)
paplay ~/Downloads/myaukane-domashney-koshki-37030.wav 2>/dev/null &

# Поставить состояние "meow"
echo "meow" > "$STATE_FILE"
pkill -RTMIN+10 waybar

# Вернуть "normal" через секунду
(sleep 1 && echo "normal" > "$STATE_FILE" && pkill -RTMIN+10 waybar) &
