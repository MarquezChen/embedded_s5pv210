.PHONY:all
all:	mystart.o mylowlevel_init.o
		arm-linux-ld -Tmyboot.lds -o myboot mystart.o mylowlevel_init.o
		arm-linux-objcopy -O binary myboot myboot.bin
		./mkv210 myboot.bin myboot.16k

mystart.o:	mystart.s
	arm-linux-gcc -c mystart.s

mylowlevel_init.o:	mylowlevel_init.s
	arm-linux-gcc -c mylowlevel_init.s

.PHONY:mksd
mksd:
	sudo dd iflag=dsync oflag=dsync if=myboot.16k of=/dev/sdb seek=1