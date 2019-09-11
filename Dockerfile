FROM gitpod/workspace-full-vnc:latest

USER root

ENV DEBIAN_FRONTEND noninteractive

RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y alsa-base sudo wine32

RUN npm install -g brew

RUN brew install node@8

RUN brew link node@8 --force
