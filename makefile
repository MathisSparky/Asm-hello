NASM := C:\Users\mathi\AppData\Local\bin\NASM\nasm.exe
GCC := gcc

hello: ./src/hello.asm
	$(NASM) -f win64 ./src/hello.asm -o ./bin/hello.obj
	$(GCC) ./bin/hello.obj -o ./build/hello.exe -no-pie