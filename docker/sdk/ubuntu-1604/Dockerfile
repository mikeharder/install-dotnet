FROM ubuntu:16.04

# https://www.microsoft.com/net/core#linuxubuntu

# Dependencies
RUN apt-get update \
    && apt-get install -y \
        curl \
        apt-transport-https

# Configure APT
RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg \
    && mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg \
    && sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list' \
    && apt-get update

RUN apt-get install -y dotnet-sdk-2.0.0

RUN mkdir warmup \
    && cd warmup \
    && dotnet new \
    && cd .. \
    && rm -rf warmup \
