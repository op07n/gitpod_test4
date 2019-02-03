FROM gitpod/workspace-full-vnc:latest

USER root

RUN apt-get update &&\
    apt-get install -y librtlsdr-dev rtl-sdr

