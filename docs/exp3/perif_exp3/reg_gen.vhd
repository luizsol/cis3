----------------------------------------------------------------------------------
--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY reg_gen IS
	GENERIC (longbits: natural:=4);
	PORT (	SIGNAL reset	: IN STD_LOGIC;
			SIGNAL clock	: IN STD_LOGIC;
			SIGNAL en		: IN STD_LOGIC;
			SIGNAL d		: IN STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);
		    SIGNAL q		: OUT STD_LOGIC_VECTOR(longbits-1 DOWNTO 0));
END reg_gen;

ARCHITECTURE reg OF reg_gen IS

BEGIN

	PROCESS (reset, clock)
	BEGIN
		IF (reset='1') THEN
			q <= (OTHERS=>'0');
		ELSIF Rising_Edge(clock) THEN
			IF (en='1') THEN
				q <= d;
			END IF;
		END IF;
	END PROCESS;

END reg; 