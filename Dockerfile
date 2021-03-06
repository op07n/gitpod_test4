FROM gitpod/workspace-full-vnc:latest

USER root

ENV DEBIAN_FRONTEND noninteractive

RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y alsa-base sudo wine32

# nvm environment variables
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 8.11.1

# install nvm
# https://github.com/creationix/nvm#install-script

RUN curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# install node and npm
RUN . \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

# add node and npm to path so the commands are available
ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# confirm installation
RUN node -v
RUN npm -v
