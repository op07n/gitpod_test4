FROM gitpod/workspace-full-vnc:latest

USER root

RUN apt-get update

RUN apt-get -y install wine64

RUN dpkg --add-architecture i386 && apt-get update && apt-get install wine32




    
    
    

