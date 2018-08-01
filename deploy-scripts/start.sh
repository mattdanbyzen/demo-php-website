#!/bin/sh

USER=ec2-user

cd /home/$USER
aws s3 cp s3://farmison-puppet/puppet-firefly.zip . # Use $APPLICATION_NAME here to make more generic?
unzip -B puppet-firefly.zip
/opt/puppetlabs/bin/puppet apply AppServerSetup/FireflyApp.pp