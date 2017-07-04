FROM microsoft/dotnet:2.0.0-preview2-sdk

RUN rm /etc/apt/sources.list.d/llvm.list -f

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -

RUN apt-get update \
        && apt-get install -y openssh-client dos2unix rsync git nodejs \
        && rm -rf /var/lib/apt/lists/*

RUN npm install -g bower
RUN echo '{ "allow_root": true }' > /root/.bowerrc

RUN mkdir -p ~/.ssh
