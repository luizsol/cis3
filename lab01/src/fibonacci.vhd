-- fibanacci.vhd
-- Descrição do circuito feito por:
-- MSc. Mario Raffo : mraffo@lme.usp.br
-- Membro do GSEIS
-- Doutorando em Engenharia Elétrica
-- Universidade de São Paulo
-- Implementado por Luiz Eduardo Sol (luizedusol@gmail.com)

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
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
    PORT (  -- Clocks e Reset
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
    PORT (  -- Clocks e Reset
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
          data_out  : OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0)
          -- Flags de saída
          flag_1    : OUT STD_LOGIC;
          flag_2    : OUT STD_LOGIC;
          flag_3    : OUT STD_LOGIC);
	END COMPONENT;

//completar com todos os sinais necessarios para as conexoes
	SIGNAL clk			: STD_LOGIC;
	SIGNAL rst			: STD_LOGIC;
	SIGNAL <nome>		: <tipo>;
	SIGNAL <nome>		: <tipo>;



BEGIN

	u0: fsm_fibonacci PORT MAP(
				rst					=> rst,
				clk					=> clk,
	// completar com os portos dos componentes e sinais de conexão
				demais nomes locais			=> demais nomes atuais,
				demais nomes locais			=> demais nomes atuais);


	u1: datapath GENERIC MAP (
					NUMBITS => NUMBITS)
				PORT MAP (
					rst				=> rst,
					clk				=> clk,
	// completar com os portos dos componentes e sinais de conexão
				demais nomes locais			=> demais nomes atuais,
				demais nomes locais			=> demais nomes atuais);


END behavior;
