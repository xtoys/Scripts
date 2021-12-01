#!/usr/bin/env bash
# 
## 本脚本搬运并模仿 liuqitoday
# 

dir_shell=/ql/config
dir_sample=/ql/sample
dir_script=/ql/scripts


# 下载 config.sh
function dlConfig(){
    local sample_shell_path=$dir_sample/config.sample.sh
    local config_shell_path=$dir_shell/config.sh

    if [ ! -a "$config_shell_path" ]; then
    touch $config_shell_path
    fi
    curl -s --connect-timeout 3 https://cdn.jsdelivr.net/gh/xtoys/Scripts@main/dragon/deps/config.sample.sh > $sample_shell_path
    cp $sample_shell_path $config_shell_path

    # 判断是否下载成功
    config_size=$(ls -l $config_shell_path | awk '{print $5}')
    if (( $(echo "${config_size} < 100" | bc -l) )); then
        echo "[config.sh] download failed."
        exit 0
    fi
}

# 下载 extra.sh
function dlExtra(){
    local extra_shell_path=$dir_shell/extra.sh

    if [ ! -a "$extra_shell_path" ]; then
        touch $extra_shell_path
    fi
    curl -s --connect-timeout 3 https://cdn.jsdelivr.net/gh/xtoys/Scripts@main/dragon/deps/extra.sh > $extra_shell_path

    # 判断是否下载成功
    extra_size=$(ls -l $extra_shell_path | awk '{print $5}')
    if (( $(echo "${extra_size} < 100" | bc -l) )); then
        echo "[extra.sh] download failed."
        exit 0
    fi
    # 授权
    chmod 755 $extra_shell_path
}

# 下载 fixDeps.sh
function dlFixDeps(){
    local fix_shell_path=$dir_script/fixDeps.sh

    if [ ! -a "$fix_shell_path" ]; then
        touch $fix_shell_path
    fi
    curl -s --connect-timeout 3 https://cdn.jsdelivr.net/gh/xtoys/Scripts@main/dragon/deps/fixDeps.sh > $fix_shell_path

    # 判断是否下载成功
    fixDeps_size=$(ls -l $fix_shell_path | awk '{print $5}')
    if (( $(echo "${fixDeps_size} < 100" | bc -l) )); then
        echo "[ fixDeps.sh ] download failed."
        exit 0
    fi
    # 授权
    chmod 755 $fix_shell_path
}

# 下载 wskey.py
function dlWskey(){
    local wskey_path=$dir_script/wskey.py

    if [ ! -a "$wskey_path" ]; then
        touch $wskey_path
    fi
    curl -s --connect-timeout 3 https://cdn.jsdelivr.net/gh/Zy143L/wskey@main/wskey.py > $wskey_path

    # 判断是否下载成功
    wskey_size=$(ls -l $wskey_path | awk '{print $5}')
    if (( $(echo "${wskey_size} < 100" | bc -l) )); then
        echo "[wskey.py] download failed."
        exit 0
    fi
}

# 添加到定时任务
function addTask(){

    # extra.sh 
    if [ "$(grep -c extra /ql/config/crontab.list)" = 0 ]; then
        # 获取token
        token=$(cat /ql/config/auth.json | jq --raw-output .token)
        curl -s -H 'Accept: application/json' -H "Authorization: Bearer $token" -H 'Content-Type: application/json;charset=UTF-8' -H 'Accept-Language: zh-CN,zh;q=0.9' --data-binary '{"name":"拉取文件","command":"ql extra","schedule":"15 */8 * * *"}' --compressed 'http://127.0.0.1:5700/api/crons?t=1638325802000'
    fi
    # fixDeps.sh
    if [ "$(grep -c fixDeps /ql/config/crontab.list)" = 0 ]; then
        # 获取token
        token=$(cat /ql/config/auth.json | jq --raw-output .token)
        curl -s -H 'Accept: application/json' -H "Authorization: Bearer $token" -H 'Content-Type: application/json;charset=UTF-8' -H 'Accept-Language: zh-CN,zh;q=0.9' --data-binary '{"name":"依赖修复","command":"task fixDeps.sh","schedule":"0 4 */5 * *"}' --compressed 'http://127.0.0.1:5700/api/crons?t=1638325803000'
    fi
    # wskey.py
    if [ "$(grep -c wskey /ql/config/crontab.list)" = 0 ]; then
        # 获取token
        token=$(cat /ql/config/auth.json | jq --raw-output .token)
        curl -s -H 'Accept: application/json' -H "Authorization: Bearer $token" -H 'Content-Type: application/json;charset=UTF-8' -H 'Accept-Language: zh-CN,zh;q=0.9' --data-binary '{"name":"转换Cookie","command":"task wskey.py","schedule":"20 */12 * * *"}' --compressed 'http://127.0.0.1:5700/api/crons?t=1638325804000'
    fi

}

# 初始化
function initTask(){
    echo "Downloading files..."
    dlConfig
    dlExtra
    dlFixDeps
    dlWskey
    echo "File downloaded successfully!"
    echo "Adding task..."
    addTask
    echo "Task added successfully!"
    echo "Synchronize files..."
    ql extra
    echo "Good luck & Have fun!"
}

initTask