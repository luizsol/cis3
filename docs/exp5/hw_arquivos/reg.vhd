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

ENTITY reg IS
	PORT( SIGNAL rst :  IN STD_LOGIC;
		  SIGNAL clk :  IN STD_LOGIC;
		  SIGNAL en  :  IN STD_LOGIC;
		  SIGNAL d	 :  IN STD_LOGIC;
		  SIGNAL q   : OUT STD_LOGIC);
END reg;

ARCHITECTURE behavior OF reg IS

BEGIN

	PROCESS (rst,clk,en)
	BEGIN
		IF (rst = '1') THEN
			q <= '0';
		ELSIF Rising_Edge(clk) THEN
			IF (en = '1') THEN
				q <= d;
			END IF;
		END IF;
	END PROCESS;

END behavior;

