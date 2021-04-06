FROM node:14.16.0-alpine3.12
RUN \
  apk update && \
  apk add git python py-pip curl && \
  pip install awsebcli
