sudo apt install wget unzip -y
rm bootstrap-aarch64.zip
wget http://termux.net/bootstrap/bootstrap-aarch64.zip
rm -rf workdir
unzip -d workdir bootstrap-aarch64.zip
