FROM python:3.7-alpine

RUN apk --no-cache add bash less groff jq git curl python3 py3-pip nodejs nodejs-npm

RUN pip install --upgrade pip awsebcli awscli

# Make sure we land in a shell
CMD ["/bin/bash"]
