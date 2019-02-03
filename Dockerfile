FROM gitpod/workspace-full-vnc:latest

USER root

RUN apt-get update

RUN apt-get -y install build-essential cmake git libsndfile1-dev autoconf libsndfile1-dev

ENV LD_LIBRARY_PATH $LD_LIBRARY_PATH:/usr/local/lib

RUN git clone https://github.com/jgaeddert/liquid-dsp.git -b devel --single-branch && cd liquid-dsp && ./bootstrap.sh && ./configure && make && make install


    
    
    

