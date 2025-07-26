
# generate .o files
nasm -f elf -Isrc/ src/main.asm

# link as executable
ld -m elf_i386 main.o -o app

# run
./app

# log exit code
echo "program exited with code $?"
