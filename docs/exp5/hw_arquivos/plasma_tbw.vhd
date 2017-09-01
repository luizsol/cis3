library ieee;
use ieee.std_logic_1164.all;
use work.mlite_pack.all;


ENTITY plasma_tbw IS

END plasma_tbw;

ARCHITECTURE behavior OF plasma_tbw IS


	component plasma is
		generic(memory_type : string := "ALTERA_LPM";
			   log_file    : string := "UNUSED";
			   ethernet    : std_logic := '0');
		port(clk          : in std_logic;
			 reset        : in std_logic;
			
			 uart_write   : out std_logic;
			 uart_read    : in std_logic;
			
			 address      : out std_logic_vector(31 downto 0);
			 byte_we      : out std_logic_vector(3 downto 0); 
			 data_write   : out std_logic_vector(31 downto 0);
			 data_read    : in std_logic_vector(31 downto 0);
			 mem_pause_in : in std_logic;
			
			 gpio0_out    : out std_logic_vector(31 downto 0);
			 gpioA_in     : in std_logic_vector(31 downto 0));
	end component;


	--Constants
	CONSTANT PERIOD 			: time := 20 ns;

	--Inputs
	SIGNAL clk          : std_logic :='0';
	SIGNAL reset        : std_logic :='0';
	SIGNAL uart_read    : std_logic :='0';
	SIGNAL data_read    : std_logic_vector(31 downto 0) :=(OTHERS=>'0');
	SIGNAL mem_pause_in : std_logic :='0';
	SIGNAL gpioA_in     : std_logic_vector(31 downto 0) :=(OTHERS=>'0');


	--Outputs
	SIGNAL uart_write   : std_logic;
	SIGNAL address      : std_logic_vector(31 downto 0);
	SIGNAL byte_we      : std_logic_vector(3 downto 0); 
	SIGNAL data_write   : std_logic_vector(31 downto 0);
	SIGNAL gpio0_out    : std_logic_vector(31 downto 0);

BEGIN

	uo: plasma 
		generic map 
			   (memory_type => "ALTERA_LPM",
			   log_file     => "UNUSED",
			   ethernet     => '0')
		port map 
			(clk          => clk,
			 reset        => reset,
	
			 uart_write   => uart_write,
			 uart_read    => uart_read,
			 address      => address,
			 byte_we      => byte_we, 
			 data_write   => data_write,
			 data_read    => data_read,
			 mem_pause_in => mem_pause_in,
			
			gpio0_out     => gpio0_out,
			gpioA_in      => gpioA_in);


	-- parte do relógio.
	clk <= not clk after PERIOD/2;

	tb : PROCESS
	BEGIN

		reset <= '1';
		wait for 2*PERIOD;
		
		reset <= '0';
		wait for PERIOD;			   	
		
		wait; -- will wait forever
	END PROCESS;

END behavior;