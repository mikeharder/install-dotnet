FROM fedora:26

# https://www.microsoft.com/net/core#linuxfedora

RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc \
    && sh -c 'echo -e "[packages-microsoft-com-prod]\nname=packages-microsoft-com-prod \nbaseurl=https://packages.microsoft.com/yumrepos/microsoft-rhel7.3-prod\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/dotnetdev.repo'

RUN dnf install -y libunwind libicu compat-openssl10

RUN dnf install -y dotnet-sdk-2.0.0

RUN mkdir warmup \
    && cd warmup \
    && dotnet new \
    && cd .. \
    && rm -rf warmup \
