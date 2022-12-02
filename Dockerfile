FROM python:3.7-alpine
WORKDIR /work
RUN apk update && apk add gcc make g++ python-dev
