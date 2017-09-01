--Descrição do circuito feito por Mario Raffo (11)
-- Jorge Gonzalez (12)

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.NUMERIC_STD.ALL;


ENTITY <nome_entidade> IS
	GENERIC (NUMBITS	: NATURAL := 32);
	PORT ( 	rst			: IN STD_LOGIC;
			clk 		: IN STD_LOGIC;
			
			entrada0 	: IN <tipo de dado>;
			...
			entradaN 	: IN <tipo de dado>;
			
			saida0 		: OUT <tipo de dado>;
			..
			saidaN 		: OUT <tipo de dado>);
END <nome_entidade>;


ARCHITECTURE behavior OF datapath IS

	COMPONENT somador
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT (	SIGNAL x	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL y	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL XY	: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0));
	END COMPONENT;

	COMPONENT subtrator
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT (	SIGNAL x	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL y	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL XY	: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0));
	END COMPONENT;

	
	COMPONENT reg
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT( SIGNAL rst :  IN STD_LOGIC;
			  SIGNAL clk :  IN STD_LOGIC;
			  SIGNAL load  :  IN STD_LOGIC;
			  SIGNAL d	 :  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
			  SIGNAL q   : OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT multiplexor2a1
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT (	SIGNAL a	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL b	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL sel	:  IN STD_LOGIC;
				SIGNAL f	: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0));
	END COMPONENT;
	

	COMPONENT igual
		GENERIC (NUMBITS	: NATURAL := 32);
		PORT (	SIGNAL a	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL b	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
				SIGNAL eq	: OUT STD_LOGIC);
	END COMPONENT;	



//completar com todos os sinais necessarios para as conexoes
	SIGNAL <nome>		: <tipo>;
	SIGNAL <nome>		: <tipo>;


BEGIN

// instanciar o numero de muxes necessarios
	
	mux1: multiplexor2a1 GENERIC MAP(
							NUMBITS => NUMBITS)	
					PORT MAP ( 
						a	=> nome real,
						b	=> nome real,
						sel	=> nome real,
						f	=> nome real);
					

// instanciar o numero de registradores necessarios

	reg1: reg GENERIC MAP(
				NUMBITS => NUMBITS)	
			  PORT MAP ( 
				  rst => nome real,
				  clk => nome real,
				  load  => nome real,
				  d	  => nome real,
				  q   => nome real);


// instanciar o numero de somadores necessarios	
	  
	sum1: somador GENERIC MAP(
					NUMBITS => NUMBITS)	
			PORT MAP (
				x	=> nome real,
				y	=> nome real,
				XY	=> nome real);

// instanciar o numero de subtratores necessarios	
	  
	rest1: subtrator GENERIC MAP(
					NUMBITS => NUMBITS)	
			PORT MAP (
				x	=> nome real,
				y	=> nome real,
				XY	=> nome real);


// instanciar o numero de comparadores (igual) necessarios	

	ig1: igual GENERIC MAP(
						NUMBITS => NUMBITS)	
			PORT MAP (	
				a	=> n,
				b	=> uno,
				eq	=> n_eq_1);

	
				  

END behavior;

