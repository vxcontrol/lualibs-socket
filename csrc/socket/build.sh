[ "$CC" ] || CC=gcc
mkdir -p "$(dirname ../../bin/$P/clib/socket/$SD)"
${X}${CC} -c -O2 $C $files -I. -I../lua-headers
${X}${CC} *.o -shared -o ../../bin/$P/clib/socket/$SD $L
rm -f      ../../bin/$P/$SA
${X}ar rcs ../../bin/$P/$SA *.o
rm *.o

mkdir -p "$(dirname ../../bin/$P/clib/mime/$MD)"
${X}${CC} -c -O2 $C src/mime.c -I. -I../lua-headers
${X}${CC} mime.o -shared -o ../../bin/$P/clib/mime/$MD $L
rm -f      ../../bin/$P/$MA
${X}ar rcs ../../bin/$P/$MA mime.o

rm *.o
