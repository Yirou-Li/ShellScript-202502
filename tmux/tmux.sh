1. 将tmux.tar.gz传输到服务器的家目录

rsync -avr --partial --progress --append \
/path/to/tmux.tar.gz/ \
user@B_server:/path/to/destination/

2. 在服务器 B 上，解压打包文件：
tar -xzvf tmux.tar.gz

3. 配置环境变量，将上述命令添加到 ~/.bashrc 或 ~/.bash_profile 中
echo 'export PATH=~/tmux/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=~/tmux/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc
