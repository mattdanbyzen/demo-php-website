#!/bin/sh
while ! curl http://127.0.0.1:80/community/index.php ; do sleep 1 ; done