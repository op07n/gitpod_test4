FROM gitpod/workspace-full-vnc:latest

USER root



RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y alsa-base sudo wine32 playonlinux


    
    
    

