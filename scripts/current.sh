#!/usr/bin/env bash

start_icon=$(get_tmux_option "@tmux2k-start-icon" "session")

main() {
    case $start_icon in
    session) start_icon=" #S" ;;
    window) start_icon=" #W" ;;
    esac

    echo "$start_icon"
}

main
