#!/usr/bin/env sh
if [ "$(uname)" = "Darwin" ]; then
    SUM="$(pwd | md5)"
else
    SUM="$(pwd | md5sum)"
fi

printf "${HOME}/.vim/sessions/${SUM}"
