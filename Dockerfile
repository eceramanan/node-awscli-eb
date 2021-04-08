FROM node:10.24.0-alpine3.11

RUN apk add --no-cache python3 py3-pip

RUN apk add --no-cache bash less groff jq git curl p7zip py-pip nodejs nodejs-npm 

RUN pip install --upgrade pip

RUN pip3 install awscli awsebcli==3.15.0

RUN pip install --upgrade pip awsebcli awscli

RUN apk add --update --no-cache nodejs npm

# Make sure we land in a shell
CMD ["/bin/bash"]
