FROM ubuntu:18.04

LABEL maintainer="Edson Celio <edsoncelio@protonmail.com>"

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    acl \
    apache2 \
    asciidoc \
    bzip2 \
    cdbs \
    curl \
    debhelper \
    debianutils \
    devscripts \
    docbook-xml \
    dpkg-dev \
    fakeroot \
    gawk \
    gcc \
    git \
    libffi-dev \
    libssl-dev \
    libxml2-utils \
    locales \
    make \
    mercurial \
    mysql-server \
    openssh-client \
    openssh-server \
    python-dev \
    pass \
    python-httplib2 \
    python-jinja2 \
    python-keyczar \
    python-lxml \
    python-mock \
    python-mysqldb \
    python-nose \
    python-paramiko \
    python-passlib \
    python-pip \
    python-setuptools \
    python-virtualenv \
    python-yaml \
    reprepro \
    rsync \
    ruby \
    sshpass \
    subversion \
    sudo \
    tzdata \
    unzip \
    xsltproc \
    zip \
 && rm -rf /var/lib/apt/lists/*

RUN pip install ansible pywinrm
RUN mkdir /etc/ansible/