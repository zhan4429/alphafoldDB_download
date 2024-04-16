FROM ubuntu:latest

ENV PATH="$PATH:/opt/alphafold/scripts"
RUN apt-get -y update && apt-get -y install rsync git aria2

RUN cd /opt/ && git clone https://github.com/google-deepmind/alphafold.git && chmod +x /opt/alphafold/scripts/*
