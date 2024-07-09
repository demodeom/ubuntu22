# 聊天软件

## 邮箱 Geary

```bash
sudo apt install geary -y
```

## 局域网聊天  LocalSend

局域网聊天文件传输

```bash
mkdir ~/Downloads
cd ~/Downloads

axel -n 8 https://ghproxy.net/https://github.com/localsend/localsend/releases/download/v1.14.0/LocalSend-1.14.0-linux-x86-64.deb

sudo dpkg -i ~/Downloads/LocalSend-1.14.0-linux-x86-64.deb

sudo apt install -f -y
```
