FROM microsoft/aspnetcore-build:1.0-1.1

RUN apt-get update \
        && apt-get install -y openssh-client dos2unix rsync git \
        && rm -rf /var/lib/apt/lists/*

RUN mkdir -p ~/.ssh
