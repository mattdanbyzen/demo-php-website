#!/bin/sh

cd /tmp
aws s3 cp s3://farmison-puppet/puppet-firefly.zip .
unzip -B puppet-firefly.zip
/opt/puppetlabs/bin/puppet apply ./AppServerSetup/FireflyApp.pp