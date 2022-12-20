[ `uname` = Linux ] && { export X=i686-w64-mingw32-; }
files="$(ls -1 src/*.c | grep -v "usocket\|unix\|serial\|mime")" \
	P=mingw32 C="-DWINVER=0x0501 -DLUASOCKET_INET_PTON -fPIC" \
	L="-s -static-libgcc ../../bin/$P/luajit.a -lws2_32" \
	SD=core.dll MD=core.dll SA=socket_core.a MA=mime_core.a ./build.sh
