command_not_found_handle() {
	/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
}

PS1='\$ '
:<<COMMENT
cp $PREFIX/etc/init.sh $HOME/
chmod 777 $HOME/init.sh
$HOME/init.sh
COMMENT

cp $PREFIX/etc/.bashrc $HOME/
