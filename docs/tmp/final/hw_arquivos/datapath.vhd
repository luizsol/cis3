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

ENTITY datapath IS 
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
END datapath;

ARCHITECTURE behavior OF datapath IS

	COMPONENT somador_gen
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT (	SIGNAL x	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL y	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL XY	: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT reg_gen
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT( SIGNAL rst :  IN STD_LOGIC;
			  SIGNAL clk :  IN STD_LOGIC;
			  SIGNAL en  :  IN STD_LOGIC;
			  SIGNAL d	 :  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
			  SIGNAL q   : OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT multiplexor2a1_gen
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT (	SIGNAL a	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL b	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL sel	:  IN STD_LOGIC;
				SIGNAL f	: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT minor_igual_gen
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT (	SIGNAL a	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL b	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL let	: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT minor_gen
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT (	SIGNAL a	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL b	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL lt	: OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT comparador_gen
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT (	SIGNAL a	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL b	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL eq	: OUT STD_LOGIC);
	END COMPONENT;	

	CONSTANT dois	: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(2,data_in'LENGTH);
	CONSTANT uno	: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(1,data_in'LENGTH);
	CONSTANT zero 	: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(0,data_in'LENGTH);

	SIGNAL fibonacci			: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);	
	SIGNAL sal_mux_ant1			: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
	SIGNAL ant1					: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
	SIGNAL sal_mux_ant2			: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
	SIGNAL ant2					: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
	SIGNAL suma1				: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
	SIGNAL sal_mux_n_fibonacci	: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
	SIGNAL data_in_tmp			: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
	SIGNAL suma2				: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
	SIGNAL sal_mux_n			: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
	SIGNAL n					: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
	SIGNAL data_o_tmp			: STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);

BEGIN

	mux1: multiplexor2a1_gen GENERIC MAP(
							NUMBITS => NUMBITS)	
					PORT MAP ( 
						a	=> uno,
						b	=> fibonacci,
						sel	=> sel_n_ant1,
						f	=> sal_mux_ant1);
					
	reg1: reg_gen GENERIC MAP(
				NUMBITS => NUMBITS)	
			  PORT MAP ( 
				  rst => rst,
				  clk => clk,
				  en  => n_ant1_ld,
				  d	  => sal_mux_ant1,
				  q   => ant1);

	mux2: multiplexor2a1_gen GENERIC MAP(
							NUMBITS => NUMBITS)	
					PORT MAP ( 
						a	=> zero,
						b	=> ant1,
						sel	=> sel_n_ant2,
						f	=> sal_mux_ant2);
	
	reg2: reg_gen GENERIC MAP(
				NUMBITS => NUMBITS)	
			  PORT MAP (
				  rst => rst,
				  clk => clk,
				  en  => n_ant2_ld,
				  d	  => sal_mux_ant2,
				  q   => ant2);
			  
	som1: somador_gen GENERIC MAP(
					NUMBITS => NUMBITS)	
			PORT MAP (
				x	=> ant1,
				y	=> ant2,
				XY	=> suma1);

	mux3: multiplexor2a1_gen GENERIC MAP(
							NUMBITS => NUMBITS)	
					PORT MAP ( 
						a	=> zero,
						b	=> suma1,
						sel	=> sel_n_fibonacci,
						f	=> sal_mux_n_fibonacci);

	reg3: reg_gen GENERIC MAP(
				NUMBITS => NUMBITS)	
			  PORT MAP (
				  rst => rst,
				  clk => clk,
				  en  => n_fibonacci_ld,
				  d	  => sal_mux_n_fibonacci,
				  q   => fibonacci);			

	reg4: reg_gen GENERIC MAP(
				NUMBITS => NUMBITS)	
			  PORT MAP (
				  rst => rst,
				  clk => clk,
				  en  => n_max_ld,
				  d	  => data_in,
				  q   => data_in_tmp);	

	mineq: minor_igual_gen GENERIC MAP(
						NUMBITS => NUMBITS)	
				PORT MAP (
					a	=> n,
					b	=> data_in_tmp,
					let	=> n_let_max);
				
	min2: minor_gen GENERIC MAP(
					NUMBITS => NUMBITS)	
		    PORT MAP (	
				a	=> n,
				b	=> dois,
				lt	=> n_minor_2);

	eq1: comparador_gen GENERIC MAP(
						NUMBITS => NUMBITS)	
			PORT MAP (	
				a	=> n,
				b	=> uno,
				eq	=> n_eq_1);

	mux4: multiplexor2a1_gen GENERIC MAP(
							NUMBITS => NUMBITS)	
					PORT MAP ( 
						a	=> zero,
						b	=> suma2,
						sel	=> sel_n,
						f	=> sal_mux_n);

	reg5: reg_gen GENERIC MAP(
				NUMBITS => NUMBITS)	
			  PORT MAP (
				  rst => rst,
				  clk => clk,
				  en  => n_ld,
				  d	  => sal_mux_n,
				  q   => n);	
				  
	som2: somador_gen GENERIC MAP(
					NUMBITS => NUMBITS)	
			PORT MAP (
				x	=> n,
				y	=> uno,
				XY	=> suma2);

	mux5: multiplexor2a1_gen GENERIC MAP(
							NUMBITS => NUMBITS)	
					PORT MAP ( 
						a	=> zero,
						b	=> fibonacci,
						sel	=> sel_data_o,
						f	=> data_o_tmp);

	reg6: reg_gen GENERIC MAP(
				NUMBITS => NUMBITS)	
			  PORT MAP (
				  rst => rst,
				  clk => clk,
				  en  => data_o_ld,
				  d	  => data_o_tmp,
				  q   => data_o);

END behavior;

