# Makefile

# Compiler
VC = ghdl

SRC = src

FLAGS = --ieee=mentor

# Goals
.DEFAULT_GOAL := fibonacci.o

igual.o: $(SRC)/igual.vhd
	$(VC) -a $(FLAGS) $(SRC)/igual.vhd

multiplexor2a1.o: $(SRC)/multiplexor2a1.vhd
	$(VC) -a $(FLAGS) $(SRC)/multiplexor2a1.vhd

reg.o: $(SRC)/reg.vhd
	$(VC) -a $(FLAGS) $(SRC)/reg.vhd

somador.o: $(SRC)/somador.vhd
	$(VC) -a $(FLAGS) $(SRC)/somador.vhd

subtrator.o: $(SRC)/subtrator.vhd
	$(VC) -a $(FLAGS) $(SRC)/subtrator.vhd

fibonacci_datapath.o: $(SRC)/fibonacci_datapath.vhd igual.o multiplexor2a1.o reg.o somador.o subtrator.o
	$(VC) -a $(FLAGS) $(SRC)/fibonacci_datapath.vhd

fibonacci_pc.o: $(SRC)/fibonacci_pc.vhd
	$(VC) -a $(FLAGS) $(SRC)/fibonacci_pc.vhd

fibonacci.o: $(SRC)/fibonacci.vhd fibonacci_datapath.o fibonacci_pc.o
	$(VC) -a $(FLAGS) $(SRC)/fibonacci.vhd