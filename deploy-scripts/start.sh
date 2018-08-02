#!/bin/sh

cd /tmp
aws s3 cp s3://farmison-puppet/puppet-Firefly$APPLICATION_NAME.zip .
unzip -B puppet-$APPLICATION_NAME.zip
/opt/puppetlabs/bin/puppet apply ./AppServerSetup/Firefly$APPLICATION_NAME.pp > puppet.log
