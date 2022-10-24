FROM gitpod/workspace-full:2022-10-17-21-33-26

RUN wget https://github.com/CRaC/openjdk-builds/releases/download/17-crac%2B3/openjdk-17-crac+3_linux-x64.tar.gz \
    sudo tar zxf openjdk-17-crac+3_linux-x64.tar.gz \
    sudo mv openjdk-17-crac+3_linux-x64 /opt/ \
    echo 'export JAVA_HOME=/opt/openjdk-17-crac+3_linux-x64/' >> /home/gitpod/.bashrc \
    echo 'export PATH=/opt/openjdk-17-crac+3_linux-x64/bin:$PATH' >> /home/gitpod/.bashrc \
