FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y curl git wget ca-certificates libcurl4 libjansson4 libgomp1
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh