#!/usr/bin/env bash
echo -n > ~/.passwords
for i in $(seq 1 3); do
  echo "Enter 1password master password: "
  read -s PASSWORD
  (1pass --no-prompt ajgon <<< "$PASSWORD" > /dev/null 2>&1)
  if [ $? -eq 0 ]; then
    echo "export EMAIL_PASSWORD='$(1pass --no-prompt '[ajgon] roundcube:igor@rzegocki.pl' <<< $PASSWORD)'" > ~/.passwords
    break;
  fi
done
