FROM ubuntu:14.04

# Dependencies
RUN apt-get update \
    && apt-get install -y \
        curl \
        apt-transport-https

# https://github.com/dotnet/core/releases

# Configure APT for Runtime 2.0.0-Preview2 and earlier
RUN sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ trusty main" > /etc/apt/sources.list.d/dotnetdev.list' \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893 \
    && apt-get update

# Runtime 1.*
RUN apt-get install -y dotnet-sharedframework-microsoft.netcore.app-1.0.0
RUN apt-get install -y dotnet-sharedframework-microsoft.netcore.app-1.0.1
RUN apt-get install -y dotnet-sharedframework-microsoft.netcore.app-1.0.3
RUN apt-get install -y dotnet-sharedframework-microsoft.netcore.app-1.0.4
RUN apt-get install -y dotnet-sharedframework-microsoft.netcore.app-1.0.5
RUN apt-get install -y dotnet-sharedframework-microsoft.netcore.app-1.1.0
RUN apt-get install -y dotnet-sharedframework-microsoft.netcore.app-1.1.1
RUN apt-get install -y dotnet-sharedframework-microsoft.netcore.app-1.1.2

# Runtime 2.0.0 Preview1
RUN apt-get install -y dotnet-sharedframework-microsoft.netcore.app-2.0.0-preview1-002111-00

# Runtime 2.0.0 Preview2
RUN apt-get install -y dotnet-runtime-2.0.0-preview2-25407-01

# Configure APT for SDK 2.0.0-Preview2 and earlier
RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg \
    && mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg \
    && sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-trusty-prod trusty main" > /etc/apt/sources.list.d/dotnetdev.list' \
    && apt-get update

# Runtime 2.0.0
RUN apt-get install -y dotnet-runtime-2.0.0 aspnetcore-store-2.0.0
