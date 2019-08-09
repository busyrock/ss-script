#!/bin/bash

echo "closing http and ssl proxy"
export http_proxy=""
export https_proxy=""
echo "http and ssl proxy have been closed"

echo "closing privoxy"
service privoxy stop
echo "privoxy has been closed"

echo "closing shadowsocks"
sslocal -c shadowsocks_config.json -d stop
echo "shadowsocks has been closed"

echo "bye-bye"



