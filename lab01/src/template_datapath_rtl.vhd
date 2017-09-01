-- template_datapath_rtl.vhd
-- Descrição do circuito feito por Mario Raffo (11)
-- Jorge Gonzalez (12)
-- Luiz Eduardo Sol (luizedusol@gmail.com)

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY datapath IS
  GENERIC (NUMBITS	: NATURAL := 32);
	PORT (  -- Clocks e Reset
          rst     : IN STD_LOGIC;
          clk 		: IN STD_LOGIC;
          -- Dados
          data_in 	: IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
          -- Flags de entrada
          m_max	 	: IN STD_LOGIC;
          l_max	 	: IN STD_LOGIC;
          m_fib	 	: IN STD_LOGIC;
          l_fib	 	: IN STD_LOGIC;
          m_a1	 	: IN STD_LOGIC;
          l_a1	 	: IN STD_LOGIC;
          m_a2	 	: IN STD_LOGIC;
          l_a2	 	: IN STD_LOGIC;
          m_d		 	: IN STD_LOGIC;
          l_d		 	: IN STD_LOGIC;
          -- Flags de saída
          flag_1 		: OUT STD_LOGIC;
          flag_2 		: OUT STD_LOGIC;
          flag_3 		: OUT STD_LOGIC;
          -- Dados de saída
          data_out	: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0));
END datapath;


ARCHITECTURE behavior OF datapath IS

  COMPONENT somador
    GENERIC (NUMBITS	: NATURAL := 32);
    PORT (  SIGNAL x	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
            SIGNAL y	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
            SIGNAL XY	: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0));
  END COMPONENT;

  COMPONENT subtrator
    GENERIC (NUMBITS	: NATURAL := 32);
    PORT (  SIGNAL x	:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
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

-- Conexões
  SIGNAL mux_n_max_out                        : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL reg_n_max_out                        : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL mux_n_fibonacci_out                  : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL reg_n_fibonacci_out                  : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL mux_n_anterior1_out                  : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL reg_n_anterior1_out                  : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL mux_n_anterior2_out                  : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL reg_n_anterior2_out                  : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL mux_data_out_out                     : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL reg_data_out_out                     : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL reg_1_out                            : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL reg_0_out                            : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL subtrator_n_max_1_out                : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL igual_n_max_1_out                    : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL igual_n_max_0_out                    : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL somador_n_anterior1_n_anterior2_out  : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);


BEGIN
-- Muxes
  mux_n_max: multiplexor2a1
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      a	=>    data_in real,
      b	=>    subtrator_n_max_1_out real,
      sel	=>  m_max real,
      f	=>    mux_n_max_out real);

  mux_n_fibonacci: multiplexor2a1
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      a =>    somador_n_anterior1_n_anterior2_out real,
      b =>    reg_n_max_out real,
      sel =>  m_fib real,
      f =>    mux_n_fibonacci_out real);

  mux_n_anterior1: multiplexor2a1
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      a =>    reg_1_out real,
      b =>    reg_n_fibonacci_out real,
      sel =>  m_a1 real,
      f =>    mux_n_anterior1_out real);

  mux_n_anterior2: multiplexor2a1
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      a =>    reg_0_out real,
      b =>    reg_n_anterior1_out real,
      sel =>  m_a2 real,
      f =>    mux_n_anterior2_out real);

  mux_data_out: multiplexor2a1
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      a =>    reg_n_fibonacci_out real,
      b =>    reg_0_out real,
      sel =>  m_d real,
      f =>    mux_data_out_out real);

-- Registradores
  reg_n_max: reg
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      rst =>     rst real,
      clk =>     clk real,
      load  =>   l_max real,
      d	  =>     mux_n_max_out real,
      q   =>     reg_n_max_out real);

  reg_n_fibonacci: reg
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      rst =>     rst real,
      clk =>     clk real,
      load  =>   l_fib real,
      d   =>     mux_n_fibonacci_out real,
      q   =>     reg_n_fibonacci_out real);

  reg_n_anterior1: reg
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      rst =>     rst real,
      clk =>     clk real,
      load  =>   l_a1 real,
      d   =>     mux_n_anterior1_out real,
      q   =>     reg_n_anterior1_out real);

  reg_n_anterior2: reg
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      rst =>     rst real,
      clk =>     clk real,
      load  =>   l_a2 real,
      d   =>     mux_n_anterior2_out real,
      q   =>     reg_n_anterior2_out real);

  reg_1: reg
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      rst =>     rst real,
      clk =>     clk real,
      load  =>   rst real,
      d   =>     (0 => '1', OTHERS => '0') real,
      q   =>     reg_1_out real);

  reg_0: reg
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      rst =>     rst real,
      clk =>     clk real,
      load  =>   rst real,
      d   =>     (0 => '0', OTHERS => '0') real,
      q   =>     reg_0_out real);

-- Somadores
  somador_n_anterior1_n_anterior2: somador
    GENERIC MAP(NUMBITS => NUMBITS)
      PORT MAP (
        x	=>    reg_n_anterior1_out real,
        y	=>    reg_n_anterior2_out real,
        XY	=>  somador_n_anterior1_n_anterior2_out real);

-- Subtratores
  subtrator_n_max_1: subtrator
    GENERIC MAP(NUMBITS => NUMBITS)
      PORT MAP (
        x =>    reg_n_max_out real,
        y =>    reg_1_out real,
        XY  =>  subtrator_n_max_1_out real);

-- Comparadores
  igual_n_max_0_out: igual
    GENERIC MAP(NUMBITS => NUMBITS)
      PORT MAP (
        a	=>    reg_n_max_out,
        b	=>    reg_0_out,
        eq	=>  flag_1);

  igual_n_max_1_out: igual
    GENERIC MAP(NUMBITS => NUMBITS)
      PORT MAP (
        a =>    reg_n_max_out,
        b =>    reg_1_out,
        eq  =>  flag_2);

END behavior;

