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

ENTITY estimulos IS
	GENERIC (NUMBITS	: NATURAL := 32);
	PORT (	SIGNAL rst				: OUT STD_LOGIC;
			SIGNAL clk				: OUT STD_LOGIC;
			SIGNAL write_enable				: OUT STD_LOGIC;
			SIGNAL data_to_module			: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
			SIGNAL read_enable	: OUT STD_LOGIC;	
			SIGNAL status_module			:  IN STD_LOGIC_VECTOR(1 DOWNTO 0);		
			SIGNAL irq	:  IN STD_LOGIC);
END estimulos;

ARCHITECTURE behavior OF estimulos IS

	CONSTANT PERIOD 		: TIME := 10 ns;
	CONSTANT limite			: NATURAL :=60;
	SIGNAL clock 			: STD_LOGIC := '0';

	
BEGIN

	rst <= '1', '0' AFTER 2*PERIOD;
	clock <= NOT (clock) AFTER PERIOD/2;
	clk <= clock;

	PROCESS
		VARIABLE j: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0):=(OTHERS => '0');
	BEGIN
		--PARTE DE INICIALIZACIÓN
		write_enable <= '0';
		data_to_module	<= (OTHERS => '0');
		read_enable <= '0';	
		WAIT FOR 1*PERIOD;


		--Fibonacci 0 to 10
		FOR i IN 0 TO limite LOOP
			write_enable <= '1';
			data_to_module	<= j ;
			WAIT FOR 4*PERIOD;
			write_enable <= '0';
			WAIT UNTIL (irq = '1');
			WAIT FOR 1*PERIOD;
			read_enable  <= '1';
			WAIT FOR 4*PERIOD;
			read_enable  <= '0';
			j:= j+1;

			if (status_module /= "00")then
				WAIT UNTIL (status_module = "00");
			end if;

		END LOOP;
		
		j:= (OTHERS => '0');
		data_to_module	<= j;		
		WAIT;

	END PROCESS;	

END behavior;
