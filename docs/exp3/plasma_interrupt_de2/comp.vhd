----------------------------------------------------------------------------------
--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY comp IS
	GENERIC (longbits: natural:=4);
	PORT (	SIGNAL a		: IN STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);
		    SIGNAL b		: IN STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);
		    SIGNAL q		: OUT STD_LOGIC);
END comp;

ARCHITECTURE behavior OF comp IS

BEGIN

	q <= '1' WHEN (a=b) ELSE
		 '0';

END behavior;