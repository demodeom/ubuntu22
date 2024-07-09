# 浏览器

## Firefox 浏览器

```bash
flatpak install flathub org.mozilla.firefox
```





## Google Chrome



```bash
mkdir ~/Downloads
cd ~/Downloads

# 下载 Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 

# 安装 Google Chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb

# 最新版有依赖， 需要自己安装，可以使用 apt 自动安装
sudo apt install -f
```

