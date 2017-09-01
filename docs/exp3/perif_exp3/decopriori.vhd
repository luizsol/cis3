--------------------------------------------------------------------------------
--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decopriori IS
	PORT( SIGNAL ext_in		:  IN STD_LOGIC;  
		  SIGNAL w_e_in		:  IN STD_LOGIC;
		  SIGNAL r_e_in		:  IN STD_LOGIC;
		  SIGNAL ext_out	: OUT STD_LOGIC;
		  SIGNAL w_e_out	: OUT STD_LOGIC;
		  SIGNAL r_e_out	: OUT STD_LOGIC);
END decopriori;

ARCHITECTURE behavior OF decopriori IS

	SIGNAL temp : STD_LOGIC_VECTOR (2 DOWNTO 0);

BEGIN

	temp <= "100" WHEN (ext_in = '1') ELSE
			"010" WHEN (r_e_in = '1') ELSE
			"001" WHEN (w_e_in = '1') ELSE
			"000";
	ext_out <= temp(2);
	r_e_out <= temp(1);
	w_e_out <= temp(0);

			
END behavior;		