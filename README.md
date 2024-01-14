# nasm-qm
asm bootloader

## you need qem-system-x86_64 vm or any that u can configure
## you also need nasm or any assembly compiler

```
nasm -f bin ./main.asm -o ./boot.bin
```
## to run it with qemu which i use(recommended)
```
qemu-system-86_64 -hda ./boot.bin
```
## hda starts for hardware and qemu only runs on linux(i tink) 
## this is just a demo project of a bootloader and u might encounter errors (u can fix thru nasm documentation)
