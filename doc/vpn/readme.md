# VPN


## clash verge re

在 Ubuntu 2404 系统中， 无法自动解决依赖， 需要手动下载、安装以下依赖

- libwebkit2gtk-4.0
- libjavascriptcoregtk-4.0


```bash
cd ~/Downloads

wget https://cors.isteed.cc/https://github.com/clash-verge-rev/clash-verge-rev/releases/download/dependencies/libwebkit2gtk-4.0-37_2.43.3-1_amd64.deb

wget https://cors.isteed.cc/https://github.com/clash-verge-rev/clash-verge-rev/releases/download/dependencies/libjavascriptcoregtk-4.0-18_2.43.3-1_amd64.deb

wget https://cors.isteed.cc/https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v1.7.5/clash-verge_1.7.5_amd64.deb



sudo dpkg -i  libjavascriptcoregtk-4.0-18_2.43.3-1_amd64.deb
sudo dpkg -i  libwebkit2gtk-4.0-37_2.43.3-1_amd64.deb
sudo dpkg -i  clash-verge_1.7.5_amd64.deb
```

