FROM microsoft/dotnet:2.0.0-preview2-sdk

RUN apt-get update; apt-get install -y gnupg

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -

RUN apt-get update \
        && apt-get install -y gnupg gnupg2 openssh-client dos2unix nodejs rsync git \
        && rm -rf /var/lib/apt/lists/*

RUN npm install -g bower
RUN echo '{ "allow_root": true }' > /root/.bowerrc

RUN mkdir -p ~/.ssh
