#!/bin/bash

# The value of this variable should be in the form of
# input-<UNIQUE HOSTNAME>.cloud.splunk.com
export SPLUNK_HOST=<YOUR SPLUNK CLOUD HOSTNAME>

# This value should be the token created by Splunk when
# a new HTTP Event Collector is created.
export SPLUNK_TOKEN=<YOUR SPLUNK CLOUD HTTP EVENT COLLECTOR TOKEN>

sudo yum install -y epel-release vim
sudo yum install -y python-pip gcc python-devel openssl-devel
sudo pip install ansible

ansible-playbook --extra-vars "SPLUNK_HOST=$SPLUNK_HOST SPLUNK_TOKEN=$SPLUNK_TOKEN" -i /vagrant/hosts /vagrant/playbook.yml
