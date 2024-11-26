#!/usr/bin/env bash

current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$current_dir"/utils.sh

start_icon=$(get_tmux_option "@tmux2k-start-icon" "session")

main() {
    current=""
    case $start_icon in
    session) current=" #S" ;;
    window) current=" #W" ;;
    esac

    echo "$current"
}

main
