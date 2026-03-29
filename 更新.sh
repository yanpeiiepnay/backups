cd /storage/emulated/0/..0/git/backups/
git add README.md
git add KeePassDatabase.kdbx.txt    
git add 更新.sh
git commit -m "hello"
git push gitee master
git push github master




: <<'EOF'
#这是一段多行注释
#安装git
pkg install git
#设置邮箱用户名
git config --global user.email "yanpeiiepnay@gmail.com"
git config --global user.name "yanpeiiepnay"

复制id_rsa、id_rsa.pub到$home/.ssh/
#ssh-keygen -t rsa -b 4096 -C "yanpeiiepnay@gmail.com" #生成密钥
#/data/data/com.termux/files/home/.ssh/id_rsa
#/data/data/com.termux/files/home/.ssh/id_rsa.pub
#在https://github.com/settings/keys添加id_rsa.pub
#在https://gitee.com/profile/sshkeys添加id_rsa.pub

ssh -T git@github.com #测试github是否成功配置ssh密钥
ssh -T git@github.com #测试gitee是否成功配置ssh密钥

cd /storage/emulated/0/..0/git/
git clone git@github.com:yanpeiiepnay/backups.git
cd backups.git
git config --global --add safe.directory /storage/emulated/0/..0/git/backups

git branch #查看本地分支，当前分支前有*，此例为master

git remote #查看远程仓库别名，一般为orgin
git remote rename origin github #修改远程仓库别名为github
git remote add gitee git@gitee.com:yanpeiiepnay/backups.git #添加gitee远程仓库

cd /storage/emulated/0/..0/git/backups/
git add README.md
git add KeePassDatabase.kdbx.txt    
git add 更新.sh
git commit -m "hello"

git push gitee master
git push github master
EOF

