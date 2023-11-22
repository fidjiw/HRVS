#!/bin/bash

# 使用正则表达式匹配http链接
regex='href="([^"]+)'

# 读取文件内容
content=$(cat your_file.html)

# 使用grep命令和正则表达式提取链接
links=$(echo "$content" | grep -oE "$regex" | sed 's/href="//')

# 输出提取到的链接
echo "$links"