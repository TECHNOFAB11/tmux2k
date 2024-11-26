#!/usr/bin/env bash

if [ -z "$TMUX" ]; then
    echo "No tmux session."
    exit 1
fi

current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
pomodoro_path=$(get_tmux_option "@tmux2k-pomodoro-path" "$current_dir/../../tmux-pomodoro-plus")

POMODORO_SCRIPT="$pomodoro_path/scripts/pomodoro.sh"
POMODORO_HELPER="$pomodoro_path/scripts/helpers.sh"

# Check for olimorris/tmux-pomodoro-plus scripts
if [ -f "$POMODORO_SCRIPT" ]; then
    . "$POMODORO_SCRIPT"
    . "$POMODORO_HELPER"
fi

main() {
    RATE=$(get_tmux_option "@tmux2k-refresh-rate" 5)
    pomodoro_status="$(pomodoro_status)"
    sleep "$RATE"
}

main
