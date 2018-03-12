FROM centos:7

RUN yum install -y \
  epel-release \
  && yum update -y \
  && yum clean all

RUN yum install -y \
  git \
  make \
  curl \
  python-pip \
  rpm-build \
  rpm-sign \
  createrepo \
  && yum clean all

RUN pip install --upgrade pip \
 && pip install awscli \
 && pip install --upgrade awscli

RUN curl -sL https://github.com/kahing/goofys/releases/download/v0.19.0/goofys -o /usr/bin/goofys \
    && chmod a+x /usr/bin/goofys \
    && mkdir /root/.aws

