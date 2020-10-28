#!/bin/bash
# Quit Terminal when this shell exists if there are no other terminals open.
if [ "$TERM_PROGRAM" == "Apple_Terminal" ]; then
    quit_terminal_when_no_terminals_remain() {
        osascript -e 'tell application "Terminal" to if running and (count every tab of every window whose tty is not "'"$(tty)"'") is 0 then quit'
    }
    trap quit_terminal_when_no_terminals_remain EXIT
fi
