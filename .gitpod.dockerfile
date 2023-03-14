FROM dart:latest

ENV PATH="/usr/lib/dart/bin:$PATH"

RUN apt-get update && \
    apt-get install -y \
    libglu1-mesa-dev \
    libgles2-mesa-dev \
    libxi-dev \
    libxrandr-dev \
    libx11-dev \
    libxcursor-dev \
    libxinerama-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
