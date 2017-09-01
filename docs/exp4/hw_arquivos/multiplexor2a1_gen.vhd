----------------------------------------------------------------------------------
--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY multiplexor2a1_gen IS
	GENERIC (NUMBITS	: NATURAL := 32);
	PORT (	SIGNAL a	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
		    SIGNAL b	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
			SIGNAL sel	:  IN STD_LOGIC;
		    SIGNAL f	: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0));
END multiplexor2a1_gen;

ARCHITECTURE mux2a1_gen OF multiplexor2a1_gen IS

BEGIN

	WITH sel SELECT

		f <= a WHEN '0',
		     b WHEN OTHERS;

END mux2a1_gen; 
