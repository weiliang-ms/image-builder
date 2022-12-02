FROM python:3.7-alpine
WORKDIR /work
RUN apk update && apk add --no-cache gcc make g++ python3-dev build-base freetype-dev libpng-dev openblas-dev py3-scipy
