FROM python:3.7.15-slim
WORKDIR /work
ADD requirements.txt .
RUN apt install gcc make g++ libglib2.0-dev libgl1-mesa-glx libsm6 libxrender1 -y \
RUN pip install -r requirements.txt
