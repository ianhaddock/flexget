# Dockerfile
# https://flexget.com/CLI
# usage: flexget [-V] [--test] [-c CONFIG] [--logfile LOGFILE]
#                [--loglevel LEVEL] [--profile [OUTFILE]] [--cron] [--help]
#                [--debug-warnings] [--debug-db-sessions]
#                <command> ...

FROM docker.io/library/python:3.12-slim-bullseye

RUN apt-get update

RUN pip3 install flexget guppy3

RUN apt-get clean

RUN mkdir /watch_folder

RUN mkdir /config

RUN rm -rf /tmp/*

LABEL org.opencontainers.image.source="https://github.com/ianhaddock/flexget"

LABEL org.opencontainers.image.description="Simple Flexget Container."

LABEL org.opencontainers.image.licenses=MIT

ENTRYPOINT exec /usr/local/bin/flexget -c /config/config.yml --loglevel=$LOG_LEVEL daemon start
