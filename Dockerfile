FROM microsoft/dotnet:latest

RUN rm /etc/apt/sources.list.d/llvm.list -f

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -

RUN apt-get update \
        && apt-get install -y openssh-client dos2unix rsync git nodejs \
        && rm -rf /var/lib/apt/lists/*
RUN mkdir -p ~/.ssh