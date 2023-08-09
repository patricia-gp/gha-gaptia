FROM python:3.7.6-alpine3.11

RUN apk --no-cache add git less openssh

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
