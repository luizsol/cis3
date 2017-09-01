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

ENTITY wrapper0 IS
	GENERIC (NUMBITS	: NATURAL := 32);
	PORT( SIGNAL rst 		:  IN STD_LOGIC;
		  SIGNAL clk 		:  IN STD_LOGIC;
		  SIGNAL en  		:  IN STD_LOGIC;
		  SIGNAL data_in	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
		  SIGNAL data_out	: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0));
END wrapper0;

ARCHITECTURE behavior OF wrapper0 IS

	COMPONENT reg_gen IS
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT( SIGNAL rst :  IN STD_LOGIC;
			  SIGNAL clk :  IN STD_LOGIC;
			  SIGNAL en  :  IN STD_LOGIC;
			  SIGNAL d	 :  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
			  SIGNAL q   : OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0));
	END COMPONENT;

BEGIN

	u0: reg_gen 
		GENERIC MAP (NUMBITS	=> NUMBITS)
		PORT MAP( 	rst => rst,
					clk => clk,
					en  => en,
					d	=> data_in,
					q   => data_out);

END behavior;

