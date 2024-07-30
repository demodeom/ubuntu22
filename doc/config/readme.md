# 系统配置

## 阿里云 DNS

IP4

```
223.5.5.5,223.6.6.6
```

IP6

```
2400:3200::1,2400:3200:baba::1
```



## 系统更新、升级

```bash
sudo apt update 
sudo apt upgrade -y
```

系统更新升级之后， 建议重启系统

## 常用软件


```bash
sudo apt install wget curl zsh vim git -y
```

## 终端美化

OhMyZsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```



## 图片


自带图片查看器默认不支持 webp 格式

解决方法：

```bash
sudo add-apt-repository ppa:helkaluin/webp-pixbuf-loader
sudo apt update && sudo apt install webp-pixbuf-loader -y
```



## 输入法 fcitx5

### 安装输入法

```bash
sudo apt install fcitx5 fcitx5-module-cloudpinyin fcitx5-chinese-addons -y
```

### 配置默认输入法

使用命令 im-config 设置默认输入法为 fcitx5

修改环境变量，配置输入法

```bash
sudo vim /etc/environment
```

在文件末尾追加

```
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
INPUT_METHOD=fcitx
SDL_IM_MODULE=fcitx
GLFW_IM_MODULE=ibus
```

### 输入法开机自启动

使用软件 启动应用程序 将 fcitx5 添加到开机子启动


名称 fcitx5 
命令 /usr/bin/fcitx5 
注释 fcitx5



### 主题配置

主题下载地址 https://maicss.lanzoui.com/iScGart77xi

```bash
unzip fcitx5-simple-themes.zip 

mv Simple-dark ~/.local/share/fcitx5/themes
mv Simple-white ~/.local/share/fcitx5/themes
```



### 词库配置

词库下载地址 https://maicss.lanzoui.com/iErOirt790h

```bash
mkdir -p  ~/.local/share/fcitx5/pinyin/dictionaries/
cp zhwiki-20210722.dict ~/.local/share/fcitx5/pinyin/dictionaries/
```



### 生效配置

重启系统后，输入法配置生效

重启之后：

选择输入法主题
配置 云输入法
配置字体大小





