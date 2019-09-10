FROM gitpod/workspace-full-vnc:latest

USER root

ENV DEBIAN_FRONTEND noninteractive

RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y alsa-base sudo wine32


    
    
    

