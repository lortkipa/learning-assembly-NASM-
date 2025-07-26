
# generate .o files
nasm -f elf -Isrc/ -g src/main.asm -o main.o

# link as executable
ld -m elf_i386 main.o -o app
