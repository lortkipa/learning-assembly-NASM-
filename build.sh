
# generate .o files
nasm -f elf main.asm

# link as executable
ld -m elf_i386 main.o -o app

# run
./app
