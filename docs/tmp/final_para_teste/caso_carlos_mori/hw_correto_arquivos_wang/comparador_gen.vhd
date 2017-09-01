--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.NUMERIC_STD.ALL;

ENTITY comparador_gen IS
	GENERIC (NUMBITS	: NATURAL := 32);
	PORT (	SIGNAL a	: IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
		    SIGNAL b	: IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
		    SIGNAL eq	: OUT STD_LOGIC);
END comparador_gen;		    

ARCHITECTURE behavior OF comparador_gen IS

BEGIN

	eq <=  '1' when (a = b) else 
		   '0';	

END behavior;
