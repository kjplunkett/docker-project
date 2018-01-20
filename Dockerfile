FROM ubuntu:14.04

ADD . /app

WORKDIR /app

RUN export TERM=screen

RUN apt-get update

RUN apt-get install -y curl build-essential python2.7 python-dev python-pip npm
RUN pip install --upgrade pip virtualenv

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash \
    && export NVM_DIR="$HOME/.nvm" \
    && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" \
    && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" \
    && nvm install --lts \
    && nvm use --lts \
    && npm install -g npm

CMD ["npm", "start"]
