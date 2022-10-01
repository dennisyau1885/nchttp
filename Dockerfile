FROM alpine
RUN apk add netcat-openbsd
COPY nc.sh /
CMD ["sh","/nc.sh"]
