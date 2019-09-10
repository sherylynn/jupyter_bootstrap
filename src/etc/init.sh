echo 初始化安装
mirrors='https://mirrors.ustc.edu.cn'
mirrors='https://mirrors.tuna.tsinghua.edu.cn'
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb '$mirrors'/termux stable main@' $PREFIX/etc/apt/sources.list
apt update
#apt install libcrypt-dev libzmq libzmq-dev python
apt install python libzmq clang -y
mkdir -p $HOME/.config/pip
tee $HOME/.config/pip/pip.conf <<EOF
[global]
index-url = $mirrors/pypi/web/simple
format = colums
EOF
pip3 install jupyter
jupyter notebook --ip=0.0.0.0
