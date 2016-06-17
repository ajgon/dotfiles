#!/bin/bash
ATTACHMENTS_DIR="/var/www/mutt/"
BASE_URL="https://ssl.irgon.com/mutt/"

FILENAME="$1"
BASENAME="$(basename ${FILENAME})"
DESTINATION="${ATTACHMENTS_DIR}/${BASENAME}"
mv $1 ${DESTINATION}
chmod 644 ${DESTINATION}
echo "https://ssl.irgon.com/mutt/${BASENAME}"
read -n 1 -s
rm -rf ${DESTINATION}
