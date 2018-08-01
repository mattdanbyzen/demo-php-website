#!/bin/sh

cd /tmp
aws s3 cp s3://farmison-puppet/puppet-$APPLICATION_NAME.zip .
unzip -B puppet-$APPLICATION_NAME.zip
/opt/puppetlabs/bin/puppet apply ./AppServerSetup/$APPLICATION_NAME.pp > puppet.log
