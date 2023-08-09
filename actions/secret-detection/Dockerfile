FROM python:3.7.6-alpine3.11

RUN pip install detect-secrets==0.13.0
RUN apk --no-cache add git less openssh
RUN apk add jq

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENV SECRET_BASELINE_FILE="./.secrets.baseline"

ENTRYPOINT ["/entrypoint.sh"]
