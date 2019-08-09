#!/bin/bash

echo "starting shadowsocks"
sslocal -c shadowsocks_config.json -d start
echo "shadowsocks has been started"

echo "starting privoxy"
service privoxy start
echo "privoxy has been started"

echo "setting http and ssl proxy"
export http_proxy=http://127.0.0.1:8117
export https_proxy=http://127.0.0.1:8117
echo "http and ssl proxy have been setting"

echo "you can access google!"



