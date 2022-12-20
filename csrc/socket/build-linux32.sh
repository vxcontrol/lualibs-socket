files="$(ls -1 src/*.c | grep -v "wsocket\|mime")" \
	P=linux32 C="-m32 -fPIC -DLUASOCKET_API=extern" L="-m32 -s -static-libgcc" \
	SD=core.so MD=core.so SA=libsocket_core.a MA=libmime_core.a ./build.sh
