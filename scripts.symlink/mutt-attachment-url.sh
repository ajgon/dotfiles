#!/bin/bash
ATTACHMENTS_DIR="/var/www/mutt/"
BASE_URL="https://ssl.irgon.com/mutt/"

FILENAME="$@"
BASENAME=$(basename "${FILENAME}")
DESTINATION="${ATTACHMENTS_DIR}/${BASENAME}"
mv "${FILENAME}" "${DESTINATION}"
chmod 644 "${DESTINATION}"
echo "https://ssl.irgon.com/mutt/$(echo ${BASENAME} | sed 's@ @%20@g')"
read -n 1 -s
rm -rf "${DESTINATION}"
