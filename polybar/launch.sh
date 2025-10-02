#!/usr/bin/env bash

# kill any running polybar
killall -q polybar

# wait till its closed
while pgrep -x polybar >/dev/null; do sleep 0.1; done

# run bar
polybar rightbar &
polybar leftbar &
polybar middlebar &

