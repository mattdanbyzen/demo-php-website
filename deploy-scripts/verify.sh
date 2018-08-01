#!/bin/sh
while ! curl http://127.0.0.1:80/index.php ; do sleep 1 ; done