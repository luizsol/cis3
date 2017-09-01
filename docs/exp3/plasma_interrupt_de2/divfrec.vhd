--Descrição do circuito feito por Mario Raffo (11)
--Alterado em 12

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity divfrec is
	GENERIC (max_count : natural:=1);
	PORT(	clock	: IN STD_LOGIC;
			q		: OUT STD_LOGIC);
end divfrec;

architecture Behavioral of divfrec is
	
	SIGNAL q_temp : STD_LOGIC;

BEGIN

	PROCESS(clock)
		variable temp: natural range 0 to max_count;
	BEGIN
		IF RISING_EDGE(clock) THEN
			temp:=temp+1;
			IF (temp=max_count) THEN
				temp:=0;
				q_temp<=not(q_temp);
			END IF;
		END IF;
	END PROCESS; 
	
	q <= q_temp;

END Behavioral;
