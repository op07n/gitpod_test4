FROM gitpod/workspace-full-vnc:latest

USER root

RUN apt-get update

RUN dpkg --add-architecture i386

RUN apt-get -y install playonlinux




    
    
    

