-- fibanacci.vhd
-- Descrição do circuito feito por:
-- MSc. Mario Raffo : mraffo@lme.usp.br
-- Membro do GSEIS
-- Doutorando em Engenharia Elétrica
-- Universidade de São Paulo
-- Implementado por Luiz Eduardo Sol (luizedusol@gmail.com)

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
-- USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY fibonacci IS
  GENERIC (NUMBITS	: NATURAL := 32);
  PORT (
          SIGNAL rst            : IN STD_LOGIC;
          SIGNAL clk            : IN STD_LOGIC;
          SIGNAL write_enable_i : IN STD_LOGIC;
          SIGNAL data_in        : IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
          SIGNAL read_enable_i  : IN STD_LOGIC;
          SIGNAL data_o         : OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
          SIGNAL status_o       : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
          SIGNAL irq_o          : OUT STD_LOGIC);
END fibonacci;

ARCHITECTURE behavior OF fibonacci IS

  COMPONENT fibonacci_pc
    PORT (-- Clocks e Reset
          rst             : IN STD_LOGIC;
          clk             : IN STD_LOGIC;
          -- Dados de entrada
          write_enable_i  : IN STD_LOGIC;
          read_enable_i   : IN STD_LOGIC;
          -- Flags de entrada
          flag1           : IN STD_LOGIC;
          flag2           : IN STD_LOGIC;
          flag3           : IN STD_LOGIC;
          -- Dados de saída
          status_o        : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
          irq_o           : OUT STD_LOGIC;
          -- Flags de saída
          m_max           : OUT STD_LOGIC;
          l_max           : OUT STD_LOGIC;
          m_fib           : OUT STD_LOGIC;
          l_fib           : OUT STD_LOGIC;
          m_a1            : OUT STD_LOGIC;
          l_a1            : OUT STD_LOGIC;
          m_a2            : OUT STD_LOGIC;
          l_a2            : OUT STD_LOGIC;
          m_d             : OUT STD_LOGIC;
          l_d             : OUT STD_LOGIC);
  END COMPONENT;

  COMPONENT fibonacci_datapath
    GENERIC (NUMBITS	: NATURAL := 32);
    PORT (-- Clocks e Reset
          rst       : IN STD_LOGIC;
          clk       : IN STD_LOGIC;
          -- Dados de entrada
          data_in   : IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
          -- Flags de entrada
          m_max     : IN STD_LOGIC;
          l_max     : IN STD_LOGIC;
          m_fib     : IN STD_LOGIC;
          l_fib     : IN STD_LOGIC;
          m_a1      : IN STD_LOGIC;
          l_a1      : IN STD_LOGIC;
          m_a2      : IN STD_LOGIC;
          l_a2      : IN STD_LOGIC;
          m_d       : IN STD_LOGIC;
          l_d       : IN STD_LOGIC;
          -- Dados de saída
          data_o    : OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
          -- Flags de saída
          flag1     : OUT STD_LOGIC;
          flag2     : OUT STD_LOGIC;
          flag3     : OUT STD_LOGIC);
	END COMPONENT;

-- Conexões
  SIGNAL m_max    : STD_LOGIC;
  SIGNAL l_max    : STD_LOGIC;
  SIGNAL m_fib    : STD_LOGIC;
  SIGNAL l_fib    : STD_LOGIC;
  SIGNAL m_a1     : STD_LOGIC;
  SIGNAL l_a1     : STD_LOGIC;
  SIGNAL m_a2     : STD_LOGIC;
  SIGNAL l_a2     : STD_LOGIC;
  SIGNAL m_d      : STD_LOGIC;
  SIGNAL l_d      : STD_LOGIC;
  SIGNAL flag1    : STD_LOGIC;
  SIGNAL flag2    : STD_LOGIC;
  SIGNAL flag3    : STD_LOGIC;

BEGIN

  u0: fibonacci_pc
    PORT MAP(
      rst             => rst,
      clk             => clk,
      write_enable_i  => write_enable_i,
      read_enable_i   => read_enable_i,
      flag1           => flag1,
      flag2           => flag2,
      flag3           => flag3,
      status_o        => status_o,
      irq_o           => irq_o,
      m_max           => m_max,
      l_max           => l_max,
      m_fib           => m_fib,
      l_fib           => l_fib,
      m_a1            => m_a1,
      l_a1            => l_a1,
      m_a2            => m_a2,
      l_a2            => l_a2,
      m_d             => m_d,
      l_d             => l_d);

  u1: fibonacci_datapath
    GENERIC MAP (NUMBITS => NUMBITS)
    PORT MAP (
			rst      => rst,
			clk      => clk,
      data_in  => data_in,
      m_max    => m_max,
      l_max    => l_max,
      m_fib    => m_fib,
      l_fib    => l_fib,
      m_a1     => m_a1,
      l_a1     => l_a1,
      m_a2     => m_a2,
      l_a2     => l_a2,
      m_d      => m_d,
      l_d      => l_d,
      data_o   => data_o,
      flag1    => flag1,
      flag2    => flag2,
      flag3    => flag3);

END behavior;
