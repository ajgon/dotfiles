#!/bin/bash
cat "${1:-/dev/stdin}" > /tmp/.mutt-calendar.msg
