#!/bin/bash

# 下载文件并提取域名、IPv4和IPv6地址，保存到iptv_address.txt
curl -s https://gitee.com/sunhaoyuan55/tool/raw/ceshi/ipv4.m3u | \
grep -Eo '((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)' | \
sort -u | \
sed 's/$/\/32,no-resolve/' > iptv_address.txt
