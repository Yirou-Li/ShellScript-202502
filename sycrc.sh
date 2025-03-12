#指定端口号的传输
rsync -avr --partial --progress -e 'ssh -p port' \
yonghuming@IP:/path/to/your/source/dictionary/ \
yonghuming@IP:/path/to/your/target/dictionary/

#断点续传
rsync -avr --partial --progress --append -e 'ssh -p port' \
yonghuming@IP:/path/to/your/source/dictionary/ \
yonghuming@IP:/path/to/your/target/dictionary/
