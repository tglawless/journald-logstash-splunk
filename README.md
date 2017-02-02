# Sending the Journald Log Stream to Splunk using Logstash

This repository provides an example of how to configure Journald to output its log stream to a JSON file.  A containerized Logstash is used to read new lines from the JSON file sending the individual log entries to Splunk.

In order to run this example you will need Vagrant.  Clone this repository and edit the bootstrap.sh script providing your Splunk hostname and token.

From the root directory of the cloned repository run:

```
vagrant up
```

Vagrant will pull the latest centos/7 box.  Once the box is running, the bootstrap.sh script will install Ansible and execute the provided playbook to:

- Install and configure Docker 
- Create a new Systemd unit defining a service which contains the journalctl command to output JSON to a file
- Build and deploy a Logstash Docker image containing the provided configuration

Once the Logstash contianer is running, Journald log events will start to appear in Splunk.
