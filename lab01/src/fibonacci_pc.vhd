-- fibonacci_pc.vhd
-- Descrição do circuito feito por Mario Raffo (11)
-- Jorge Gonzalez (12)
-- Implementado por Luiz Eduardo Sol (luizedusol@gmail.com)

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fibonacci_pc IS
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
END fibonacci_pc;

ARCHITECTURE fsdm OF fibonacci_pc IS
  TYPE state_type IS (estado0, estado1, estado2, estado3, estado4, estado5,
                      estado6, estado7, estado8, estado9, estado10, estado11,
                      estado12, estado13);
  SIGNAL state, next_state : state_type;

BEGIN
  ------------------------Lógica Sequencial-----------------------
  SEQ: PROCESS (rst, clk)
  BEGIN
    IF (rst='1') THEN
      state <= estado0;
    ELSIF Rising_Edge(clk) THEN
      state <= next_state;
    END IF;
  END PROCESS SEQ;
  -----------------------Lógica Combinacional do estado siguinte--
  COMB: PROCESS (write_enable_i, read_enable_i, flag1, flag2, flag3, state)
  BEGIN
    CASE state IS
      WHEN estado0 =>
        IF (write_enable_i = '0') THEN
          next_state <= estado0;
        ELSE
          next_state <= estado1;
        END IF;

      WHEN estado1 =>
        next_state <= estado2;

      WHEN estado2 =>
        next_state <= estado3;

      WHEN estado3 =>
        next_state <= estado4;

      WHEN estado4 =>
        IF (flag1 = '1') THEN
          next_state <= estado5;
        ELSE
          next_state <= estado6;
        END IF;

      WHEN estado5 =>
        next_state <= estado13;

      WHEN estado6 =>
        IF (flag2 = '1') THEN
          next_state <= estado7;
        ELSE
          next_state <= estado8;
        END IF;

      WHEN estado7 =>
        next_state <= estado13;

      WHEN estado8 =>
        IF (flag3 = '0') THEN
          next_state <= estado9;
        ELSE
          next_state <= estado13;
        END IF;

      WHEN estado9 =>
        next_state <= estado10;

      WHEN estado10 =>
        next_state <= estado11;

      WHEN estado11 =>
        next_state <= estado12;

      WHEN estado12 =>
        next_state <= estado8;

      WHEN estado13 =>
        IF (read_enable_i = '1') THEN
          next_state <= estado0;
        ELSE
          next_state <= estado13;
        END IF;

    END CASE;
  END PROCESS COMB;

  -----------------------Lógica Combinacional saidas---------------------
  SAI: PROCESS (state)
  BEGIN
    CASE state IS
      WHEN estado0 =>
        m_d <= '1';
        l_d <= '1';
        status_o <= "00";
        irq_o <= '0';

      WHEN estado1 =>
        m_a1 <= '0';
        l_a1 <= '1';
        l_d <= '0';
        status_o <= "00";
        irq_o <= '0';

      WHEN estado2 =>
        m_a2 <= '0';
        l_a2 <= '1';
        l_a1 <= '0';
        l_d <= '0';
        status_o <= "00";
        irq_o <= '0';

      WHEN estado3 =>
        m_max <= '0';
        l_max <= '1';
        l_a2 <= '0';
        l_a1 <= '0';
        l_d <= '0';
        status_o <= "01";
        irq_o <= '0';

      WHEN estado4 =>
        l_max <= '0';
        l_a2 <= '0';
        l_a1 <= '0';
        l_d <= '0';
        status_o <= "01";
        irq_o <= '0';

      WHEN estado5 =>
        m_fib <= '1';
        l_fib <= '1';
        l_max <= '0';
        l_a2 <= '0';
        l_a1 <= '0';
        l_d <= '0';
        status_o <= "01";
        irq_o <= '0';

      WHEN estado6 =>
        l_max <= '0';
        l_a2 <= '0';
        l_a1 <= '0';
        l_d <= '0';
        status_o <= "01";
        irq_o <= '0';

      WHEN estado7 =>
        m_fib <= '1';
        l_fib <= '1';
        l_max <= '0';
        l_a2 <= '0';
        l_a1 <= '0';
        l_d <= '0';
        status_o <= "01";
        irq_o <= '0';

      WHEN estado8 =>
        l_max <= '0';
        l_a2 <= '0';
        l_a1 <= '0';
        l_d <= '0';
        status_o <= "01";
        irq_o <= '0';

      WHEN estado9 =>
        m_fib <= '0';
        l_fib <= '1';
        l_max <= '0';
        l_a2 <= '0';
        l_a1 <= '0';
        l_d <= '0';
        status_o <= "01";
        irq_o <= '0';

      WHEN estado10 =>
        m_a2 <= '1';
        l_a2 <= '1';
        l_fib <= '0';
        l_max <= '0';
        l_a1 <= '0';
        l_d <= '0';
        status_o <= "01";
        irq_o <= '0';

      WHEN estado11 =>
        m_a1 <= '1';
        l_a1 <= '1';
        l_fib <= '0';
        l_max <= '0';
        l_a2 <= '0';
        l_d <= '0';
        status_o <= "01";
        irq_o <= '0';

      WHEN estado12 =>
        m_max <= '1';
        l_max <= '1';
        l_a1 <= '0';
        l_fib <= '0';
        l_a2 <= '0';
        l_d <= '0';
        status_o <= "01";
        irq_o <= '0';

      WHEN estado13 =>
        m_d <= '0';
        l_d <= '1';
        l_max <= '0';
        l_a1 <= '0';
        l_fib <= '0';
        l_a2 <= '0';
        status_o <= "10";
        irq_o <= '1';

    END CASE;
  END PROCESS SAI;
END fsdm;