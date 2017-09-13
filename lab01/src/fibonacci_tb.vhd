LIBRARY ieee;
USE ieee.std_logic_1164.all;

--  A testbench has no ports.
ENTITY fibonacci_tb IS
END fibonacci_tb;

ARCHITECTURE behav OF fibonacci_tb IS
  --  Declaration of the component that will be instantiated.
  COMPONENT fibonacci
    PORT (
      SIGNAL rst            : IN STD_LOGIC;
      SIGNAL clk            : IN STD_LOGIC;
      SIGNAL write_enable_i : IN STD_LOGIC;
      SIGNAL data_in        : IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
      SIGNAL read_enable_i  : IN STD_LOGIC;
      SIGNAL data_o         : OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
      SIGNAL status_o       : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SIGNAL irq_o          : OUT STD_LOGIC);
  END COMPONENT;

  --  Specifies which entity is bound with the component.
  FOR fibonacci_0: fibonacci USE ENTITY work.fibonacci;

  SIGNAL rst            : IN STD_LOGIC;
  SIGNAL clk            : IN STD_LOGIC;
  SIGNAL write_enable_i : IN STD_LOGIC;
  SIGNAL data_in        : IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL read_enable_i  : IN STD_LOGIC;
  SIGNAL data_o         : OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
  SIGNAL status_o       : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
  SIGNAL irq_o          : OUT STD_LOGIC);
BEGIN
  --  Component instantiation.
  fibonacci_0: fibonacci PORT MAP (
    rst             => rst
    clk             => clk
    write_enable_i  => write_enable_i
    data_in         => data_in
    read_enable_i   => read_enable_i
    data_o          => data_o
    status_o        => status_o
    irq_o           => irq_o);

   --  This process does the real job.
   PROCESS
      type pattern_type is record
        rst            : STD_LOGIC;
        clk            : STD_LOGIC;
        write_enable_i : STD_LOGIC;
        data_in        : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
        read_enable_i  : STD_LOGIC;
        data_o         : STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
        status_o       : STD_LOGIC_VECTOR(1 DOWNTO 0);
        irq_o          : STD_LOGIC);
      end record;
      -- The patterns to apply.
      -- TODO
   begin
      -- Check each pattern.
      -- TODO

   end PROCESS;
end behav;