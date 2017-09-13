# Makefile

# Compiler
VC = ghdl

SRC = src

FLAGS = --ieee=mentor

# Goals
.DEFAULT_GOAL := fibonacci

igual: $(SRC)/igual.vhd
	$(VC) -a $(FLAGS) $(SRC)/igual.vhd

multiplexor2a1: $(SRC)/multiplexor2a1.vhd
	$(VC) -a $(FLAGS) $(SRC)/multiplexor2a1.vhd

reg: $(SRC)/reg.vhd
	$(VC) -a $(FLAGS) $(SRC)/reg.vhd

somador: $(SRC)/somador.vhd
	$(VC) -a $(FLAGS) $(SRC)/somador.vhd

subtrator: $(SRC)/subtrator.vhd
	$(VC) -a $(FLAGS) $(SRC)/subtrator.vhd

fibonacci_datapath: $(SRC)/fibonacci_datapath.vhd igual multiplexor2a1 reg somador subtrator
	$(VC) -a $(FLAGS) $(SRC)/fibonacci_datapath.vhd

fibonacci_pc: $(SRC)/fibonacci_pc.vhd
	$(VC) -a $(FLAGS) $(SRC)/fibonacci_pc.vhd

fibonacci: $(SRC)/fibonacci.vhd fibonacci_datapath fibonacci_pc
	$(VC) -a $(FLAGS) $(SRC)/fibonacci.vhd

clean:
	rm -f *.cf