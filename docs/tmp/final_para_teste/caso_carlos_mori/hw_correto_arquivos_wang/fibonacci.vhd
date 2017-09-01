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

ENTITY fibonacci IS
	GENERIC (NUMBITS	: NATURAL := 32);
	PORT (	SIGNAL rst				:  IN STD_LOGIC;
			SIGNAL clk				:  IN STD_LOGIC;
			SIGNAL go_i				:  IN STD_LOGIC;
			SIGNAL data_in			:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
			SIGNAL data_accepted_i	:  IN STD_LOGIC;	
			SIGNAL data_o			: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
			SIGNAL status_o			: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);		
			SIGNAL data_available_o	: OUT STD_LOGIC);
END fibonacci;

ARCHITECTURE behavior OF fibonacci IS

	COMPONENT fsm_fibonacci
		PORT (	SIGNAL rst					:  IN STD_LOGIC;
				SIGNAL clk					:  IN STD_LOGIC;
				SIGNAL go_i					:  IN STD_LOGIC;
				SIGNAL n_let_max			:  IN STD_LOGIC;
				SIGNAL n_minor_2			:  IN STD_LOGIC;
				SIGNAL n_eq_1				:  IN STD_LOGIC;
				SIGNAL n_ant1_ld			: OUT STD_LOGIC;
				SIGNAL sel_n_ant1			: OUT STD_LOGIC;
				SIGNAL n_ant2_ld			: OUT STD_LOGIC;
				SIGNAL sel_n_ant2			: OUT STD_LOGIC;
				SIGNAL n_fibonacci_ld		: OUT STD_LOGIC;
				SIGNAL sel_n_fibonacci		: OUT STD_LOGIC;
				SIGNAL data_o_ld			: OUT STD_LOGIC;
				SIGNAL sel_data_o			: OUT STD_LOGIC;
				SIGNAL n_max_ld				: OUT STD_LOGIC;
				SIGNAL n_ld					: OUT STD_LOGIC;
				SIGNAL sel_n				: OUT STD_LOGIC;
				SIGNAL data_accepted_i		:  IN STD_LOGIC;
				SIGNAL status_o				: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
				SIGNAL data_available_o		: OUT STD_LOGIC);
	END COMPONENT;	
	
	COMPONENT datapath
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT (	SIGNAL rst				:  IN STD_LOGIC;
				SIGNAL clk				:  IN STD_LOGIC;
				SIGNAL data_in			:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL n_ant1_ld		:  IN STD_LOGIC;
				SIGNAL sel_n_ant1		:  IN STD_LOGIC;
				SIGNAL n_ant2_ld		:  IN STD_LOGIC;
				SIGNAL sel_n_ant2		:  IN STD_LOGIC;
				SIGNAL n_fibonacci_ld	:  IN STD_LOGIC;
				SIGNAL sel_n_fibonacci	:  IN STD_LOGIC;
				SIGNAL n_ld				:  IN STD_LOGIC;
				SIGNAL sel_n			:  IN STD_LOGIC;
				SIGNAL data_o_ld		:  IN STD_LOGIC;
				SIGNAL sel_data_o		:  IN STD_LOGIC;
				SIGNAL n_max_ld			:  IN STD_LOGIC;
				SIGNAL n_let_max		: OUT STD_LOGIC;
				SIGNAL n_minor_2		: OUT STD_LOGIC;
				SIGNAL n_eq_1			: OUT STD_LOGIC;
				SIGNAL data_o			: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0));
	END COMPONENT;

	SIGNAL n_let_max		: STD_LOGIC;
	SIGNAL n_minor_2		: STD_LOGIC;
	SIGNAL n_eq_1			: STD_LOGIC;
	SIGNAL n_ant1_ld		: STD_LOGIC;
	SIGNAL sel_n_ant1		: STD_LOGIC;
	SIGNAL n_ant2_ld		: STD_LOGIC;
	SIGNAL sel_n_ant2		: STD_LOGIC;
	SIGNAL n_fibonacci_ld	: STD_LOGIC;
	SIGNAL sel_n_fibonacci	: STD_LOGIC;
	SIGNAL n_ld				: STD_LOGIC;
	SIGNAL sel_n			: STD_LOGIC;
	SIGNAL data_o_ld		: STD_LOGIC;
	SIGNAL sel_data_o		: STD_LOGIC;
	SIGNAL n_max_ld			: STD_LOGIC;
	
BEGIN

	u0: fsm_fibonacci PORT MAP(
				rst					=> rst,
				clk					=> clk,
				go_i				=> go_i,
				n_let_max			=> n_let_max,
				n_minor_2			=> n_minor_2,
				n_eq_1				=> n_eq_1,
				n_ant1_ld			=> n_ant1_ld,
				sel_n_ant1			=> sel_n_ant1,
				n_ant2_ld			=> n_ant2_ld,
				sel_n_ant2			=> sel_n_ant2,
				n_fibonacci_ld		=> n_fibonacci_ld,
				sel_n_fibonacci		=> sel_n_fibonacci,
				data_o_ld			=> data_o_ld,
				sel_data_o			=> sel_data_o,
				n_max_ld			=> n_max_ld,
				n_ld				=> n_ld,
				sel_n				=> sel_n,
				data_accepted_i		=> data_accepted_i,
				status_o			=> status_o,		
				data_available_o	=> data_available_o);	
	
	u1: datapath GENERIC MAP (
					NUMBITS => NUMBITS)
				PORT MAP (
					rst				=> rst,
					clk				=> clk,
					data_in			=> data_in,
					n_ant1_ld		=> n_ant1_ld,
					sel_n_ant1		=> sel_n_ant1,
					n_ant2_ld		=> n_ant2_ld,
					sel_n_ant2		=> sel_n_ant2,
					n_fibonacci_ld	=> n_fibonacci_ld,
					sel_n_fibonacci	=> sel_n_fibonacci,
					n_ld			=> n_ld,
					sel_n			=> sel_n,
					data_o_ld		=> data_o_ld,
					sel_data_o		=> sel_data_o,
					n_max_ld		=> n_max_ld,
					n_let_max		=> n_let_max,
					n_minor_2		=> n_minor_2,
					n_eq_1			=> n_eq_1,
					data_o			=> data_o);

END behavior;
