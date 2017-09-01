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

ENTITY fsm_fibonacci IS
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
END fsm_fibonacci;


ARCHITECTURE behavior OF fsm_fibonacci IS

	-- Build an enumerated type for the state machine
	--TYPE state_type IS (est0,est1,est2,est3,est4,est5,est6,est7,est8,est9,est10,est11,est12,est13,est14,est15,est16,est17,est18,est19,est20,est21,est22,est23,est24,est25,est26,est27,est28,est29,est30);
	TYPE state_type IS (est0n,est4,est5,est6n,est12,est13,est14,est15,est16,est17,est18,est19,est22,est23n,est27,est28);
	-- Register to hold the current state
	SIGNAL state, next_state : state_type;
	
	-- Attribute "safe" implements a safe state machine.
	-- This is a state machine that can recover from an
	-- illegal state (by returning to the reset state).
	attribute syn_encoding : string;
	attribute syn_encoding of state_type : type is "safe";

BEGIN

	SEQ: PROCESS (clk, rst)
	BEGIN
		IF (rst = '1') THEN 
			state <= est0n;
		ELSIF (rising_edge(clk)) THEN
			state <= next_state;
		END IF;
	END PROCESS SEQ;

	COMB: PROCESS (state,go_i,n_let_max,n_minor_2,n_eq_1,data_accepted_i)	
	BEGIN		
		CASE state IS
			WHEN est0n=>
				next_state <= est4;
			WHEN est4=>
				IF (go_i = '1') THEN
					next_state <= est6n;
				ELSE
					next_state <= est5;
				END IF;	
			WHEN est5=>	
				next_state <= est4;	
			WHEN est6n=>
				next_state <= est12;
			WHEN est12=>
				IF (n_let_max = '1') THEN
					next_state <= est13;
				ELSE
					next_state <= est23n;
				END IF;	
			WHEN est13=>
				IF (n_minor_2 = '1') THEN
					next_state <= est17;
				ELSE
					next_state <= est14;
				END IF;		
			WHEN est14=>
				next_state <= est15;
			WHEN est15=>
				next_state <= est16;
			WHEN est16=>
				next_state <= est22;
			WHEN est17=>
				IF (n_eq_1 = '1') THEN
					next_state <= est18;
				ELSE
					next_state <= est19;
				END IF;
			WHEN est18=>
				next_state <= est22;				
			WHEN est19=>
				next_state <= est22;
			WHEN est22=>
				next_state <= est12;
			WHEN est23n=>
				next_state <= est27;								
			WHEN est27=>
				IF (data_accepted_i = '1') THEN
					next_state <= est0n;	
				ELSE
					next_state <= est28;
				END IF;	
			WHEN est28=>
				next_state <= est27;						
			END CASE;
	END PROCESS COMB;

	SAI: PROCESS (state)
	BEGIN		
		CASE state IS
			WHEN est0n=>
				n_ant1_ld			<= '0';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '0';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '0';
				sel_n_fibonacci		<= '0';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '0';
				n_ld				<= '0';
				sel_n				<= '0';
				status_o			<= "00";
				data_available_o	<= '0';		
			WHEN est4=>	
				n_ant1_ld			<= '0';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '0';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '0';
				sel_n_fibonacci		<= '0';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '0';
				n_ld				<= '0';
				sel_n				<= '0';
				status_o			<= "00";
				data_available_o	<= '0';
			WHEN est5=>
				n_ant1_ld			<= '0';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '0';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '0';
				sel_n_fibonacci		<= '0';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '0';
				n_ld				<= '0';
				sel_n				<= '0';
				status_o			<= "00";
				data_available_o	<= '0';
			WHEN est6n=>	
				n_ant1_ld			<= '1';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '1';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '1';
				sel_n_fibonacci		<= '0';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '1';
				n_ld				<= '1';
				sel_n				<= '0';
				status_o			<= "01";
				data_available_o	<= '0';
			WHEN est12=>
				n_ant1_ld			<= '0';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '0';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '0';
				sel_n_fibonacci		<= '0';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '0';
				n_ld				<= '0';
				sel_n				<= '0';
				status_o			<= "01";
				data_available_o	<= '0';
			WHEN est13=>
				n_ant1_ld			<= '0';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '0';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '0';
				sel_n_fibonacci		<= '0';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '0';
				n_ld				<= '0';
				sel_n				<= '0';
				status_o			<= "01";
				data_available_o	<= '0';
			WHEN est14=>
				n_ant1_ld			<= '0';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '0';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '1';
				sel_n_fibonacci		<= '1';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '0';
				n_ld				<= '0';
				sel_n				<= '0';
				status_o			<= "01";
				data_available_o	<= '0';
			WHEN est15=>
				n_ant1_ld			<= '0';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '1';
				sel_n_ant2			<= '1';
				n_fibonacci_ld		<= '0';
				sel_n_fibonacci		<= '0';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '0';
				n_ld				<= '0';
				sel_n				<= '0';
				status_o			<= "01";
				data_available_o	<= '0';
			WHEN est16=>
				n_ant1_ld			<= '1';
				sel_n_ant1			<= '1';
				n_ant2_ld			<= '0';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '0';
				sel_n_fibonacci		<= '0';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '0';
				n_ld				<= '0';
				sel_n				<= '0';
				status_o			<= "01";
				data_available_o	<= '0';	
			WHEN est17=>
				n_ant1_ld			<= '0';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '0';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '0';
				sel_n_fibonacci		<= '0';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '0';
				n_ld				<= '0';
				sel_n				<= '0';
				status_o			<= "01";
				data_available_o	<= '0';
			WHEN est18=>
				n_ant1_ld			<= '0';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '0';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '1';
				sel_n_fibonacci		<= '1';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '0';
				n_ld				<= '0';
				sel_n				<= '0';
				status_o			<= "01";
				data_available_o	<= '0';
			WHEN est19 =>
				n_ant1_ld			<= '0';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '0';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '1';
				sel_n_fibonacci		<= '0';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '0';
				n_ld				<= '0';
				sel_n				<= '0';
				status_o			<= "01";
				data_available_o	<= '0';				
			WHEN est22=>
				n_ant1_ld			<= '0';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '0';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '0';
				sel_n_fibonacci		<= '0';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '0';
				n_ld				<= '1';
				sel_n				<= '1';
				status_o			<= "01";
				data_available_o	<= '0';				
			WHEN est23n=>
				n_ant1_ld			<= '0';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '0';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '0';
				sel_n_fibonacci		<= '0';
				data_o_ld			<= '1';
				sel_data_o			<= '1';	
				n_max_ld			<= '0';
				n_ld				<= '0';
				sel_n				<= '0';
				status_o			<= "01"; --aun no está disponible
				data_available_o	<= '0'; --aun no está disponible
			WHEN est27=>
				n_ant1_ld			<= '0';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '0';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '0';
				sel_n_fibonacci		<= '0';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '0';
				n_ld				<= '0';
				sel_n				<= '0';
				status_o			<= "10";
				data_available_o	<= '1';
			WHEN est28=>
				n_ant1_ld			<= '0';
				sel_n_ant1			<= '0';
				n_ant2_ld			<= '0';
				sel_n_ant2			<= '0';
				n_fibonacci_ld		<= '0';
				sel_n_fibonacci		<= '0';
				data_o_ld			<= '0';
				sel_data_o			<= '0';	
				n_max_ld			<= '0';
				n_ld				<= '0';
				sel_n				<= '0';
				status_o			<= "10";
				data_available_o	<= '1';
		END CASE;
	END PROCESS SAI;

END behavior;
