----------------------------------------------------------------------------------
--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY multiplexor2a1gen IS
	GENERIC (longbits: natural:=4);
	PORT (	SIGNAL a	: IN STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);
			SIGNAL b	: IN STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);
			SIGNAL sel	: IN STD_LOGIC;
		    SIGNAL f	: OUT STD_LOGIC_VECTOR(longbits-1 DOWNTO 0));
END multiplexor2a1gen;

ARCHITECTURE mux2a1 OF multiplexor2a1gen IS

BEGIN

	WITH sel SELECT

		f <= a WHEN '0',
		     b WHEN OTHERS;		

END mux2a1; 
