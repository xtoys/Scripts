#!/usr/bin/env bash

## 拉取文件
# 
## > 配置示例
curl -s --connect-timeout 3 https://cdn.jsdelivr.net/gh/xtoys/Scripts@main/dragon/deps/config.sample.sh > /ql/sample/config.sample.sh
# 
## > faker库
ql repo https://github.com/shufflewzc/faker3.git "jd_|jx_|gua_|jddj_|getJDCookie" "activity|backUp" "^jd[^_]|USER|function|utils|ZooFaker_Necklace.js|JDJRValidator_Pure|sign_graphics_validate|ql|sendNotify|jd_CheckCK"
# 
## > wskey
curl -s --connect-timeout 3 https://cdn.jsdelivr.net/gh/Zy143L/wskey@main/wskey.py > /ql/scripts/wskey.py
#