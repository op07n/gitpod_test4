FROM gitpod/workspace-full-vnc:latest

USER root

RUN apt-get update

RUN apt-get -y install wine64

RUN dpkg --add-architecture i386

RUN apt-get -y install playonlinux




    
    
    

