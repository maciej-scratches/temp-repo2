# FROM gitpod/workspace-full:2022-10-17-21-33-26

FROM ubuntu:18.04

RUN useradd -m crac

RUN apt-get update && apt-get install -y wget sudo
RUN wget https://github.com/CRaC/openjdk-builds/releases/download/17-crac%2B3/openjdk-17-crac+3_linux-x64.tar.gz
RUN sudo tar zxf openjdk-17-crac+3_linux-x64.tar.gz
RUN sudo mv openjdk-17-crac+3_linux-x64 /opt/
USER crac
RUN echo 'export JAVA_HOME=/opt/openjdk-17-crac+3_linux-x64/' >> /home/crac/.bashrc
RUN echo 'export PATH=/opt/openjdk-17-crac+3_linux-x64/bin:$PATH' >> /home/crac/.bashrc
WORKDIR /home/crac
