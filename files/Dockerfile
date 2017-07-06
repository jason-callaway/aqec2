FROM centos:latest

RUN yum update -y

RUN yum install -y epel-release git vim gcc make python-devel openssl openssl-devel libattr-devel libcurl-devel && \
    yum install -y ansible

RUN yum install -y boto3 python-pip

RUN pip install --upgrade pip && \
    pip list | awk '{print $1}' | xargs -i pip install --upgrade {}

RUN pip install awscli boto
