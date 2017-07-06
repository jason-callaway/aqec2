#!/bin/bash

WD=`pwd`

docker run --rm \
 -v ${WD}/ansible:/ansible \
 -v ${WD}/ssh_config:/root/.ssh/config \
 -v ${WD}/aqec2.pem:/root/aqec2.pem \
 -v ${WD}/aws_config:/root/.aws/config \
 -v ${WD}/aws_credentials:/root/.aws/credentials \
 -ti aqec2 \
 ansible-playbook -i /ansible/inventory/aws/ec2.py /ansible/${1}.yml
