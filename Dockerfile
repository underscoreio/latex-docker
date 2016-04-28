FROM tianon/latex:latest

RUN echo 'deb http://httpredir.debian.org/debian jessie contrib non-free' > /etc/apt/sources.list.d/contrib.list && \
    apt-get update

RUN apt-get install -y --no-install-recommends ttf-bitstream-vera ttf-mscorefonts-installer fonts-lato && \
    rm -rf /var/lib/apt/lists/*
