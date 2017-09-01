--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY hexa IS
	PORT ( a: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	       f: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END hexa;

ARCHITECTURE visualizador OF hexa IS

	SIGNAL f_temp : STD_LOGIC_VECTOR(6 DOWNTO 0);

BEGIN	

	M1: FOR i IN 0 TO f'HIGH GENERATE
		f(i) <= f_temp(f'HIGH-i);
	END GENERATE;


	M2: PROCESS(a)
	BEGIN
		case (a) is
 			when "0000" => f_temp <= "0000001";
 			when "0001" => f_temp <= "1001111";
 			when "0010" => f_temp <= "0010010";
 			when "0011" => f_temp <= "0000110";
 			when "0100" => f_temp <= "1001100";
 			when "0101" => f_temp <= "0100100";
 			when "0110" => f_temp <= "0100000";
 			when "0111" => f_temp <= "0001111";
 			when "1000" => f_temp <= "0000000";
 			when "1001" => f_temp <= "0000100";
 			when "1010" => f_temp <= "0001000";
 			when "1011" => f_temp <= "1100000";
 			when "1100" => f_temp <= "0110001";
 			when "1101" => f_temp <= "1000010";
 			when "1110" => f_temp <= "0110000";
 			when "1111" => f_temp <= "0111000";
 			when OTHERS => f_temp <= "-------";
		end case;
	end process M2;

END visualizador;

