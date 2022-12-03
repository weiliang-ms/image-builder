FROM python:3.7.15-slim
WORKDIR /work
ADD requirements.txt .
RUN apt update -y && apt install gcc make g++ libglib2.0-dev libgl1-mesa-glx libsm6 libxrender1 -y
RUN pip install -r requirements.txt
RUN pip install torch==1.8.0+cpu torchvision==0.9.0+cpu -f https://download.pytorch.org/whl/torch_stable.html && rm -rf /root/.cache
