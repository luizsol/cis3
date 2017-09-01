--Descrição do circuito feito por:
--MSc. Mario Raffo : mraffo@lme.usp.br
--Membro do GSEIS
--Doutorando em Engenharia Elétrica
--Universidade de São Paulo

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.NUMERIC_STD.ALL;

ENTITY fibonacci IS
	GENERIC (NUMBITS	: NATURAL := 32);
	PORT (SIGNAL rst				:  IN STD_LOGIC;
			SIGNAL clk				:  IN STD_LOGIC;
			SIGNAL write_enable_i		:  IN STD_LOGIC;
			SIGNAL data_in			:  IN STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
			SIGNAL read_enable_i  		:  IN STD_LOGIC;	
			SIGNAL data_o			: OUT STD_LOGIC_VECTOR(NUMBITS-1 DOWNTO 0);
			SIGNAL status_o			: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);		
			SIGNAL irq_o	  		: OUT STD_LOGIC);
END fibonacci;

ARCHITECTURE behavior OF fibonacci IS

		COMPONENT fsm_fibonacci
	// seguir a descricao da entity do componente
		PORT (	SIGNAL rst					:  IN STD_LOGIC;
				SIGNAL clk					:  IN STD_LOGIC;
	// completar os outros portos
				SIGNAL <nome do porto>			:  <modo-IN-OUT-etc> <tipo>;
				SIGNAL <nome do porto>			:  <modo-IN-OUT-etc> <tipo>);
	END COMPONENT;	
	
	COMPONENT datapath
		GENERIC (NUMBITS	: NATURAL := 32);
	// seguir a descricao da entity do componente
		PORT (	SIGNAL rst					:  IN STD_LOGIC;
				SIGNAL clk					:  IN STD_LOGIC;
	// completar os outros portos
				SIGNAL <nome do porto>			:  <modo-IN-OUT-etc> <tipo>;
				SIGNAL <nome do porto>			:  <modo-IN-OUT-etc> <tipo>);
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
