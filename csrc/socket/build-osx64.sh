[ `uname` = Linux ] && { export X=x86_64-apple-darwin19-; export CC=clang; }
files="$(ls -1 src/*.c | grep -v "wsocket\|serial\|mime")" \
	P=osx64 C="-arch x86_64 -fPIC -DLUASOCKET_API=extern" \
	L="-arch x86_64 -undefined dynamic_lookup" \
	SD=core.so MD=core.so SA=libsocket_core.a MA=libmime_core.a ./build.sh
