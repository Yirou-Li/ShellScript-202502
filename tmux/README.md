#**tmux 安装与配置指南**

本指南将帮助您在服务器 B 上安装和配置 tmux 及其依赖文件。所有文件已打包为 tmux.tar.gz 并上传到 GitHub，您可以通过以下步骤完成安装。

##1. 下载 tmux.tar.gz

从 GitHub 下载 tmux.tar.gz 文件到服务器 B 的家目录：

`wget https://github.com/Yirou-Li/ShellScript-202502/raw/main/tmux/tmux.tar.gz`
##2. 解压 tmux.tar.gz

在服务器 B 上解压 tmux.tar.gz：

`tar -xzvf tmux.tar.gz`
解压后，您将获得以下目录结构：
```
~/tmux/
├── bin/
│   └── tmux
└── lib64/
    ├── libutil.so.1
    ├── libtinfo.so.5
    ├── libresolv.so.2
    ├── libc.so.6
    └── ld-linux-x86-64.so.2
```
##3. 配置环境变量

将 tmux 及其依赖库路径添加到环境变量中，以便系统能够正确找到它们。

临时生效（仅当前会话）

运行以下命令：
```
export PATH=~/tmux/bin:$PATH
export LD_LIBRARY_PATH=~/tmux/lib64:$LD_LIBRARY_PATH
```
永久生效（所有会话）

将以下内容添加到 ~/.bashrc 或 ~/.bash_profile 中：
```
echo 'export PATH=~/tmux/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=~/tmux/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc
```
##4. 验证安装

运行以下命令检查 tmux 是否安装成功：

tmux -V
如果输出版本号（例如 tmux 3.3a），说明安装成功。

##5. 使用 tmux

启动 tmux：

`tmux`
更多 tmux 使用方法，请参考 tmux 官方文档。

##6. 可选：配置文件

如果您有自定义的 tmux 配置文件（~/.tmux.conf），可以将其复制到服务器 B 的家目录下：

`scp user@A_server:~/.tmux.conf ~/`
##7. 卸载 tmux

如果您需要卸载 tmux，只需删除 ~/tmux 目录，并从 ~/.bashrc 中移除相关环境变量：
```
rm -rf ~/tmux
sed -i '/export PATH=~\/tmux\/bin:$PATH/d' ~/.bashrc
sed -i '/export LD_LIBRARY_PATH=~\/tmux\/lib64:$LD_LIBRARY_PATH/d' ~/.bashrc
source ~/.bashrc
```
###问题反馈

###如果您在安装或使用过程中遇到问题，请通过以下方式联系我：

**GitHub Issues: 提交问题**
Email: liyirou@caas.cn
**许可证**

本项目遵循 MIT 许可证。

通过以上步骤，您应该可以成功在服务器 B 上安装并使用 tmux。如果有任何问题，欢迎随时联系我！ 😊
