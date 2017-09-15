--Descrição do circuito 
--Feito por Mario Raffo 2011
--Modificado WJC 2012


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.NUMERIC_STD.ALL;

ENTITY estimulos IS
PORT (	SIGNAL write_enable		: OUT STD_LOGIC;
		SIGNAL data_to_module		: OUT NATURAL;
		SIGNAL read_enable		: OUT STD_LOGIC;	
		SIGNAL data_from_module	:  IN NATURAL;
		SIGNAL status_module		:  IN STD_LOGIC_VECTOR(1 DOWNTO 0);		
			SIGNAL irq			:  IN STD_LOGIC);
END estimulos;

ARCHITECTURE behavior OF estimulos IS
	
	CONSTANT PERIOD : TIME := 10 ns;
 	CONSTANT limite : NATURAL := 21;

BEGIN

  	PROCESS
		VARIABLE j: NATURAL range 0 TO limite+1 :=0;
	BEGIN
		--PARTE DE INICIALIZACIÓN
		write_enable <= '0';
		data_to_module <= 0;
		read_enable <= '0';	
		j:= 0;
		WAIT FOR 1*PERIOD;
		


		--Fibonacci 1 to LIMITE
		FOR i IN 0 TO limite LOOP
			write_enable <= '1';
			data_to_module <= j;
			WAIT FOR 1*PERIOD;
			write_enable <= '0';
		  	WAIT FOR 1*PERIOD;
			j:= j+1;
			WHILE (irq /= '1') LOOP
			   WAIT FOR 1*PERIOD;
			END LOOP;		
			read_enable  <= '1';
			WAIT FOR 1*PERIOD;
			read_enable  <= '0';
			WAIT FOR 1*PERIOD;
		END LOOP;
	
	WAIT;	

	END PROCESS;	

END behavior;
