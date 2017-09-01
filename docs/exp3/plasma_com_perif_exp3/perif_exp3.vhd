----------------------------------------------------------------------------------
--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY perif_exp3 IS
	GENERIC (longbits: natural:=32);
	PORT( SIGNAL clock	 		:  IN STD_LOGIC;
		  SIGNAL reset	 		:  IN STD_LOGIC;
		  SIGNAL ext			:  IN STD_LOGIC;
		  SIGNAL w_e			:  IN STD_LOGIC;	  
		  SIGNAL r_e			:  IN STD_LOGIC;
		  SIGNAL irq 			: OUT STD_LOGIC;		
		  SIGNAL data_in_ext	:  IN STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);
	   	  SIGNAL data_out_ext	: OUT STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);
		  SIGNAL data_in_mlite	:  IN STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);
	   	  SIGNAL data_out_mlite	: OUT STD_LOGIC_VECTOR(longbits-1 DOWNTO 0));
END perif_exp3;

ARCHITECTURE behavior OF perif_exp3 IS

	COMPONENT decopriori IS
		PORT( SIGNAL ext_in		:  IN STD_LOGIC;  
			  SIGNAL w_e_in		:  IN STD_LOGIC;
			  SIGNAL r_e_in		:  IN STD_LOGIC;
			  SIGNAL ext_out	: OUT STD_LOGIC;
			  SIGNAL w_e_out	: OUT STD_LOGIC;
			  SIGNAL r_e_out	: OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT fsm IS
		PORT( SIGNAL	clock	:  IN STD_LOGIC;
			  SIGNAL	reset	:  IN STD_LOGIC;
			  SIGNAL	ext		:  IN STD_LOGIC;
			  SIGNAL	w_e		:  IN STD_LOGIC;
			  SIGNAL	r_e		:  IN STD_LOGIC;
			  SIGNAL 	lx		: OUT STD_LOGIC;
			  SIGNAL 	ly		: OUT STD_LOGIC;
			  SIGNAL	irq 	: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT reg_gen IS
		GENERIC (longbits: natural:=4);
		PORT (	SIGNAL reset	: IN STD_LOGIC;
				SIGNAL clock	: IN STD_LOGIC;
				SIGNAL en		: IN STD_LOGIC;
				SIGNAL d		: IN STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);
				SIGNAL q		: OUT STD_LOGIC_VECTOR(longbits-1 DOWNTO 0));
	END COMPONENT;


	--CONSTANTS

	---SIGNALS
	SIGNAL 	lx		: STD_LOGIC;
	SIGNAL 	ly		: STD_LOGIC;
	SIGNAL ext_out	: STD_LOGIC;
	SIGNAL w_e_out	: STD_LOGIC;
	SIGNAL r_e_out	: STD_LOGIC;
	SIGNAL data_in_mlite_tmp	:  STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);

BEGIN

	u0: decopriori PORT MAP(
			  ext_in	=> ext,  
			  w_e_in	=> w_e,
			  r_e_in	=> r_e,
			  ext_out	=> ext_out,
			  w_e_out	=> w_e_out,
			  r_e_out	=> r_e_out);

	u1: fsm PORT MAP (
			  clock	=>	clock,
			  reset	=>	reset,
			  ext	=>  ext_out,
			  w_e	=>	w_e_out,
			  r_e	=>	r_e_out,
			  lx	=>	lx,
			  ly	=>	ly,
			  irq 	=>	irq);

	u2: reg_gen 
		GENERIC MAP (longbits => longbits)
		PORT MAP(	reset	=> reset,
					clock	=> clock,
					en		=> lx,
					d		=> data_in_ext,
					q		=> data_out_mlite);

	u3: reg_gen 
		GENERIC MAP (longbits => longbits)
		PORT MAP(	reset	=> reset,
					clock	=> clock,
					en		=> w_e,
					d		=> data_in_mlite,
					q		=> data_in_mlite_tmp);

	u4: reg_gen 
		GENERIC MAP (longbits => longbits)
		PORT MAP(	reset	=> reset,
					clock	=> clock,
					en		=> ly,
					d		=> data_in_mlite_tmp,
					q		=> data_out_ext);


END behavior;
