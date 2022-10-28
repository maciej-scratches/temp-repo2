FROM gitpod/workspace-full:2022-10-25-06-57-58
SHELL ["/bin/bash", "-c"]
RUN wget https://cache-redirector.jetbrains.com/intellij-jbr/jbr-17.0.4.1-linux-x64-b653.1.tar.gz
RUN sudo tar zxf jbr-17.0.4.1-linux-x64-b653.1.tar.gz \
    && sudo mv jbr-17.0.4.1-linux-x64-b653.1 /opt/
RUN echo 'export JAVA_HOME=/opt/jbr-17.0.4.1-linux-x64-b653.1/' >> /home/gitpod/.bashrc \
    && echo 'export PATH=/opt/jbr-17.0.4.1-linux-x64-b653.1/bin:$PATH' >> /home/gitpod/.bashrc
