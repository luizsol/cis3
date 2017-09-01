----------------------------------------------------------------------------------
--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY fsm IS
	PORT( SIGNAL	clock	:  IN STD_LOGIC;
		  SIGNAL	reset	:  IN STD_LOGIC;
		  SIGNAL	ext		:  IN STD_LOGIC;
		  SIGNAL	w_e		:  IN STD_LOGIC;
		  SIGNAL	r_e		:  IN STD_LOGIC;
		  SIGNAL 	lx		: OUT STD_LOGIC;
		  SIGNAL 	ly		: OUT STD_LOGIC;
		  SIGNAL	irq 	: OUT STD_LOGIC);
END fsm;


architecture behavior of fsm is

	-- Build an enumerated type for the state machine
	TYPE state_type IS (ST0, ST1, ST2, ST3, ST4, ST5);
	-- Register to hold the current state
	SIGNAL state, next_state : state_type :=ST0;
	
	-- Attribute "safe" implements a safe state machine.
	-- This is a state machine that can recover from an
	-- illegal state (by returning to the reset state).
	attribute syn_encoding : string;
	attribute syn_encoding of state_type : type is "safe";


BEGIN


	SEQ: PROCESS (clock, reset)
	BEGIN
		IF (reset = '1') THEN 
			state <= ST0;
		ELSIF (rising_edge(clock)) THEN
			state <= next_state;
		END IF;
	END PROCESS SEQ;

		
	COMB: PROCESS (state, ext, w_e, r_e)	
	BEGIN		
		CASE state IS
			WHEN ST0=>
				IF (ext = '1') THEN
					next_state <= ST1;
				ELSIF (w_e = '1') THEN
					next_state <= ST4;
				ELSE
					next_state <= ST0;
				END IF;
			WHEN ST1=>
				--next_state <= ST1a;
				next_state <= ST2;
--			WHEN ST1a=>
--				next_state <= ST2;				
			WHEN ST2=>
				IF (r_e = '1') THEN
					next_state <= ST3;
				ELSE
					next_state <= ST2;
				END IF;
			WHEN ST3=>
				IF (r_e = '0') THEN
					next_state <= ST0;
				ELSE
					next_state <= ST3;
				END IF;
			WHEN ST4=>
				next_state <= ST5;
			WHEN ST5=>
				IF (w_e = '1') THEN	
					next_state <= ST5;
				ELSE	
					next_state <= ST0;
				END IF;				
		END CASE;
	END PROCESS COMB;


	SAI: PROCESS (state)
	BEGIN		
		CASE state IS
			WHEN ST0 =>
				lx<='0';
				ly<='0';
				irq <='0';
			WHEN ST1 =>
				lx<='1';
				ly<='0';
				irq <='0';
--			WHEN ST1a =>
--				lx<='0';
--				ly<='0';
--				irq <='1';				
			WHEN ST2 =>
				lx<='0';
				ly<='0';
				--irq <='0';
				irq <='1';
			WHEN ST3 =>
				lx<='0';
				ly<='0';
				irq <='0';
			WHEN ST4 =>
				lx<='0';
				ly<='1';
				irq <='0';
			WHEN ST5 =>
				lx<='0';
				ly<='0';
				irq <='0';
		END CASE;
	END PROCESS SAI;


END behavior;


