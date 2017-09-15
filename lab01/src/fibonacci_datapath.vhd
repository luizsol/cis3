-- fibonacci_datapath.vhd
-- Descrição do circuito feito por Mario Raffo (11)
-- Jorge Gonzalez (12)
-- Implementado por Luiz Eduardo Sol (luizedusol@gmail.com)

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
-- USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY fibonacci_datapath IS
  GENERIC (NUMBITS	: NATURAL := 32);
  PORT (  -- Clocks e Reset
          rst       : IN STD_LOGIC;
          clk 		  : IN STD_LOGIC;
          -- Dados de entrada
          data_in   : IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
          -- Flags de entrada
          m_max	 	  : IN STD_LOGIC;
          l_max	 	  : IN STD_LOGIC;
          m_fib	 	  : IN STD_LOGIC;
          l_fib	 	  : IN STD_LOGIC;
          m_a1	 	  : IN STD_LOGIC;
          l_a1	 	  : IN STD_LOGIC;
          m_a2	 	  : IN STD_LOGIC;
          l_a2	 	  : IN STD_LOGIC;
          m_d		 	  : IN STD_LOGIC;
          l_d		 	  : IN STD_LOGIC;
          -- Dados de saída
          data_o    : OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
          -- Flags de saída
          flag1     : OUT STD_LOGIC;
          flag2     : OUT STD_LOGIC;
          flag3     : OUT STD_LOGIC);
END fibonacci_datapath;


ARCHITECTURE behavior OF fibonacci_datapath IS

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
  SIGNAL mux_data_o_out                       : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL reg_data_o_out                       : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL reg_1_out                            : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL reg_0_out                            : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL subtrator_n_max_1_out                : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL somador_n_anterior1_n_anterior2_out  : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);


BEGIN
-- Muxes
  mux_n_max: multiplexor2a1
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      a	=>    data_in,
      b	=>    subtrator_n_max_1_out,
      sel	=>  m_max,
      f	=>    mux_n_max_out);

  mux_n_fibonacci: multiplexor2a1
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      a =>    somador_n_anterior1_n_anterior2_out,
      b =>    reg_n_max_out,
      sel =>  m_fib,
      f =>    mux_n_fibonacci_out);

  mux_n_anterior1: multiplexor2a1
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      a =>    reg_1_out,
      b =>    reg_n_fibonacci_out,
      sel =>  m_a1,
      f =>    mux_n_anterior1_out);

  mux_n_anterior2: multiplexor2a1
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      a =>    reg_0_out,
      b =>    reg_n_anterior1_out,
      sel =>  m_a2,
      f =>    mux_n_anterior2_out);

  mux_data_o: multiplexor2a1
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      a =>    reg_n_fibonacci_out,
      b =>    reg_0_out,
      sel =>  m_d,
      f =>    mux_data_o_out);

-- Registradores
  reg_n_max: reg
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      rst =>     rst,
      clk =>     clk,
      load  =>   l_max,
      d	  =>     mux_n_max_out,
      q   =>     reg_n_max_out);

  reg_n_fibonacci: reg
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      rst =>     rst,
      clk =>     clk,
      load  =>   l_fib,
      d   =>     mux_n_fibonacci_out,
      q   =>     reg_n_fibonacci_out);

  reg_n_anterior1: reg
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      rst =>     rst,
      clk =>     clk,
      load  =>   l_a1,
      d   =>     mux_n_anterior1_out,
      q   =>     reg_n_anterior1_out);

  reg_n_anterior2: reg
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      rst =>     rst,
      clk =>     clk,
      load  =>   l_a2,
      d   =>     mux_n_anterior2_out,
      q   =>     reg_n_anterior2_out);

  reg_1: reg
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      rst =>     rst,
      clk =>     clk,
      load  =>   '1',
      d   =>     (0 => '1', OTHERS => '0'),
      q   =>     reg_1_out);

  reg_0: reg
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      rst =>     rst,
      clk =>     clk,
      load  =>   '1',
      d   =>     (0 => '0', OTHERS => '0'),
      q   =>     reg_0_out);
	  
   reg_data_o: reg
    GENERIC MAP(NUMBITS => NUMBITS)
    PORT MAP (
      rst =>     rst,
      clk =>     clk,
      load  =>   l_d,
      d   =>     mux_data_o_out,
      q   =>     data_o);

-- Somadores
  somador_n_anterior1_n_anterior2: somador
    GENERIC MAP(NUMBITS => NUMBITS)
      PORT MAP (
        x	=>    reg_n_anterior1_out,
        y	=>    reg_n_anterior2_out,
        XY	=>  somador_n_anterior1_n_anterior2_out);

-- Subtratores
  subtrator_n_max_1: subtrator
    GENERIC MAP(NUMBITS => NUMBITS)
      PORT MAP (
        x =>    reg_n_max_out,
        y =>    reg_1_out,
        XY  =>  subtrator_n_max_1_out);

-- Comparadores
  igual_n_max_0: igual
    GENERIC MAP(NUMBITS => NUMBITS)
      PORT MAP (
        a	=>    reg_n_max_out,
        b	=>    reg_0_out,
        eq  =>  flag1);

  igual_n_max_1: igual
    GENERIC MAP(NUMBITS => NUMBITS)
      PORT MAP (
        a =>    reg_n_max_out,
        b =>    reg_1_out,
        eq  =>  flag2);
  
  igual_n_max_2: igual
    GENERIC MAP(NUMBITS => NUMBITS)
      PORT MAP (
        a =>    reg_n_max_out,
        b =>    reg_1_out,
        eq  =>  flag3);

END behavior;

