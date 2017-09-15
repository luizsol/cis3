--Descrição do circuito 
--Feito por Mario Raffo 2011
--Modificado WJC 2012

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.NUMERIC_STD.ALL;

ENTITY fibonacci_tbw IS
			
END fibonacci_tbw;

ARCHITECTURE behavior OF fibonacci_tbw IS

	COMPONENT estimulos IS
		PORT (	SIGNAL write_enable		: OUT STD_LOGIC;
				SIGNAL data_to_module		: OUT NATURAL;
				SIGNAL read_enable		: OUT STD_LOGIC;	
				SIGNAL data_from_module		:  IN NATURAL;
				SIGNAL status_module		:  IN STD_LOGIC_VECTOR(1 DOWNTO 0);		
				SIGNAL irq				:  IN STD_LOGIC);			
	END COMPONENT;

	COMPONENT fibonacci IS
		PORT (	SIGNAL write_enable_i		:  IN STD_LOGIC;
				SIGNAL data_in			:  IN NATURAL;
				SIGNAL read_enable_i   		:  IN STD_LOGIC;	
				SIGNAL data_o   			: OUT NATURAL;
				SIGNAL status_o			: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);		
				SIGNAL irq_o	  		: OUT STD_LOGIC);
	END COMPONENT;

	SIGNAL write_enable		: STD_LOGIC;
	SIGNAL data_to_fibonacci	: NATURAL;
	SIGNAL read_enable		: STD_LOGIC;	
	SIGNAL data_from_fibonacci	: NATURAL;	
	SIGNAL status			: STD_LOGIC_VECTOR(1 DOWNTO 0);		
	SIGNAL irq				: STD_LOGIC;		

BEGIN

	fibo: fibonacci PORT MAP (
			write_enable_i	=> write_enable,
			data_in		=> data_to_fibonacci,
			read_enable_i   	=> read_enable,	
			data_o		=> data_from_fibonacci,
			status_o		=> status,		
			irq_o	 		=> irq);

	est: estimulos PORT MAP (
			write_enable	=> write_enable,
			data_to_module	=> data_to_fibonacci,
			read_enable		=> read_enable,	
			data_from_module	=> data_from_fibonacci,
			status_module		=> status,		
			irq	 		=> irq);

END behavior;
	