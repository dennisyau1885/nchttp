#!/bin/sh

OUTPUT=${OUTPUT:-$(hostname)}
HEADER="HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n"
while true
do
  echo -e "${HEADER}${OUTPUT}" | nc -lN -p 3000
done
