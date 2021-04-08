FROM python:3.7-alpine

RUN apk add --no-cache python3 py3-pip

RUN apk add --no-cache bash less groff jq git curl py-pip nodejs nodejs-npm

RUN apk add --no-cache python3-dev

RUN pip install --upgrade pip awscli awsebcli==3.15.0

RUN apk add --no-cache p7zip

RUN apk add --no-cache nodejs npm

# Make sure we land in a shell
CMD ["/bin/bash"]
