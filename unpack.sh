sudo apt install wget unzip -y
wget http://termux.net/bootstrap/bootstrap-aarch64.zip
unzip -d workdir bootstrap-aarch64.zip
cp -r patch/ workdir/
