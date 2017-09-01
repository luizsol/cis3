----------------------------------------------------------------------------------
--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decopriori IS
	PORT( SIGNAL w_e_in		:  IN STD_LOGIC;
		  SIGNAL r_e_in		:  IN STD_LOGIC;
		  SIGNAL w_e_out	: OUT STD_LOGIC;
		  SIGNAL r_e_out	: OUT STD_LOGIC);
END decopriori;

ARCHITECTURE behavior OF decopriori IS

	SIGNAL temp : STD_LOGIC_VECTOR (1 DOWNTO 0);

BEGIN

	temp <= "10" WHEN (w_e_in = '1') ELSE
			"01" WHEN (r_e_in = '1') ELSE
			"00";
	w_e_out <= temp(1);
	r_e_out <= temp(0);

			
END behavior;		