#!/bin/bash
SUBJECT=$(cat /tmp/.mutt-calendar.msg | grep -E '^Subject:' | sed 's@^Subject: @@g')
gcalcli --calendar igor.m.rzegocki@gmail.com --title "${SUBJECT}" --description "$(cat /tmp/.mutt-calendar.msg)" add
rm -rf /tmp/.mutt-calendar.msg
