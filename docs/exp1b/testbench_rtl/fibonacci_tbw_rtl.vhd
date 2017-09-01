--Descrição do circuito feito por Mario Raffo (11)
-- Jorge Gonzalez (12)
-- Bruno C (16)

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.NUMERIC_STD.ALL;

ENTITY fibonacci_tbw IS
			
END fibonacci_tbw;

ARCHITECTURE behavior OF fibonacci_tbw IS

	CONSTANT NUMBITS : NATURAL := 32;

	COMPONENT estimulos
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT (	SIGNAL rst				: OUT STD_LOGIC;
				SIGNAL clk				: OUT STD_LOGIC;
				SIGNAL write_enable				: OUT STD_LOGIC;
				SIGNAL data_to_module			: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL read_enable	: OUT STD_LOGIC;
--                              SIGNAL data_from_module			: IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL status_module			:  IN STD_LOGIC_VECTOR(1 DOWNTO 0);		
				SIGNAL irq	:  IN STD_LOGIC);
	END COMPONENT;


	COMPONENT fibonacci
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT (	SIGNAL rst				:  IN STD_LOGIC;
				SIGNAL clk				:  IN STD_LOGIC;
				SIGNAL write_enable_i				:  IN STD_LOGIC;
				SIGNAL data_in			:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL read_enable_i	:  IN STD_LOGIC;
				SIGNAL data_o			: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL status_o			: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);		
				SIGNAL irq_o	: OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL rst 				: STD_LOGIC := '0';
	SIGNAL clk 				: STD_LOGIC := '0';
	SIGNAL write_enable				: STD_LOGIC := '0';
	SIGNAL data_to_fibonacci			: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0):=(OTHERS => '0');
	SIGNAL read_enable	: STD_LOGIC :='0';	
	SIGNAL data_from_fibonacci			: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0):=(OTHERS => '0');	
	SIGNAL status			: STD_LOGIC_VECTOR(1 DOWNTO 0);		
	SIGNAL irq	: STD_LOGIC;


	
BEGIN

	fibo: fibonacci GENERIC MAP (
						NUMBITS => NUMBITS)
					PORT MAP (
						rst					=> rst,
						clk					=> clk,
						write_enable_i				=> write_enable,
						data_in				=> data_to_fibonacci,
						read_enable_i		=> read_enable,	
						data_o				=> data_from_fibonacci,
						status_o			=> status,		
						irq_o	=> irq);

	est: estimulos GENERIC MAP (
						NUMBITS => NUMBITS)
					PORT MAP (
						rst					=> rst, 			
						clk					=> clk, 			
						write_enable				=> write_enable,			
						data_to_module				=> data_to_fibonacci, 
--                                              data_from_module				=> data_from_fibonacci, 
						read_enable		=> read_enable, 			
						status_module			=> status, 		
						irq	=> irq);

END behavior;
