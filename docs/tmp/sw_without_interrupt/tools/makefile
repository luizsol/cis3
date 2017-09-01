# The MIPS gcc compiler must use the cygwin1.dll that came with the compiler.
# The CC_X86 is for compiling tools on your PC.
# The GCC_MIPS is for compiling code on the target.
# Convert_bin changes test.axf into code.txt which is used by the VHDL.
# Convert_bin == "objcopy -I elf32-big -O binary test.axf test.bin"

# Customize for Linux (for Linux GCC compiler see http://buildd.emdebian.org/)
# The site http://www.mips.com/ also has a MIPS cross compiler.
#CC_X86 = gcc -Wall -O -g
#CP = cp
#RM = rm -rf 
#BIN_MIPS = ../../mips/sde/bin
#VHDL_DIR = ../vhdl
#GCC_MIPS  = $(BIN_MIPS)/gcc $(CFLAGS)
#AS_MIPS   = $(BIN_MIPS)/as
#LD_MIPS   = $(BIN_MIPS)/ld
#DUMP_MIPS = $(BIN_MIPS)/objdump

# Customize for Windows
CC_X86 = cl /O1 /nologo
CP = copy
RM = del
BIN_MIPS = ..\gccmips_elf
VHDL_DIR = ..\vhdl
GCC_MIPS  = $(BIN_MIPS)\gcc $(CFLAGS)
AS_MIPS   = $(BIN_MIPS)\as
LD_MIPS   = $(BIN_MIPS)\ld
DUMP_MIPS = $(BIN_MIPS)\objdump

CFLAGS = -O2 -Wall -c -s 

all: convert_bin.exe tracehex.exe bintohex.exe ram_image.exe
	@echo make targets = count, opcodes, pi, test, run, tohex,\
	bootldr, toimage, etermip

#clean:
#	-$(RM) *.o *.obj *.map *.lst *.hex *.txt *.exe *.axf
	
clean:
	-$(RM) *.o *.obj *.map *.lst *.hex *.txt *.axf *.s *.i *.bin

	
count_2553: 
	$(AS_MIPS) -o boot.o boot.asm
	$(GCC_MIPS) -save-temps count_2553.c
	$(GCC_MIPS) -save-temps no_os_2553.c 
	$(LD_MIPS) -Ttext 0 -eentry -Map test.map -s -N -o test.axf \
		boot.o count_2553.o no_os_2553.o 
	-$(DUMP_MIPS) --disassemble test.axf > test.lst
	convert_bin.exe
	$(CP) code.txt $(VHDL_DIR)
	bintohex.exe test.bin
	$(CP) code*.hex $(VHDL_DIR)

plasma_fibonacci: 
	$(AS_MIPS) -o boot.o boot.asm
	$(GCC_MIPS) -save-temps plasma_fibonacci.c
	$(GCC_MIPS) -save-temps no_os.c 
	$(LD_MIPS) -Ttext 0 -eentry -Map test.map -s -N -o test.axf \
		boot.o plasma_fibonacci.o no_os.o 
	-$(DUMP_MIPS) --disassemble test.axf > test.lst
	convert_bin.exe
	$(CP) code.txt $(VHDL_DIR)
	bintohex.exe test.bin
	$(CP) code*.hex $(VHDL_DIR)	
		
# Run a MIPS opcode simulator
run: mlite.exe
	@mlite.exe test.bin 

run_little_endian: mlite.exe
	@mlite.exe test.bin L

disassemble: mlite.exe
	mlite.exe test.bin BD > test.txt

# Used by Altera FPGAs for ram image
tohex: bintohex.exe
	bintohex.exe test.bin
	$(CP) code*.hex $(VHDL_DIR)

# Used by Xilinx FPGAs for ram image
toimage:
	ram_image.exe ../vhdl/ram_xilinx.vhd ../vhdl/code.txt ../vhdl/ram_image.vhd
