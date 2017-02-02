#!/bin/bash

export SPLUNK_HOST=input-prd-p-zfq4x6wf8mv4.cloud.splunk.com
export SPLUNK_TOKEN=67E90F4D-83B2-414F-9B29-6275C9EA99FC

sudo yum install -y epel-release vim
sudo yum install -y python-pip gcc python-devel openssl-devel
sudo pip install ansible

ansible-playbook --extra-vars "SPLUNK_HOST=$SPLUNK_HOST SPLUNK_TOKEN=$SPLUNK_TOKEN" -i /vagrant/hosts /vagrant/playbook.yml
