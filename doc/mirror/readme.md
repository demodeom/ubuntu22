# 系统镜像

## Pop_OS 2204

感觉 **上海交通大学** 提供的镜像



备份系统配置

```bash
sudo cp /etc/apt/sources.list.d/pop-os-apps.sources ~/pop-os-apps.sources.back
sudo cp /etc/apt/sources.list.d/pop-os-apps.release ~/pop-os-apps.release.back
sudo cp /etc/apt/sources.list.d/system.sources ~/system.sources.back
```

使用 **上海交通大学** 镜像


```bash
sudo sed -i 's@http://apt.pop-os.org/@https://mirror.sjtu.edu.cn/pop-os/@g' /etc/apt/sources.list.d/pop-os-apps.sources
sudo sed -i 's@http://apt.pop-os.org/@https://mirror.sjtu.edu.cn/pop-os/@g' /etc/apt/sources.list.d/pop-os-release.sources
sudo sed -i 's@http://apt.pop-os.org/@https://mirror.sjtu.edu.cn/@g' /etc/apt/sources.list.d/system.sources
```

## Ubuntu Desktop 2204

目前多内的提供的镜像比较多， 比如： 清华大学、上海交通大学、华为云、网易云、阿里云 等



个人测试， 华为云下载速度还是比较快的。以下是 华为云镜像 配置命令

1. 备份配置文件：

```bash
sudo cp -a /etc/apt/sources.list /etc/apt/sources.list.bak
```

2. 修改 **sources.list** 文件，将 **http://archive.ubuntu.com** 和 **http://security.ubuntu.com** 替换成 **http://mirrors.huaweicloud.com** ，可以参考如下命令：

```bash
sudo sed -i "s@http://.*archive.ubuntu.com@http://mirrors.huaweicloud.com@g" /etc/apt/sources.list
sudo sed -i "s@http://.*security.ubuntu.com@http://mirrors.huaweicloud.com@g" /etc/apt/sources.list 
```





