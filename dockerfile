FROM ubuntu:22.04
RUN yes | unminimize
RUN apt-get update && \
    apt-get install -y locales tmux less
RUN apt-get install -y nodejs npm curl
RUN npm install n -g && n 22.14.0
RUN apt-get install -y bash
SHELL ["/bin/bash", "-c"]
WORKDIR /