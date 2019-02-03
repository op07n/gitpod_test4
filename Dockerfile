FROM gitpod/workspace-full-vnc:latest

USER root

RUN apt-get update

RUN apt-get -y install build-essential git libsndfile1-dev libliquid-dev

RUN git clone https://github.com/windytan/redsea.git && cd redsea && ./autogen.sh && ./configure && make && make install

ADD . /redsea

WORKDIR /redsea




    
    
    

