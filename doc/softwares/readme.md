# 软件管理



## Flatpak



```bash
sudo apt update
sudo apt install flatpak -y
```

感觉 上海交通大学 提供的镜像

Flatpak 仓库配置

- 官方仓库 https://flathub.org/repo/flathub
- 上交大镜像 https://mirror.sjtu.edu.cn/flathub

```bash
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 
flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub 
wget https://mirror.sjtu.edu.cn/flathub/flathub.gpg 
sudo flatpak remote-modify --gpg-import=flathub.gpg flathub 
```



## AppImageLauncher

```bash
mkdir ~/Downloads
cd ~/Downloads

# 下载 AppImageLauncher
wget https://mirror.ghproxy.com/https://github.com/TheAssassin/AppImageLauncher/releases/download/continuous/appimagelauncher_2.2.0-gha111.d9d4c73+bionic_amd64.deb

# 安装 AppImageLauncher
sudo dpkg -i ~/Downloads/appimagelauncher_2.2.0-gha111.d9d4c73+bionic_amd64.deb

# 安装依赖
sudo apt install -f
```

### Docker

```bash
# 1. 安装 Docker
sudo apt install docker.io

# 2. 将当前用户添加到 docker 用户分组。 解决 sudo 权限问题
sudo usermod -aG docker $USER

# 3. 配置 Docker 镜像配置， 感谢 icu 提供的镜像
sudo tee /etc/docker/daemon.json <<EOF
{
    "registry-mirrors": ["https://dockerhub.icu"]
}
EOF
# 4. 重启 Docker 服务生效配置
sudo systemctl restart docker
```

安装 docker 之后， 建议重启系统， 或者注销后重新登陆

## WebAppManager

WebAppManager [http://packages.linuxmint.com/pool/main/w/webapp-manager/](http://packages.linuxmint.com/pool/main/w/webapp-manager/)

```bash
mkdir ~/Downloads
cd ~/Downloads

wget http://packages.linuxmint.com/pool/main/w/webapp-manager/webapp-manager_1.3.6_all.deb

sudo dpkg -i ~/Downloads/webapp-manager_1.3.6_all.deb

sudo apt install -f -y
```





