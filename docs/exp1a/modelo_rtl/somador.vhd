----------------------------------------------------------------------------------
--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY somador IS
	GENERIC (NUMBITS	: NATURAL := 32);
	PORT (	SIGNAL x	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
			SIGNAL y	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
			SIGNAL XY	: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0));
END somador;

architecture Behavioral of somador is

	SIGNAL xy_temp	: STD_LOGIC_VECTOR(NUMBITS DOWNTO 0);

begin
	
	xy_temp <= ('0'&x) + ('0'&y);
	xy <= xy_temp(NUMBITS-1 DOWNTO 0);

end Behavioral;

