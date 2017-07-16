FROM microsoft/aspnetcore-build:2.0.0-preview2

RUN apt-get update \
        && apt-get install -y openssh-client dos2unix rsync git \
        && rm -rf /var/lib/apt/lists/*

RUN mkdir -p ~/.ssh
