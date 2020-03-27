FROM --platform=linux/386 ubuntu:latest

RUN mkdir /game
WORKDIR /game

# COPY requirements.txt ./

ENTRYPOINT ["Entrypoing.sh"]