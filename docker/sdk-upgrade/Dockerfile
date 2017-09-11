FROM ubuntu:14.04

# Dependencies
RUN apt-get update \
    && apt-get install -y \
        curl \
        apt-transport-https

# https://github.com/dotnet/core/releases

# Configure APT for SDK 2.0.0-Preview2 and earlier
RUN sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ trusty main" > /etc/apt/sources.list.d/dotnetdev.list' \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893 \
    && apt-get update

# SDK 1.0.1
# https://github.com/dotnet/core/blob/master/release-notes/download-archives/1.1.1-download.md
RUN apt-get install -y dotnet-dev-1.0.1

# SDK 1.0.3
# https://github.com/dotnet/core/blob/master/release-notes/download-archives/1.0.3-sdk-download.md
RUN apt-get install -y dotnet-dev-1.0.3

# SDK 1.0.4
# https://github.com/dotnet/core/blob/master/release-notes/download-archives/1.0.4-sdk-download.md
RUN apt-get install -y dotnet-dev-1.0.4

# SDK 2.0.0 Preview1
# https://github.com/dotnet/core/blob/master/release-notes/download-archives/2.0.0-preview1-download.md
RUN apt-get install -y dotnet-dev-2.0.0-preview1-005977

# Remove previews prior to upgrading.  In-place upgrade is currently not supported.
RUN apt-get purge -y --auto-remove dotnet-dev-2.0.0-preview* dotnet-sdk-2.0.0-preview-*

# SDK 2.0.0 Preview2
# https://github.com/dotnet/core/blob/master/release-notes/download-archives/2.0.0-preview2-download.md
RUN apt-get install -y dotnet-sdk-2.0.0-preview2-006497

# Remove previews prior to upgrading.  In-place upgrade is currently not supported.
RUN apt-get purge -y --auto-remove dotnet-dev-2.0.0-preview* dotnet-sdk-2.0.0-preview-*

# Configure APT for SDK 2.0.0 and later
RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg \
    && mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg \
    && sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-trusty-prod trusty main" > /etc/apt/sources.list.d/dotnetdev.list' \
    && apt-get update

# SDK 2.0.0
# https://github.com/dotnet/core/blob/master/release-notes/download-archives/2.0.0-download.md
RUN apt-get install -y dotnet-sdk-2.0.0
