
# generate .o files
nasm -f elf main.asm
nasm -f elf string.asm

# link as executable
ld -m elf_i386 main.o string.o -o app

# run
./app

# log exit code
echo "program exited with code $?"
