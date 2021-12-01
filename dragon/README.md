## Deploy

#### 💻 Server

```sh
docker run -dit \
  -v $PWD/ql/config:/ql/config \
  -v $PWD/ql/db:/ql/db \
  -v $PWD/ql/log:/ql/log \
  -v $PWD/ql/jbot:/ql/jbot \
  -p 5700:5700 \
  --name qinglong \
  --hostname qinglong \
  --restart always \
  whyour/qinglong:latest
```

#### 🚀 OpenWrt

```sh
docker run -dit \
  -v $PWD/ql/config:/ql/config \
  -v $PWD/ql/db:/ql/db \
  -v $PWD/ql/log:/ql/log \
  -v $PWD/ql/jbot:/ql/jbot \
  --net host \
  --name qinglong \
  --hostname qinglong \
  --restart always \
  whyour/qinglong:latest
```

## Usage

#### 🚩 Login

> 确保你的设备放行了`5700`端口
> 用自己的`ip:5700`登录面板 设置账号密码

#### 🎉 One-key configuration

> 科学网络环境

```sh
# > 宿主机

docker exec -it qinglong bash -c "$(curl -fsSL https://raw.githubusercontent.com/xtoys/Scripts/main/dragon/bonus.sh)"

# > 容器内

bash -c "$(curl -fsSL https://raw.githubusercontent.com/xtoys/Scripts/main/dragon/bonus.sh)"
```

> 国内网络环境

```sh
# > 宿主机

docker exec -it qinglong bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/xtoys/Scripts@main/dragon/bonus-cdn.sh)"

# > 容器内

bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/xtoys/Scripts@main/dragon/bonus-cdn.sh)"
```

## Thanks

> [`互助研究院`](https://t.me/update_help)
