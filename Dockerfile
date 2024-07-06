# Dockerfile
# ref: flexget.com/InstallWizard/SynologyNAS/Docker

FROM docker.io/library/python:3.12-slim-bullseye

RUN apt-get update

#RUN apt-get install gcc g++ musl-dev linux-headers -y

RUN pip3 install flexget

RUN apt-get clean

WORKDIR /flexget

RUN mkdir /watch_folder

RUN mkdir /config

COPY ./config/config.yml /config/config.yml

COPY ./start.sh ./start.sh

RUN chmod +x ./start.sh

CMD ["./start.sh"]
