#!/bin/sh

OUTPUT=${OUTPUT:-hello world}
while true
do
  echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n${OUTPUT}" | nc -lN -p 3000
done
