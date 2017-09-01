--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY work;
use work.mlite_pack.all;


ENTITY plasmainDE2 IS
	GENERIC ( div_plasma	: NATURAL :=1);
			  --div_plasma	: NATURAL :=125000);
			  --div_plasma	: NATURAL :=250000);
			  --div_plasma	: NATURAL :=1250000);
			  --div_plasma	: NATURAL :=2500000);
			  --div_plasma	: NATURAL :=5000000);
	PORT (	clock_DE2       :  IN STD_LOGIC;
			reset_DE2       :  IN STD_LOGIC;
			load_DE2		:  IN STD_LOGIC;
			seletor_DE2		:  IN STD_LOGIC;
			data_DE2		:  IN STD_LOGIC_VECTOR(15 downto 0);
			display0_DE2	: OUT STD_LOGIC_VECTOR(6 downto 0);
			display1_DE2	: OUT STD_LOGIC_VECTOR(6 downto 0);
			display2_DE2	: OUT STD_LOGIC_VECTOR(6 downto 0);
			display3_DE2	: OUT STD_LOGIC_VECTOR(6 downto 0);
			display4_DE2	: OUT STD_LOGIC_VECTOR(6 downto 0);
			display5_DE2	: OUT STD_LOGIC_VECTOR(6 downto 0);
			display6_DE2	: OUT STD_LOGIC_VECTOR(6 downto 0);
			display7_DE2	: OUT STD_LOGIC_VECTOR(6 downto 0));
END plasmainDE2;

ARCHITECTURE behavior OF plasmainDE2 IS

	COMPONENT multiplexor2a1gen 
		GENERIC (longbits: natural:=4);
		PORT (	SIGNAL a	: IN STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);
				SIGNAL b	: IN STD_LOGIC_VECTOR(longbits-1 DOWNTO 0);
				SIGNAL sel	: IN STD_LOGIC;
				SIGNAL f	: OUT STD_LOGIC_VECTOR(longbits-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT divfrec 
		GENERIC (max_count : natural:=1);
		PORT(	clock	: IN std_logic;
				q		: OUT std_logic);
	END COMPONENT;
	
	COMPONENT hexa 
		PORT ( a: IN STD_LOGIC_VECTOR(3 downto 0);
			   f: OUT STD_LOGIC_VECTOR(6 downto 0));
	END COMPONENT;

	COMPONENT plasma 
		GENERIC(memory_type : string := "ALTERA_LPM";
				   log_file    : string := "UNUSED";
				   ethernet    : std_logic := '0');
	   PORT(clk          	: in std_logic;
			reset        	: in std_logic;
			uart_write   	: out std_logic;
			uart_read    	: in std_logic;
			address      	: out std_logic_vector(31 downto 0);
			byte_we      	: out std_logic_vector(3 downto 0); 
			data_write   	: out std_logic_vector(31 downto 0);
			data_read    	: in std_logic_vector(31 downto 0);
			mem_pause_in 	: in std_logic;	
			gpio0_out    	: out std_logic_vector(31 downto 0);
			gpioA_in     	: in std_logic_vector(31 downto 0);
			ext			 	:  IN STD_LOGIC;
			data_in_ext	 	:  IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			data_out_ext 	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));	
	END COMPONENT;

	COMPONENT data_in_memory 
		GENERIC (longbitsaddress: natural:=32;
				 longbitsdados: natural:=32;
				 endfixo :	STD_LOGIC_VECTOR (31 DOWNTO 0) :=x"0000FFE0");
		PORT (	SIGNAL reset	:  IN STD_LOGIC;
				SIGNAL clock	:  IN STD_LOGIC;
				SIGNAL wr		:  IN STD_LOGIC;
				SIGNAL endereco :  IN STD_LOGIC_VECTOR (longbitsaddress-1 DOWNTO 0);
				SIGNAL dado 	:  IN STD_LOGIC_VECTOR (longbitsdados-1 DOWNTO 0);
				SIGNAL saida	: OUT STD_LOGIC_VECTOR (longbitsdados-1 DOWNTO 0));
	END COMPONENT;	

	SIGNAL clock_plasma		: STD_LOGIC;
	SIGNAL write_enable		: STD_LOGIC;
	SIGNAL byte_we			: STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL data_0			: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL data_write			: STD_LOGIC_VECTOR(31 downto 0);

	SIGNAL address			: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL data_out_ext 	: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL data_in_ext	 	: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL temp 			: STD_LOGIC_VECTOR(31 downto 0);
	
	CONSTANT zero01			: STD_LOGIC :='0';
	CONSTANT zeros32		: STD_LOGIC_VECTOR(31 downto 0):= (OTHERS=>'0');

	SIGNAL clk          	: STD_LOGIC;
	SIGNAL ext				: STD_LOGIC;

   CONSTANT address0 : STD_LOGIC_VECTOR(31 DOWNTO 0):=x"0000FFE0"; -- ffe0 pos cuenta
   CONSTANT address1 : STD_LOGIC_VECTOR(31 DOWNTO 0):=x"0000FFF0"; -- fff0 pos dato modulo


BEGIN


	u0: divfrec 
		GENERIC MAP (max_count => div_plasma)
		PORT MAP (	clock	=>  clock_DE2,
					q		=>  clk);			

	ext <= not(load_DE2);
	data_in_ext <= zeros32(31 DOWNTO 16) & data_DE2;

	write_enable <= '1' when byte_we /= "0000" else '0';

	u2: plasma 
		GENERIC MAP(	memory_type => "ALTERA_LPM",
						log_file    => "UNUSED",
						ethernet    => '0')
	   PORT MAP(
			clk          	=> clk,
			reset        	=> reset_DE2,
			uart_write   	=> OPEN,
			uart_read    	=> '1',
			address      	=> address,
			byte_we      	=> byte_we, 
			data_write   	=> data_write,
			data_read    	=> zeros32,
			mem_pause_in 	=> zero01,		
			gpio0_out    	=> OPEN,
			gpioA_in     	=> zeros32,
			ext			 	=> ext,
			data_in_ext	 	=> data_in_ext, 
			data_out_ext    => data_out_ext) ; 

	u3: multiplexor2a1gen 
		GENERIC MAP (longbits => temp'LENGTH)
		PORT MAP (	a	=> data_0,
					b	=> data_out_ext,
					sel	=> seletor_DE2,
					f	=> temp);

	udisplay0: hexa
		PORT MAP( 	a => temp(3 downto 0),
					f => display0_DE2);

	udisplay1: hexa
		PORT MAP( 	a => temp(7 downto 4),
					f => display1_DE2);

	udisplay2: hexa
		PORT MAP( 	a => temp(11 downto 8),
					f => display2_DE2);

	udisplay3: hexa
		PORT MAP( 	a => temp(15 downto 12),
					f => display3_DE2);

	udisplay4: hexa
		PORT MAP( 	a => temp(19 downto 16),
					f => display4_DE2);

	udisplay5: hexa
		PORT MAP( 	a => temp(23 downto 20),
					f => display5_DE2);

	udisplay6: hexa
		PORT MAP( 	a => temp(27 downto 24),
					f => display6_DE2);

	udisplay7: hexa
		PORT MAP( 	a => temp(31 downto 28),
					f => display7_DE2);

	--visualiza cuenta
	vis0: data_in_memory 
	GENERIC MAP (	longbitsaddress => 32,
					longbitsdados 	=> 32,
					endfixo 		=> address0)
	PORT MAP (	reset	 => reset_DE2,
				clock	 => clk,
				wr		 => write_enable,
				endereco => address,
				dado 	 => data_write,
				saida	 => data_0);



END behavior;
