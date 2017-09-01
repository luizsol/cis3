----------------------------------------------------------------------------------
--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY wrapper1 IS
	PORT( SIGNAL rst 		:  IN STD_LOGIC;
		  SIGNAL clk 		:  IN STD_LOGIC;
		  SIGNAL en			:  IN STD_LOGIC;
		  SIGNAL en_delay	: OUT STD_LOGIC);	
END wrapper1;

ARCHITECTURE behavior OF wrapper1 IS 

	COMPONENT reg
		PORT( SIGNAL rst :  IN STD_LOGIC;
			  SIGNAL clk :  IN STD_LOGIC;
			  SIGNAL en  :  IN STD_LOGIC;
			  SIGNAL d	 :  IN STD_LOGIC;
			  SIGNAL q   : OUT STD_LOGIC);
	END COMPONENT;

	CONSTANT uno	: STD_LOGIC:='1';
	
	SIGNAL temp0	: STD_LOGIC;
	SIGNAL temp1	: STD_LOGIC;	
	
BEGIN

	reg0: reg PORT MAP
			( rst => rst,
			  clk => clk,
			  en  => uno,
			  d	  => en,
			  q   => temp0);

	reg1: reg PORT MAP
			( rst => rst,
			  clk => clk,
			  en  => uno,
			  d	  => temp0,
			  q   => temp1);
			  
	en_delay <= temp0 or temp1;	

END behavior;	