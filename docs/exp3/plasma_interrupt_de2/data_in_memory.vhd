----------------------------------------------------------------------------------
--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.numeric_std.all;

ENTITY data_in_memory IS
	GENERIC (longbitsaddress: natural:=32;
			 longbitsdados: natural:=32;
			 endfixo :	STD_LOGIC_VECTOR (31 DOWNTO 0) :=x"0000FFE0");
	PORT (	SIGNAL reset	:  IN STD_LOGIC;
			SIGNAL clock	:  IN STD_LOGIC;
			SIGNAL wr		:  IN STD_LOGIC;
			SIGNAL endereco :  IN STD_LOGIC_VECTOR (longbitsaddress-1 DOWNTO 0);
			SIGNAL dado 	:  IN STD_LOGIC_VECTOR (longbitsdados-1 DOWNTO 0);
			SIGNAL saida	: OUT STD_LOGIC_VECTOR (longbitsdados-1 DOWNTO 0));
END data_in_memory;


ARCHITECTURE behavior OF data_in_memory IS

	COMPONENT reg_gen IS
		GENERIC (longbits: natural:=4);
		PORT (	SIGNAL reset	: IN STD_LOGIC;
				SIGNAL clock	: IN STD_LOGIC;
				SIGNAL en		: IN STD_LOGIC;
				SIGNAL d		: IN STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);
				SIGNAL q		: OUT STD_LOGIC_VECTOR(longbits-1 DOWNTO 0));
	END COMPONENT;	
	
	COMPONENT comp IS
		GENERIC (longbits: natural:=4);
		PORT (	SIGNAL a		: IN STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);
				SIGNAL b		: IN STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);
				SIGNAL q		: OUT STD_LOGIC);
	END COMPONENT;

	SIGNAL valorcomp :	STD_LOGIC_VECTOR(longbitsaddress-1 DOWNTO 0);
	SIGNAL en_tmp 		:	STD_LOGIC; 
	SIGNAL en	 		:	STD_LOGIC;
	
BEGIN

	u0: comp  GENERIC MAP (longbits => longbitsaddress)
				 PORT MAP ( a => endereco,
							b => endfixo,
							q => en_tmp);
	en <= en_tmp and wr;
	
	u1: reg_gen 
		GENERIC MAP (longbits => longbitsdados)
		PORT MAP (	reset	=> reset,
					clock	=> clock,
					en		=> en,
					d		=> dado,
					q		=> saida);
			 
 
END behavior;
