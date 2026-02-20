# Base image: CUDA 11.3 + cuDNN 8 + Ubuntu 20.04
FROM nvidia/cuda:11.3.1-cudnn8-devel-ubuntu20.04

LABEL org.opencontainers.image.source=https://github.com/Toys-R-Us-Rex/TEXTurePaper

ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONUNBUFFERED=1

# System dependencies
RUN apt-get update && apt-get install -y \
    python3.8 \
    python3.8-dev \
    python3-pip \
    git \
    wget \
    curl \
    libgl1-mesa-glx \
    libglib2.0-0 \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Make python3.8 the default
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1 && \
    update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

# Upgrade pip
RUN pip install --upgrade pip

# Install PyTorch 1.12 with CUDA 11.3
RUN pip install \
    torch==1.12.1+cu113 \
    torchvision==0.13.1+cu113 \
    torchaudio==0.12.1 \
    --extra-index-url https://download.pytorch.org/whl/cu113

WORKDIR /workspace
COPY . .

# Install project dependencies
RUN pip install -r requirements.txt

# Install Kaolin 0.14.0 for PyTorch 1.12 + CUDA 11.3
RUN pip install kaolin==0.14.0 \
    -f https://nvidia-kaolin.s3.us-east-2.amazonaws.com/torch-1.12.1_cu113.html

# Create empty TOKEN file
RUN touch TOKEN

CMD ["bash"]
