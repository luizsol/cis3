-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 304 01/25/2010 Service Pack 1 SJ Full Version"

-- DATE "09/15/2017 12:03:43"

-- 
-- Device: Altera EP2S15F484C3 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY STRATIXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE STRATIXII.STRATIXII_COMPONENTS.ALL;

ENTITY 	fibonacci IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	write_enable_i : IN std_logic;
	data_in : IN std_logic_vector(31 DOWNTO 0);
	read_enable_i : IN std_logic;
	data_o : OUT std_logic_vector(31 DOWNTO 0);
	status_o : OUT std_logic_vector(1 DOWNTO 0);
	irq_o : OUT std_logic
	);
END fibonacci;

-- Design Ports Information
-- data_o[0]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- data_o[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- data_o[2]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[3]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- data_o[4]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[5]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[6]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- data_o[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[8]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[9]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- data_o[10]	=>  Location: PIN_W13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[11]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- data_o[12]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[13]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- data_o[14]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- data_o[15]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[16]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- data_o[17]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[18]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[19]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[20]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- data_o[21]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- data_o[22]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[23]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[24]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[25]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[26]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[27]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- data_o[28]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- data_o[29]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- data_o[30]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_o[31]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- status_o[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- status_o[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- irq_o	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- read_enable_i	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- write_enable_i	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[20]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[21]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[22]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[23]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[24]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[26]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[25]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[27]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[28]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[30]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[31]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[29]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[16]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[17]	=>  Location: PIN_P21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[19]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[18]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default

ARCHITECTURE structure OF fibonacci IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_write_enable_i : std_logic;
SIGNAL ww_data_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_read_enable_i : std_logic;
SIGNAL ww_data_o : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_status_o : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_irq_o : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~1_sumout\ : std_logic;
SIGNAL \u1|igual_n_max_1|Equal0~5_combout\ : std_logic;
SIGNAL \u0|WideOr14~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[0]~feeder_combout\ : std_logic;
SIGNAL \u1|reg_1|q[0]~feeder_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[0]~1_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[0]~2\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[0]~3\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[1]~5_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[1]~7\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[2]~11\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[3]~15\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[4]~19\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[5]~23\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[6]~27\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[7]~31\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[8]~35\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[9]~39\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[10]~43\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[11]~47\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[12]~51\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[13]~55\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[14]~58\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[14]~59\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[15]~61_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[15]~62\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[15]~63\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[16]~65_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[16]~66\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[16]~67\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[17]~69_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[17]~70\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[17]~71\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[18]~73_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[18]~74\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[18]~75\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[19]~77_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[19]~78\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[19]~79\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[20]~81_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[20]~82\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[20]~83\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[21]~85_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[21]~86\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[21]~87\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[22]~89_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[22]~90\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[22]~91\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[23]~93_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[23]~94\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[23]~95\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[24]~97_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[24]~98\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[24]~99\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[25]~101_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[25]~102\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[25]~103\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[26]~105_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[26]~106\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[26]~107\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[27]~109_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[27]~110\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[27]~111\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[28]~113_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[28]~114\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[28]~115\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[29]~117_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[29]~118\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[29]~119\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[30]~121_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[30]~122\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[30]~123\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[31]~125_sumout\ : std_logic;
SIGNAL \u1|igual_n_max_1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|igual_n_max_1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|igual_n_max_1|Equal0~7_combout\ : std_logic;
SIGNAL \u1|igual_n_max_1|Equal0~1_combout\ : std_logic;
SIGNAL \u0|state.estado2~regout\ : std_logic;
SIGNAL \u0|state.estado3~regout\ : std_logic;
SIGNAL \u0|state.estado4~regout\ : std_logic;
SIGNAL \u0|next_state.estado6~0_combout\ : std_logic;
SIGNAL \u0|state.estado6~regout\ : std_logic;
SIGNAL \u0|next_state.estado7~0_combout\ : std_logic;
SIGNAL \u0|state.estado7~regout\ : std_logic;
SIGNAL \u0|next_state.estado5~0_combout\ : std_logic;
SIGNAL \u0|state.estado5~regout\ : std_logic;
SIGNAL \read_enable_i~combout\ : std_logic;
SIGNAL \u0|Selector11~0_combout\ : std_logic;
SIGNAL \u0|state.estado13~regout\ : std_logic;
SIGNAL \write_enable_i~combout\ : std_logic;
SIGNAL \u0|Selector5~0_combout\ : std_logic;
SIGNAL \u0|state.estado0~regout\ : std_logic;
SIGNAL \u0|next_state.estado1~0_combout\ : std_logic;
SIGNAL \u0|state.estado1~regout\ : std_logic;
SIGNAL \u0|WideOr3~0_combout\ : std_logic;
SIGNAL \u0|WideOr8~0_combout\ : std_logic;
SIGNAL \u0|l_max~combout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[1]~6\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[2]~9_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[2]~10\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[3]~13_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[3]~14\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[4]~17_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[4]~18\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[5]~21_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[5]~22\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[6]~25_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[6]~26\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[7]~29_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[7]~30\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[8]~33_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[8]~34\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[9]~37_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[9]~38\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[10]~41_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[10]~42\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[11]~45_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[11]~46\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[12]~49_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[12]~50\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[13]~53_sumout\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[13]~54\ : std_logic;
SIGNAL \u1|subtrator_n_max_1|XY[14]~57_sumout\ : std_logic;
SIGNAL \u1|igual_n_max_1|Equal0~4_combout\ : std_logic;
SIGNAL \u1|igual_n_max_1|Equal0~3_combout\ : std_logic;
SIGNAL \u1|igual_n_max_1|Equal0~6_combout\ : std_logic;
SIGNAL \u0|Selector9~0_combout\ : std_logic;
SIGNAL \u0|state.estado8~regout\ : std_logic;
SIGNAL \u0|next_state.estado9~0_combout\ : std_logic;
SIGNAL \u0|state.estado9~regout\ : std_logic;
SIGNAL \u0|state.estado10~regout\ : std_logic;
SIGNAL \u0|state.estado11~regout\ : std_logic;
SIGNAL \u0|state.estado12~regout\ : std_logic;
SIGNAL \u0|m_max~combout\ : std_logic;
SIGNAL \u0|WideOr11~0_combout\ : std_logic;
SIGNAL \u0|m_fib~combout\ : std_logic;
SIGNAL \u0|WideOr12~combout\ : std_logic;
SIGNAL \u0|l_fib~combout\ : std_logic;
SIGNAL \u0|l_d~combout\ : std_logic;
SIGNAL \u0|m_d~combout\ : std_logic;
SIGNAL \u0|WideOr4~0_combout\ : std_logic;
SIGNAL \u0|m_a1~combout\ : std_logic;
SIGNAL \u0|l_a1~combout\ : std_logic;
SIGNAL \u0|WideOr6~0_combout\ : std_logic;
SIGNAL \u0|m_a2~combout\ : std_logic;
SIGNAL \u0|l_a2~0_combout\ : std_logic;
SIGNAL \u0|l_a2~combout\ : std_logic;
SIGNAL \u1|mux_n_anterior1|f[0]~0_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~2\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~5_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[1]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~6\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~9_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[2]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~10\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~13_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[3]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~14\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~17_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[4]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~18\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~21_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[5]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~22\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~25_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[6]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~26\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~29_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[7]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~30\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~33_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[8]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~34\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~37_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[9]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~38\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~41_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[10]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~42\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~45_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[11]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~46\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~49_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[12]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~50\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~53_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[13]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~54\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~57_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[14]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~58\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~61_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[15]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~62\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~65_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[16]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~66\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~69_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[17]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~70\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~73_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[18]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~74\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~77_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[19]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~78\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~81_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[20]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~82\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~85_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[21]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~86\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~89_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[22]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~90\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~93_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[23]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~94\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~97_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[24]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~98\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~101_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[25]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~102\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~105_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[26]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~106\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~109_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[27]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~110\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~113_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[28]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~114\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~117_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[29]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~118\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~121_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[30]~feeder_combout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~122\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|Add0~125_sumout\ : std_logic;
SIGNAL \u1|reg_n_fibonacci|q[31]~feeder_combout\ : std_logic;
SIGNAL \u0|WideOr3~combout\ : std_logic;
SIGNAL \u1|reg_n_max|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \data_in~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|reg_data_o|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|reg_1|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|reg_n_anterior2|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|reg_n_anterior1|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|reg_n_fibonacci|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|reg_n_fibonacci|ALT_INV_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|reg_n_max|ALT_INV_q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|reg_n_anterior2|ALT_INV_q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \u1|reg_n_anterior1|ALT_INV_q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \u0|ALT_INV_state.estado13~regout\ : std_logic;
SIGNAL \u0|ALT_INV_state.estado2~regout\ : std_logic;
SIGNAL \u0|ALT_INV_state.estado0~regout\ : std_logic;
SIGNAL \u0|ALT_INV_state.estado1~regout\ : std_logic;
SIGNAL \u0|ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \u0|ALT_INV_l_d~combout\ : std_logic;
SIGNAL \u0|ALT_INV_state.estado8~regout\ : std_logic;
SIGNAL \u1|reg_1|ALT_INV_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|igual_n_max_1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \u1|igual_n_max_1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \u1|igual_n_max_1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \u1|igual_n_max_1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \u1|igual_n_max_1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \u1|igual_n_max_1|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \u1|igual_n_max_1|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \u1|igual_n_max_1|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \u0|ALT_INV_state.estado5~regout\ : std_logic;
SIGNAL \u0|ALT_INV_state.estado7~regout\ : std_logic;
SIGNAL \u0|ALT_INV_state.estado6~regout\ : std_logic;
SIGNAL \u0|ALT_INV_state.estado12~regout\ : std_logic;
SIGNAL \u0|ALT_INV_state.estado4~regout\ : std_logic;
SIGNAL \u0|ALT_INV_state.estado9~regout\ : std_logic;
SIGNAL \u0|ALT_INV_WideOr11~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_state.estado10~regout\ : std_logic;
SIGNAL \u0|ALT_INV_state.estado11~regout\ : std_logic;
SIGNAL \u0|ALT_INV_WideOr14~combout\ : std_logic;
SIGNAL \u0|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_state.estado3~regout\ : std_logic;
SIGNAL \u0|ALT_INV_WideOr12~combout\ : std_logic;
SIGNAL \u0|ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_l_a2~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_m_d~combout\ : std_logic;
SIGNAL \u0|ALT_INV_m_fib~combout\ : std_logic;
SIGNAL \u0|ALT_INV_l_fib~combout\ : std_logic;
SIGNAL \u0|ALT_INV_m_max~combout\ : std_logic;
SIGNAL \u0|ALT_INV_l_max~combout\ : std_logic;
SIGNAL \u0|ALT_INV_m_a2~combout\ : std_logic;
SIGNAL \u0|ALT_INV_l_a2~combout\ : std_logic;
SIGNAL \u0|ALT_INV_m_a1~combout\ : std_logic;
SIGNAL \u0|ALT_INV_l_a1~combout\ : std_logic;
SIGNAL \ALT_INV_read_enable_i~combout\ : std_logic;
SIGNAL \ALT_INV_write_enable_i~combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_write_enable_i <= write_enable_i;
ww_data_in <= data_in;
ww_read_enable_i <= read_enable_i;
data_o <= ww_data_o;
status_o <= ww_status_o;
irq_o <= ww_irq_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\u1|reg_n_fibonacci|ALT_INV_q\(0) <= NOT \u1|reg_n_fibonacci|q\(0);
\u1|reg_n_max|ALT_INV_q\(0) <= NOT \u1|reg_n_max|q\(0);
\u1|reg_n_max|ALT_INV_q\(20) <= NOT \u1|reg_n_max|q\(20);
\u1|reg_n_max|ALT_INV_q\(21) <= NOT \u1|reg_n_max|q\(21);
\u1|reg_n_max|ALT_INV_q\(22) <= NOT \u1|reg_n_max|q\(22);
\u1|reg_n_max|ALT_INV_q\(23) <= NOT \u1|reg_n_max|q\(23);
\u1|reg_n_max|ALT_INV_q\(24) <= NOT \u1|reg_n_max|q\(24);
\u1|reg_n_max|ALT_INV_q\(26) <= NOT \u1|reg_n_max|q\(26);
\u1|reg_n_max|ALT_INV_q\(25) <= NOT \u1|reg_n_max|q\(25);
\u1|reg_n_max|ALT_INV_q\(27) <= NOT \u1|reg_n_max|q\(27);
\u1|reg_n_max|ALT_INV_q\(28) <= NOT \u1|reg_n_max|q\(28);
\u1|reg_n_max|ALT_INV_q\(30) <= NOT \u1|reg_n_max|q\(30);
\u1|reg_n_max|ALT_INV_q\(31) <= NOT \u1|reg_n_max|q\(31);
\u1|reg_n_max|ALT_INV_q\(1) <= NOT \u1|reg_n_max|q\(1);
\u1|reg_n_max|ALT_INV_q\(29) <= NOT \u1|reg_n_max|q\(29);
\u1|reg_n_max|ALT_INV_q\(2) <= NOT \u1|reg_n_max|q\(2);
\u1|reg_n_max|ALT_INV_q\(3) <= NOT \u1|reg_n_max|q\(3);
\u1|reg_n_max|ALT_INV_q\(4) <= NOT \u1|reg_n_max|q\(4);
\u1|reg_n_max|ALT_INV_q\(5) <= NOT \u1|reg_n_max|q\(5);
\u1|reg_n_max|ALT_INV_q\(6) <= NOT \u1|reg_n_max|q\(6);
\u1|reg_n_max|ALT_INV_q\(7) <= NOT \u1|reg_n_max|q\(7);
\u1|reg_n_max|ALT_INV_q\(14) <= NOT \u1|reg_n_max|q\(14);
\u1|reg_n_max|ALT_INV_q\(15) <= NOT \u1|reg_n_max|q\(15);
\u1|reg_n_max|ALT_INV_q\(16) <= NOT \u1|reg_n_max|q\(16);
\u1|reg_n_max|ALT_INV_q\(17) <= NOT \u1|reg_n_max|q\(17);
\u1|reg_n_max|ALT_INV_q\(19) <= NOT \u1|reg_n_max|q\(19);
\u1|reg_n_max|ALT_INV_q\(18) <= NOT \u1|reg_n_max|q\(18);
\u1|reg_n_max|ALT_INV_q\(8) <= NOT \u1|reg_n_max|q\(8);
\u1|reg_n_max|ALT_INV_q\(9) <= NOT \u1|reg_n_max|q\(9);
\u1|reg_n_max|ALT_INV_q\(10) <= NOT \u1|reg_n_max|q\(10);
\u1|reg_n_max|ALT_INV_q\(11) <= NOT \u1|reg_n_max|q\(11);
\u1|reg_n_max|ALT_INV_q\(13) <= NOT \u1|reg_n_max|q\(13);
\u1|reg_n_max|ALT_INV_q\(12) <= NOT \u1|reg_n_max|q\(12);
\u1|reg_n_anterior2|ALT_INV_q\(0) <= NOT \u1|reg_n_anterior2|q\(0);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~1_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~1_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(1) <= NOT \u1|reg_n_anterior1|q\(1);
\u1|reg_n_anterior2|ALT_INV_q\(1) <= NOT \u1|reg_n_anterior2|q\(1);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~5_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~5_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(2) <= NOT \u1|reg_n_anterior1|q\(2);
\u1|reg_n_anterior2|ALT_INV_q\(2) <= NOT \u1|reg_n_anterior2|q\(2);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~9_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~9_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(3) <= NOT \u1|reg_n_anterior1|q\(3);
\u1|reg_n_anterior2|ALT_INV_q\(3) <= NOT \u1|reg_n_anterior2|q\(3);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~13_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~13_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(4) <= NOT \u1|reg_n_anterior1|q\(4);
\u1|reg_n_anterior2|ALT_INV_q\(4) <= NOT \u1|reg_n_anterior2|q\(4);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~17_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~17_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(5) <= NOT \u1|reg_n_anterior1|q\(5);
\u1|reg_n_anterior2|ALT_INV_q\(5) <= NOT \u1|reg_n_anterior2|q\(5);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~21_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~21_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(6) <= NOT \u1|reg_n_anterior1|q\(6);
\u1|reg_n_anterior2|ALT_INV_q\(6) <= NOT \u1|reg_n_anterior2|q\(6);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~25_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~25_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(7) <= NOT \u1|reg_n_anterior1|q\(7);
\u1|reg_n_anterior2|ALT_INV_q\(7) <= NOT \u1|reg_n_anterior2|q\(7);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~29_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~29_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(8) <= NOT \u1|reg_n_anterior1|q\(8);
\u1|reg_n_anterior2|ALT_INV_q\(8) <= NOT \u1|reg_n_anterior2|q\(8);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~33_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~33_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(9) <= NOT \u1|reg_n_anterior1|q\(9);
\u1|reg_n_anterior2|ALT_INV_q\(9) <= NOT \u1|reg_n_anterior2|q\(9);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~37_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~37_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(10) <= NOT \u1|reg_n_anterior1|q\(10);
\u1|reg_n_anterior2|ALT_INV_q\(10) <= NOT \u1|reg_n_anterior2|q\(10);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~41_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~41_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(11) <= NOT \u1|reg_n_anterior1|q\(11);
\u1|reg_n_anterior2|ALT_INV_q\(11) <= NOT \u1|reg_n_anterior2|q\(11);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~45_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~45_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(12) <= NOT \u1|reg_n_anterior1|q\(12);
\u1|reg_n_anterior2|ALT_INV_q\(12) <= NOT \u1|reg_n_anterior2|q\(12);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~49_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~49_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(13) <= NOT \u1|reg_n_anterior1|q\(13);
\u1|reg_n_anterior2|ALT_INV_q\(13) <= NOT \u1|reg_n_anterior2|q\(13);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~53_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~53_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(14) <= NOT \u1|reg_n_anterior1|q\(14);
\u1|reg_n_anterior2|ALT_INV_q\(14) <= NOT \u1|reg_n_anterior2|q\(14);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~57_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~57_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(15) <= NOT \u1|reg_n_anterior1|q\(15);
\u1|reg_n_anterior2|ALT_INV_q\(15) <= NOT \u1|reg_n_anterior2|q\(15);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~61_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~61_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(16) <= NOT \u1|reg_n_anterior1|q\(16);
\u1|reg_n_anterior2|ALT_INV_q\(16) <= NOT \u1|reg_n_anterior2|q\(16);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~65_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~65_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(17) <= NOT \u1|reg_n_anterior1|q\(17);
\u1|reg_n_anterior2|ALT_INV_q\(17) <= NOT \u1|reg_n_anterior2|q\(17);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~69_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~69_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(18) <= NOT \u1|reg_n_anterior1|q\(18);
\u1|reg_n_anterior2|ALT_INV_q\(18) <= NOT \u1|reg_n_anterior2|q\(18);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~73_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~73_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(19) <= NOT \u1|reg_n_anterior1|q\(19);
\u1|reg_n_anterior2|ALT_INV_q\(19) <= NOT \u1|reg_n_anterior2|q\(19);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~77_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~77_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(20) <= NOT \u1|reg_n_anterior1|q\(20);
\u1|reg_n_anterior2|ALT_INV_q\(20) <= NOT \u1|reg_n_anterior2|q\(20);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~81_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~81_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(21) <= NOT \u1|reg_n_anterior1|q\(21);
\u1|reg_n_anterior2|ALT_INV_q\(21) <= NOT \u1|reg_n_anterior2|q\(21);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~85_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~85_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(22) <= NOT \u1|reg_n_anterior1|q\(22);
\u1|reg_n_anterior2|ALT_INV_q\(22) <= NOT \u1|reg_n_anterior2|q\(22);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~89_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~89_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(23) <= NOT \u1|reg_n_anterior1|q\(23);
\u1|reg_n_anterior2|ALT_INV_q\(23) <= NOT \u1|reg_n_anterior2|q\(23);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~93_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~93_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(24) <= NOT \u1|reg_n_anterior1|q\(24);
\u1|reg_n_anterior2|ALT_INV_q\(24) <= NOT \u1|reg_n_anterior2|q\(24);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~97_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~97_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(25) <= NOT \u1|reg_n_anterior1|q\(25);
\u1|reg_n_anterior2|ALT_INV_q\(25) <= NOT \u1|reg_n_anterior2|q\(25);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~101_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~101_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(26) <= NOT \u1|reg_n_anterior1|q\(26);
\u1|reg_n_anterior2|ALT_INV_q\(26) <= NOT \u1|reg_n_anterior2|q\(26);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~105_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~105_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(27) <= NOT \u1|reg_n_anterior1|q\(27);
\u1|reg_n_anterior2|ALT_INV_q\(27) <= NOT \u1|reg_n_anterior2|q\(27);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~109_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~109_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(28) <= NOT \u1|reg_n_anterior1|q\(28);
\u1|reg_n_anterior2|ALT_INV_q\(28) <= NOT \u1|reg_n_anterior2|q\(28);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~113_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~113_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(29) <= NOT \u1|reg_n_anterior1|q\(29);
\u1|reg_n_anterior2|ALT_INV_q\(29) <= NOT \u1|reg_n_anterior2|q\(29);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~117_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~117_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(30) <= NOT \u1|reg_n_anterior1|q\(30);
\u1|reg_n_anterior2|ALT_INV_q\(30) <= NOT \u1|reg_n_anterior2|q\(30);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~121_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~121_sumout\;
\u1|reg_n_anterior1|ALT_INV_q\(31) <= NOT \u1|reg_n_anterior1|q\(31);
\u1|reg_n_anterior2|ALT_INV_q\(31) <= NOT \u1|reg_n_anterior2|q\(31);
\u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~125_sumout\ <= NOT \u1|somador_n_anterior1_n_anterior2|Add0~125_sumout\;
\u0|ALT_INV_state.estado13~regout\ <= NOT \u0|state.estado13~regout\;
\u0|ALT_INV_state.estado2~regout\ <= NOT \u0|state.estado2~regout\;
\u0|ALT_INV_state.estado0~regout\ <= NOT \u0|state.estado0~regout\;
\u0|ALT_INV_state.estado1~regout\ <= NOT \u0|state.estado1~regout\;
\u0|ALT_INV_WideOr3~combout\ <= NOT \u0|WideOr3~combout\;
\u0|ALT_INV_l_d~combout\ <= NOT \u0|l_d~combout\;
\u0|ALT_INV_state.estado8~regout\ <= NOT \u0|state.estado8~regout\;
\u1|reg_1|ALT_INV_q\(0) <= NOT \u1|reg_1|q\(0);
\u1|igual_n_max_1|ALT_INV_Equal0~0_combout\ <= NOT \u1|igual_n_max_1|Equal0~0_combout\;
\u1|igual_n_max_1|ALT_INV_Equal0~1_combout\ <= NOT \u1|igual_n_max_1|Equal0~1_combout\;
\u1|igual_n_max_1|ALT_INV_Equal0~2_combout\ <= NOT \u1|igual_n_max_1|Equal0~2_combout\;
\u1|igual_n_max_1|ALT_INV_Equal0~3_combout\ <= NOT \u1|igual_n_max_1|Equal0~3_combout\;
\u1|igual_n_max_1|ALT_INV_Equal0~4_combout\ <= NOT \u1|igual_n_max_1|Equal0~4_combout\;
\u1|igual_n_max_1|ALT_INV_Equal0~5_combout\ <= NOT \u1|igual_n_max_1|Equal0~5_combout\;
\u1|igual_n_max_1|ALT_INV_Equal0~6_combout\ <= NOT \u1|igual_n_max_1|Equal0~6_combout\;
\u1|igual_n_max_1|ALT_INV_Equal0~7_combout\ <= NOT \u1|igual_n_max_1|Equal0~7_combout\;
\u0|ALT_INV_state.estado5~regout\ <= NOT \u0|state.estado5~regout\;
\u0|ALT_INV_state.estado7~regout\ <= NOT \u0|state.estado7~regout\;
\u1|reg_n_anterior1|ALT_INV_q\(0) <= NOT \u1|reg_n_anterior1|q\(0);
\u0|ALT_INV_state.estado6~regout\ <= NOT \u0|state.estado6~regout\;
\u0|ALT_INV_state.estado12~regout\ <= NOT \u0|state.estado12~regout\;
\u0|ALT_INV_state.estado4~regout\ <= NOT \u0|state.estado4~regout\;
\u0|ALT_INV_state.estado9~regout\ <= NOT \u0|state.estado9~regout\;
\u0|ALT_INV_WideOr11~0_combout\ <= NOT \u0|WideOr11~0_combout\;
\u0|ALT_INV_state.estado10~regout\ <= NOT \u0|state.estado10~regout\;
\u0|ALT_INV_state.estado11~regout\ <= NOT \u0|state.estado11~regout\;
\u0|ALT_INV_WideOr14~combout\ <= NOT \u0|WideOr14~combout\;
\u0|ALT_INV_WideOr3~0_combout\ <= NOT \u0|WideOr3~0_combout\;
\u0|ALT_INV_state.estado3~regout\ <= NOT \u0|state.estado3~regout\;
\u0|ALT_INV_WideOr12~combout\ <= NOT \u0|WideOr12~combout\;
\u0|ALT_INV_WideOr8~0_combout\ <= NOT \u0|WideOr8~0_combout\;
\u0|ALT_INV_WideOr6~0_combout\ <= NOT \u0|WideOr6~0_combout\;
\u0|ALT_INV_l_a2~0_combout\ <= NOT \u0|l_a2~0_combout\;
\u0|ALT_INV_WideOr4~0_combout\ <= NOT \u0|WideOr4~0_combout\;
\u0|ALT_INV_m_d~combout\ <= NOT \u0|m_d~combout\;
\u0|ALT_INV_m_fib~combout\ <= NOT \u0|m_fib~combout\;
\u0|ALT_INV_l_fib~combout\ <= NOT \u0|l_fib~combout\;
\u0|ALT_INV_m_max~combout\ <= NOT \u0|m_max~combout\;
\u0|ALT_INV_l_max~combout\ <= NOT \u0|l_max~combout\;
\u0|ALT_INV_m_a2~combout\ <= NOT \u0|m_a2~combout\;
\u0|ALT_INV_l_a2~combout\ <= NOT \u0|l_a2~combout\;
\u0|ALT_INV_m_a1~combout\ <= NOT \u0|m_a1~combout\;
\u0|ALT_INV_l_a1~combout\ <= NOT \u0|l_a1~combout\;
\ALT_INV_read_enable_i~combout\ <= NOT \read_enable_i~combout\;
\ALT_INV_write_enable_i~combout\ <= NOT \write_enable_i~combout\;

-- Location: LCCOMB_X14_Y15_N0
\u1|somador_n_anterior1_n_anterior2|Add0~1\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~1_sumout\ = SUM(( \u1|reg_n_anterior2|q\(0) ) + ( \u1|reg_n_anterior1|q\(0) ) + ( !VCC ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~2\ = CARRY(( \u1|reg_n_anterior2|q\(0) ) + ( \u1|reg_n_anterior1|q\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|reg_n_anterior2|ALT_INV_q\(0),
	dataf => \u1|reg_n_anterior1|ALT_INV_q\(0),
	cin => GND,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~1_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~2\);

-- Location: LCFF_X15_Y15_N7
\u1|reg_n_anterior2|q[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(3),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(3));

-- Location: LCFF_X15_Y15_N21
\u1|reg_n_anterior2|q[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(9),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(9));

-- Location: LCFF_X15_Y14_N25
\u1|reg_n_anterior2|q[19]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(19),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(19));

-- Location: LCCOMB_X13_Y14_N30
\u1|igual_n_max_1|Equal0~5\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|igual_n_max_1|Equal0~5_combout\ = ( !\u1|reg_n_max|q\(9) & ( (!\u1|reg_n_max|q\(10) & (!\u1|reg_n_max|q\(13) & (!\u1|reg_n_max|q\(12) & !\u1|reg_n_max|q\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|reg_n_max|ALT_INV_q\(10),
	datab => \u1|reg_n_max|ALT_INV_q\(13),
	datac => \u1|reg_n_max|ALT_INV_q\(12),
	datad => \u1|reg_n_max|ALT_INV_q\(11),
	dataf => \u1|reg_n_max|ALT_INV_q\(9),
	combout => \u1|igual_n_max_1|Equal0~5_combout\);

-- Location: LCCOMB_X9_Y15_N26
\u0|WideOr14\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|WideOr14~combout\ = ( \u0|state.estado11~regout\ ) # ( !\u0|state.estado11~regout\ & ( ((\u0|state.estado10~regout\) # (\u0|state.estado12~regout\)) # (\u0|state.estado13~regout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ALT_INV_state.estado13~regout\,
	datab => \u0|ALT_INV_state.estado12~regout\,
	datad => \u0|ALT_INV_state.estado10~regout\,
	dataf => \u0|ALT_INV_state.estado11~regout\,
	combout => \u0|WideOr14~combout\);

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y15_N18
\u1|reg_n_fibonacci|q[0]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[0]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~1_sumout\,
	combout => \u1|reg_n_fibonacci|q[0]~feeder_combout\);

-- Location: LCCOMB_X13_Y14_N14
\u1|reg_1|q[0]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_1|q[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \u1|reg_1|q[0]~feeder_combout\);

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G1
\rst~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X13_Y14_N15
\u1|reg_1|q[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_1|q[0]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_1|q\(0));

-- Location: LCCOMB_X11_Y14_N0
\u1|subtrator_n_max_1|XY[0]~1\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[0]~1_sumout\ = SUM(( !\u1|reg_1|q\(0) $ (!\u1|reg_n_max|q\(0)) ) + ( !VCC ) + ( !VCC ))
-- \u1|subtrator_n_max_1|XY[0]~2\ = CARRY(( !\u1|reg_1|q\(0) $ (!\u1|reg_n_max|q\(0)) ) + ( !VCC ) + ( !VCC ))
-- \u1|subtrator_n_max_1|XY[0]~3\ = SHARE((!\u1|reg_1|q\(0)) # (\u1|reg_n_max|q\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_1|ALT_INV_q\(0),
	datad => \u1|reg_n_max|ALT_INV_q\(0),
	cin => GND,
	sharein => GND,
	sumout => \u1|subtrator_n_max_1|XY[0]~1_sumout\,
	cout => \u1|subtrator_n_max_1|XY[0]~2\,
	shareout => \u1|subtrator_n_max_1|XY[0]~3\);

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(0),
	combout => \data_in~combout\(0));

-- Location: LCCOMB_X11_Y14_N2
\u1|subtrator_n_max_1|XY[1]~5\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[1]~5_sumout\ = SUM(( !\u1|reg_n_max|q\(1) ) + ( \u1|subtrator_n_max_1|XY[0]~3\ ) + ( \u1|subtrator_n_max_1|XY[0]~2\ ))
-- \u1|subtrator_n_max_1|XY[1]~6\ = CARRY(( !\u1|reg_n_max|q\(1) ) + ( \u1|subtrator_n_max_1|XY[0]~3\ ) + ( \u1|subtrator_n_max_1|XY[0]~2\ ))
-- \u1|subtrator_n_max_1|XY[1]~7\ = SHARE(\u1|reg_n_max|q\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(1),
	cin => \u1|subtrator_n_max_1|XY[0]~2\,
	sharein => \u1|subtrator_n_max_1|XY[0]~3\,
	sumout => \u1|subtrator_n_max_1|XY[1]~5_sumout\,
	cout => \u1|subtrator_n_max_1|XY[1]~6\,
	shareout => \u1|subtrator_n_max_1|XY[1]~7\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(1),
	combout => \data_in~combout\(1));

-- Location: LCCOMB_X11_Y14_N4
\u1|subtrator_n_max_1|XY[2]~9\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[2]~9_sumout\ = SUM(( !\u1|reg_n_max|q\(2) ) + ( \u1|subtrator_n_max_1|XY[1]~7\ ) + ( \u1|subtrator_n_max_1|XY[1]~6\ ))
-- \u1|subtrator_n_max_1|XY[2]~10\ = CARRY(( !\u1|reg_n_max|q\(2) ) + ( \u1|subtrator_n_max_1|XY[1]~7\ ) + ( \u1|subtrator_n_max_1|XY[1]~6\ ))
-- \u1|subtrator_n_max_1|XY[2]~11\ = SHARE(\u1|reg_n_max|q\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(2),
	cin => \u1|subtrator_n_max_1|XY[1]~6\,
	sharein => \u1|subtrator_n_max_1|XY[1]~7\,
	sumout => \u1|subtrator_n_max_1|XY[2]~9_sumout\,
	cout => \u1|subtrator_n_max_1|XY[2]~10\,
	shareout => \u1|subtrator_n_max_1|XY[2]~11\);

-- Location: LCCOMB_X11_Y14_N6
\u1|subtrator_n_max_1|XY[3]~13\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[3]~13_sumout\ = SUM(( !\u1|reg_n_max|q\(3) ) + ( \u1|subtrator_n_max_1|XY[2]~11\ ) + ( \u1|subtrator_n_max_1|XY[2]~10\ ))
-- \u1|subtrator_n_max_1|XY[3]~14\ = CARRY(( !\u1|reg_n_max|q\(3) ) + ( \u1|subtrator_n_max_1|XY[2]~11\ ) + ( \u1|subtrator_n_max_1|XY[2]~10\ ))
-- \u1|subtrator_n_max_1|XY[3]~15\ = SHARE(\u1|reg_n_max|q\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(3),
	cin => \u1|subtrator_n_max_1|XY[2]~10\,
	sharein => \u1|subtrator_n_max_1|XY[2]~11\,
	sumout => \u1|subtrator_n_max_1|XY[3]~13_sumout\,
	cout => \u1|subtrator_n_max_1|XY[3]~14\,
	shareout => \u1|subtrator_n_max_1|XY[3]~15\);

-- Location: LCCOMB_X11_Y14_N8
\u1|subtrator_n_max_1|XY[4]~17\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[4]~17_sumout\ = SUM(( !\u1|reg_n_max|q\(4) ) + ( \u1|subtrator_n_max_1|XY[3]~15\ ) + ( \u1|subtrator_n_max_1|XY[3]~14\ ))
-- \u1|subtrator_n_max_1|XY[4]~18\ = CARRY(( !\u1|reg_n_max|q\(4) ) + ( \u1|subtrator_n_max_1|XY[3]~15\ ) + ( \u1|subtrator_n_max_1|XY[3]~14\ ))
-- \u1|subtrator_n_max_1|XY[4]~19\ = SHARE(\u1|reg_n_max|q\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(4),
	cin => \u1|subtrator_n_max_1|XY[3]~14\,
	sharein => \u1|subtrator_n_max_1|XY[3]~15\,
	sumout => \u1|subtrator_n_max_1|XY[4]~17_sumout\,
	cout => \u1|subtrator_n_max_1|XY[4]~18\,
	shareout => \u1|subtrator_n_max_1|XY[4]~19\);

-- Location: LCCOMB_X11_Y14_N10
\u1|subtrator_n_max_1|XY[5]~21\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[5]~21_sumout\ = SUM(( !\u1|reg_n_max|q\(5) ) + ( \u1|subtrator_n_max_1|XY[4]~19\ ) + ( \u1|subtrator_n_max_1|XY[4]~18\ ))
-- \u1|subtrator_n_max_1|XY[5]~22\ = CARRY(( !\u1|reg_n_max|q\(5) ) + ( \u1|subtrator_n_max_1|XY[4]~19\ ) + ( \u1|subtrator_n_max_1|XY[4]~18\ ))
-- \u1|subtrator_n_max_1|XY[5]~23\ = SHARE(\u1|reg_n_max|q\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(5),
	cin => \u1|subtrator_n_max_1|XY[4]~18\,
	sharein => \u1|subtrator_n_max_1|XY[4]~19\,
	sumout => \u1|subtrator_n_max_1|XY[5]~21_sumout\,
	cout => \u1|subtrator_n_max_1|XY[5]~22\,
	shareout => \u1|subtrator_n_max_1|XY[5]~23\);

-- Location: LCCOMB_X11_Y14_N12
\u1|subtrator_n_max_1|XY[6]~25\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[6]~25_sumout\ = SUM(( !\u1|reg_n_max|q\(6) ) + ( \u1|subtrator_n_max_1|XY[5]~23\ ) + ( \u1|subtrator_n_max_1|XY[5]~22\ ))
-- \u1|subtrator_n_max_1|XY[6]~26\ = CARRY(( !\u1|reg_n_max|q\(6) ) + ( \u1|subtrator_n_max_1|XY[5]~23\ ) + ( \u1|subtrator_n_max_1|XY[5]~22\ ))
-- \u1|subtrator_n_max_1|XY[6]~27\ = SHARE(\u1|reg_n_max|q\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(6),
	cin => \u1|subtrator_n_max_1|XY[5]~22\,
	sharein => \u1|subtrator_n_max_1|XY[5]~23\,
	sumout => \u1|subtrator_n_max_1|XY[6]~25_sumout\,
	cout => \u1|subtrator_n_max_1|XY[6]~26\,
	shareout => \u1|subtrator_n_max_1|XY[6]~27\);

-- Location: LCCOMB_X11_Y14_N14
\u1|subtrator_n_max_1|XY[7]~29\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[7]~29_sumout\ = SUM(( !\u1|reg_n_max|q\(7) ) + ( \u1|subtrator_n_max_1|XY[6]~27\ ) + ( \u1|subtrator_n_max_1|XY[6]~26\ ))
-- \u1|subtrator_n_max_1|XY[7]~30\ = CARRY(( !\u1|reg_n_max|q\(7) ) + ( \u1|subtrator_n_max_1|XY[6]~27\ ) + ( \u1|subtrator_n_max_1|XY[6]~26\ ))
-- \u1|subtrator_n_max_1|XY[7]~31\ = SHARE(\u1|reg_n_max|q\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(7),
	cin => \u1|subtrator_n_max_1|XY[6]~26\,
	sharein => \u1|subtrator_n_max_1|XY[6]~27\,
	sumout => \u1|subtrator_n_max_1|XY[7]~29_sumout\,
	cout => \u1|subtrator_n_max_1|XY[7]~30\,
	shareout => \u1|subtrator_n_max_1|XY[7]~31\);

-- Location: LCCOMB_X11_Y14_N16
\u1|subtrator_n_max_1|XY[8]~33\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[8]~33_sumout\ = SUM(( !\u1|reg_n_max|q\(8) ) + ( \u1|subtrator_n_max_1|XY[7]~31\ ) + ( \u1|subtrator_n_max_1|XY[7]~30\ ))
-- \u1|subtrator_n_max_1|XY[8]~34\ = CARRY(( !\u1|reg_n_max|q\(8) ) + ( \u1|subtrator_n_max_1|XY[7]~31\ ) + ( \u1|subtrator_n_max_1|XY[7]~30\ ))
-- \u1|subtrator_n_max_1|XY[8]~35\ = SHARE(\u1|reg_n_max|q\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(8),
	cin => \u1|subtrator_n_max_1|XY[7]~30\,
	sharein => \u1|subtrator_n_max_1|XY[7]~31\,
	sumout => \u1|subtrator_n_max_1|XY[8]~33_sumout\,
	cout => \u1|subtrator_n_max_1|XY[8]~34\,
	shareout => \u1|subtrator_n_max_1|XY[8]~35\);

-- Location: LCCOMB_X11_Y14_N18
\u1|subtrator_n_max_1|XY[9]~37\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[9]~37_sumout\ = SUM(( !\u1|reg_n_max|q\(9) ) + ( \u1|subtrator_n_max_1|XY[8]~35\ ) + ( \u1|subtrator_n_max_1|XY[8]~34\ ))
-- \u1|subtrator_n_max_1|XY[9]~38\ = CARRY(( !\u1|reg_n_max|q\(9) ) + ( \u1|subtrator_n_max_1|XY[8]~35\ ) + ( \u1|subtrator_n_max_1|XY[8]~34\ ))
-- \u1|subtrator_n_max_1|XY[9]~39\ = SHARE(\u1|reg_n_max|q\(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(9),
	cin => \u1|subtrator_n_max_1|XY[8]~34\,
	sharein => \u1|subtrator_n_max_1|XY[8]~35\,
	sumout => \u1|subtrator_n_max_1|XY[9]~37_sumout\,
	cout => \u1|subtrator_n_max_1|XY[9]~38\,
	shareout => \u1|subtrator_n_max_1|XY[9]~39\);

-- Location: LCCOMB_X11_Y14_N20
\u1|subtrator_n_max_1|XY[10]~41\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[10]~41_sumout\ = SUM(( !\u1|reg_n_max|q\(10) ) + ( \u1|subtrator_n_max_1|XY[9]~39\ ) + ( \u1|subtrator_n_max_1|XY[9]~38\ ))
-- \u1|subtrator_n_max_1|XY[10]~42\ = CARRY(( !\u1|reg_n_max|q\(10) ) + ( \u1|subtrator_n_max_1|XY[9]~39\ ) + ( \u1|subtrator_n_max_1|XY[9]~38\ ))
-- \u1|subtrator_n_max_1|XY[10]~43\ = SHARE(\u1|reg_n_max|q\(10))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(10),
	cin => \u1|subtrator_n_max_1|XY[9]~38\,
	sharein => \u1|subtrator_n_max_1|XY[9]~39\,
	sumout => \u1|subtrator_n_max_1|XY[10]~41_sumout\,
	cout => \u1|subtrator_n_max_1|XY[10]~42\,
	shareout => \u1|subtrator_n_max_1|XY[10]~43\);

-- Location: LCCOMB_X11_Y14_N22
\u1|subtrator_n_max_1|XY[11]~45\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[11]~45_sumout\ = SUM(( !\u1|reg_n_max|q\(11) ) + ( \u1|subtrator_n_max_1|XY[10]~43\ ) + ( \u1|subtrator_n_max_1|XY[10]~42\ ))
-- \u1|subtrator_n_max_1|XY[11]~46\ = CARRY(( !\u1|reg_n_max|q\(11) ) + ( \u1|subtrator_n_max_1|XY[10]~43\ ) + ( \u1|subtrator_n_max_1|XY[10]~42\ ))
-- \u1|subtrator_n_max_1|XY[11]~47\ = SHARE(\u1|reg_n_max|q\(11))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(11),
	cin => \u1|subtrator_n_max_1|XY[10]~42\,
	sharein => \u1|subtrator_n_max_1|XY[10]~43\,
	sumout => \u1|subtrator_n_max_1|XY[11]~45_sumout\,
	cout => \u1|subtrator_n_max_1|XY[11]~46\,
	shareout => \u1|subtrator_n_max_1|XY[11]~47\);

-- Location: LCCOMB_X11_Y14_N24
\u1|subtrator_n_max_1|XY[12]~49\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[12]~49_sumout\ = SUM(( !\u1|reg_n_max|q\(12) ) + ( \u1|subtrator_n_max_1|XY[11]~47\ ) + ( \u1|subtrator_n_max_1|XY[11]~46\ ))
-- \u1|subtrator_n_max_1|XY[12]~50\ = CARRY(( !\u1|reg_n_max|q\(12) ) + ( \u1|subtrator_n_max_1|XY[11]~47\ ) + ( \u1|subtrator_n_max_1|XY[11]~46\ ))
-- \u1|subtrator_n_max_1|XY[12]~51\ = SHARE(\u1|reg_n_max|q\(12))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(12),
	cin => \u1|subtrator_n_max_1|XY[11]~46\,
	sharein => \u1|subtrator_n_max_1|XY[11]~47\,
	sumout => \u1|subtrator_n_max_1|XY[12]~49_sumout\,
	cout => \u1|subtrator_n_max_1|XY[12]~50\,
	shareout => \u1|subtrator_n_max_1|XY[12]~51\);

-- Location: LCCOMB_X11_Y14_N26
\u1|subtrator_n_max_1|XY[13]~53\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[13]~53_sumout\ = SUM(( !\u1|reg_n_max|q\(13) ) + ( \u1|subtrator_n_max_1|XY[12]~51\ ) + ( \u1|subtrator_n_max_1|XY[12]~50\ ))
-- \u1|subtrator_n_max_1|XY[13]~54\ = CARRY(( !\u1|reg_n_max|q\(13) ) + ( \u1|subtrator_n_max_1|XY[12]~51\ ) + ( \u1|subtrator_n_max_1|XY[12]~50\ ))
-- \u1|subtrator_n_max_1|XY[13]~55\ = SHARE(\u1|reg_n_max|q\(13))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(13),
	cin => \u1|subtrator_n_max_1|XY[12]~50\,
	sharein => \u1|subtrator_n_max_1|XY[12]~51\,
	sumout => \u1|subtrator_n_max_1|XY[13]~53_sumout\,
	cout => \u1|subtrator_n_max_1|XY[13]~54\,
	shareout => \u1|subtrator_n_max_1|XY[13]~55\);

-- Location: LCCOMB_X11_Y14_N28
\u1|subtrator_n_max_1|XY[14]~57\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[14]~57_sumout\ = SUM(( !\u1|reg_n_max|q\(14) ) + ( \u1|subtrator_n_max_1|XY[13]~55\ ) + ( \u1|subtrator_n_max_1|XY[13]~54\ ))
-- \u1|subtrator_n_max_1|XY[14]~58\ = CARRY(( !\u1|reg_n_max|q\(14) ) + ( \u1|subtrator_n_max_1|XY[13]~55\ ) + ( \u1|subtrator_n_max_1|XY[13]~54\ ))
-- \u1|subtrator_n_max_1|XY[14]~59\ = SHARE(\u1|reg_n_max|q\(14))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(14),
	cin => \u1|subtrator_n_max_1|XY[13]~54\,
	sharein => \u1|subtrator_n_max_1|XY[13]~55\,
	sumout => \u1|subtrator_n_max_1|XY[14]~57_sumout\,
	cout => \u1|subtrator_n_max_1|XY[14]~58\,
	shareout => \u1|subtrator_n_max_1|XY[14]~59\);

-- Location: LCCOMB_X11_Y14_N30
\u1|subtrator_n_max_1|XY[15]~61\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[15]~61_sumout\ = SUM(( !\u1|reg_n_max|q\(15) ) + ( \u1|subtrator_n_max_1|XY[14]~59\ ) + ( \u1|subtrator_n_max_1|XY[14]~58\ ))
-- \u1|subtrator_n_max_1|XY[15]~62\ = CARRY(( !\u1|reg_n_max|q\(15) ) + ( \u1|subtrator_n_max_1|XY[14]~59\ ) + ( \u1|subtrator_n_max_1|XY[14]~58\ ))
-- \u1|subtrator_n_max_1|XY[15]~63\ = SHARE(\u1|reg_n_max|q\(15))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(15),
	cin => \u1|subtrator_n_max_1|XY[14]~58\,
	sharein => \u1|subtrator_n_max_1|XY[14]~59\,
	sumout => \u1|subtrator_n_max_1|XY[15]~61_sumout\,
	cout => \u1|subtrator_n_max_1|XY[15]~62\,
	shareout => \u1|subtrator_n_max_1|XY[15]~63\);

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(15),
	combout => \data_in~combout\(15));

-- Location: LCFF_X11_Y14_N31
\u1|reg_n_max|q[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[15]~61_sumout\,
	adatasdata => \data_in~combout\(15),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(15));

-- Location: LCCOMB_X11_Y13_N0
\u1|subtrator_n_max_1|XY[16]~65\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[16]~65_sumout\ = SUM(( !\u1|reg_n_max|q\(16) ) + ( \u1|subtrator_n_max_1|XY[15]~63\ ) + ( \u1|subtrator_n_max_1|XY[15]~62\ ))
-- \u1|subtrator_n_max_1|XY[16]~66\ = CARRY(( !\u1|reg_n_max|q\(16) ) + ( \u1|subtrator_n_max_1|XY[15]~63\ ) + ( \u1|subtrator_n_max_1|XY[15]~62\ ))
-- \u1|subtrator_n_max_1|XY[16]~67\ = SHARE(\u1|reg_n_max|q\(16))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(16),
	cin => \u1|subtrator_n_max_1|XY[15]~62\,
	sharein => \u1|subtrator_n_max_1|XY[15]~63\,
	sumout => \u1|subtrator_n_max_1|XY[16]~65_sumout\,
	cout => \u1|subtrator_n_max_1|XY[16]~66\,
	shareout => \u1|subtrator_n_max_1|XY[16]~67\);

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[16]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(16),
	combout => \data_in~combout\(16));

-- Location: LCFF_X11_Y13_N1
\u1|reg_n_max|q[16]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[16]~65_sumout\,
	adatasdata => \data_in~combout\(16),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(16));

-- Location: LCCOMB_X11_Y13_N2
\u1|subtrator_n_max_1|XY[17]~69\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[17]~69_sumout\ = SUM(( !\u1|reg_n_max|q\(17) ) + ( \u1|subtrator_n_max_1|XY[16]~67\ ) + ( \u1|subtrator_n_max_1|XY[16]~66\ ))
-- \u1|subtrator_n_max_1|XY[17]~70\ = CARRY(( !\u1|reg_n_max|q\(17) ) + ( \u1|subtrator_n_max_1|XY[16]~67\ ) + ( \u1|subtrator_n_max_1|XY[16]~66\ ))
-- \u1|subtrator_n_max_1|XY[17]~71\ = SHARE(\u1|reg_n_max|q\(17))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(17),
	cin => \u1|subtrator_n_max_1|XY[16]~66\,
	sharein => \u1|subtrator_n_max_1|XY[16]~67\,
	sumout => \u1|subtrator_n_max_1|XY[17]~69_sumout\,
	cout => \u1|subtrator_n_max_1|XY[17]~70\,
	shareout => \u1|subtrator_n_max_1|XY[17]~71\);

-- Location: PIN_P21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[17]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(17),
	combout => \data_in~combout\(17));

-- Location: LCFF_X11_Y13_N3
\u1|reg_n_max|q[17]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[17]~69_sumout\,
	adatasdata => \data_in~combout\(17),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(17));

-- Location: LCCOMB_X11_Y13_N4
\u1|subtrator_n_max_1|XY[18]~73\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[18]~73_sumout\ = SUM(( !\u1|reg_n_max|q\(18) ) + ( \u1|subtrator_n_max_1|XY[17]~71\ ) + ( \u1|subtrator_n_max_1|XY[17]~70\ ))
-- \u1|subtrator_n_max_1|XY[18]~74\ = CARRY(( !\u1|reg_n_max|q\(18) ) + ( \u1|subtrator_n_max_1|XY[17]~71\ ) + ( \u1|subtrator_n_max_1|XY[17]~70\ ))
-- \u1|subtrator_n_max_1|XY[18]~75\ = SHARE(\u1|reg_n_max|q\(18))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(18),
	cin => \u1|subtrator_n_max_1|XY[17]~70\,
	sharein => \u1|subtrator_n_max_1|XY[17]~71\,
	sumout => \u1|subtrator_n_max_1|XY[18]~73_sumout\,
	cout => \u1|subtrator_n_max_1|XY[18]~74\,
	shareout => \u1|subtrator_n_max_1|XY[18]~75\);

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[18]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(18),
	combout => \data_in~combout\(18));

-- Location: LCFF_X11_Y13_N5
\u1|reg_n_max|q[18]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[18]~73_sumout\,
	adatasdata => \data_in~combout\(18),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(18));

-- Location: LCCOMB_X11_Y13_N6
\u1|subtrator_n_max_1|XY[19]~77\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[19]~77_sumout\ = SUM(( !\u1|reg_n_max|q\(19) ) + ( \u1|subtrator_n_max_1|XY[18]~75\ ) + ( \u1|subtrator_n_max_1|XY[18]~74\ ))
-- \u1|subtrator_n_max_1|XY[19]~78\ = CARRY(( !\u1|reg_n_max|q\(19) ) + ( \u1|subtrator_n_max_1|XY[18]~75\ ) + ( \u1|subtrator_n_max_1|XY[18]~74\ ))
-- \u1|subtrator_n_max_1|XY[19]~79\ = SHARE(\u1|reg_n_max|q\(19))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(19),
	cin => \u1|subtrator_n_max_1|XY[18]~74\,
	sharein => \u1|subtrator_n_max_1|XY[18]~75\,
	sumout => \u1|subtrator_n_max_1|XY[19]~77_sumout\,
	cout => \u1|subtrator_n_max_1|XY[19]~78\,
	shareout => \u1|subtrator_n_max_1|XY[19]~79\);

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[19]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(19),
	combout => \data_in~combout\(19));

-- Location: LCFF_X11_Y13_N7
\u1|reg_n_max|q[19]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[19]~77_sumout\,
	adatasdata => \data_in~combout\(19),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(19));

-- Location: LCCOMB_X11_Y13_N8
\u1|subtrator_n_max_1|XY[20]~81\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[20]~81_sumout\ = SUM(( !\u1|reg_n_max|q\(20) ) + ( \u1|subtrator_n_max_1|XY[19]~79\ ) + ( \u1|subtrator_n_max_1|XY[19]~78\ ))
-- \u1|subtrator_n_max_1|XY[20]~82\ = CARRY(( !\u1|reg_n_max|q\(20) ) + ( \u1|subtrator_n_max_1|XY[19]~79\ ) + ( \u1|subtrator_n_max_1|XY[19]~78\ ))
-- \u1|subtrator_n_max_1|XY[20]~83\ = SHARE(\u1|reg_n_max|q\(20))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(20),
	cin => \u1|subtrator_n_max_1|XY[19]~78\,
	sharein => \u1|subtrator_n_max_1|XY[19]~79\,
	sumout => \u1|subtrator_n_max_1|XY[20]~81_sumout\,
	cout => \u1|subtrator_n_max_1|XY[20]~82\,
	shareout => \u1|subtrator_n_max_1|XY[20]~83\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[20]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(20),
	combout => \data_in~combout\(20));

-- Location: LCFF_X11_Y13_N9
\u1|reg_n_max|q[20]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[20]~81_sumout\,
	adatasdata => \data_in~combout\(20),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(20));

-- Location: LCCOMB_X11_Y13_N10
\u1|subtrator_n_max_1|XY[21]~85\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[21]~85_sumout\ = SUM(( !\u1|reg_n_max|q\(21) ) + ( \u1|subtrator_n_max_1|XY[20]~83\ ) + ( \u1|subtrator_n_max_1|XY[20]~82\ ))
-- \u1|subtrator_n_max_1|XY[21]~86\ = CARRY(( !\u1|reg_n_max|q\(21) ) + ( \u1|subtrator_n_max_1|XY[20]~83\ ) + ( \u1|subtrator_n_max_1|XY[20]~82\ ))
-- \u1|subtrator_n_max_1|XY[21]~87\ = SHARE(\u1|reg_n_max|q\(21))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(21),
	cin => \u1|subtrator_n_max_1|XY[20]~82\,
	sharein => \u1|subtrator_n_max_1|XY[20]~83\,
	sumout => \u1|subtrator_n_max_1|XY[21]~85_sumout\,
	cout => \u1|subtrator_n_max_1|XY[21]~86\,
	shareout => \u1|subtrator_n_max_1|XY[21]~87\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[21]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(21),
	combout => \data_in~combout\(21));

-- Location: LCFF_X11_Y13_N11
\u1|reg_n_max|q[21]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[21]~85_sumout\,
	adatasdata => \data_in~combout\(21),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(21));

-- Location: LCCOMB_X11_Y13_N12
\u1|subtrator_n_max_1|XY[22]~89\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[22]~89_sumout\ = SUM(( !\u1|reg_n_max|q\(22) ) + ( \u1|subtrator_n_max_1|XY[21]~87\ ) + ( \u1|subtrator_n_max_1|XY[21]~86\ ))
-- \u1|subtrator_n_max_1|XY[22]~90\ = CARRY(( !\u1|reg_n_max|q\(22) ) + ( \u1|subtrator_n_max_1|XY[21]~87\ ) + ( \u1|subtrator_n_max_1|XY[21]~86\ ))
-- \u1|subtrator_n_max_1|XY[22]~91\ = SHARE(\u1|reg_n_max|q\(22))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(22),
	cin => \u1|subtrator_n_max_1|XY[21]~86\,
	sharein => \u1|subtrator_n_max_1|XY[21]~87\,
	sumout => \u1|subtrator_n_max_1|XY[22]~89_sumout\,
	cout => \u1|subtrator_n_max_1|XY[22]~90\,
	shareout => \u1|subtrator_n_max_1|XY[22]~91\);

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[22]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(22),
	combout => \data_in~combout\(22));

-- Location: LCFF_X11_Y13_N13
\u1|reg_n_max|q[22]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[22]~89_sumout\,
	adatasdata => \data_in~combout\(22),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(22));

-- Location: LCCOMB_X11_Y13_N14
\u1|subtrator_n_max_1|XY[23]~93\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[23]~93_sumout\ = SUM(( !\u1|reg_n_max|q\(23) ) + ( \u1|subtrator_n_max_1|XY[22]~91\ ) + ( \u1|subtrator_n_max_1|XY[22]~90\ ))
-- \u1|subtrator_n_max_1|XY[23]~94\ = CARRY(( !\u1|reg_n_max|q\(23) ) + ( \u1|subtrator_n_max_1|XY[22]~91\ ) + ( \u1|subtrator_n_max_1|XY[22]~90\ ))
-- \u1|subtrator_n_max_1|XY[23]~95\ = SHARE(\u1|reg_n_max|q\(23))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(23),
	cin => \u1|subtrator_n_max_1|XY[22]~90\,
	sharein => \u1|subtrator_n_max_1|XY[22]~91\,
	sumout => \u1|subtrator_n_max_1|XY[23]~93_sumout\,
	cout => \u1|subtrator_n_max_1|XY[23]~94\,
	shareout => \u1|subtrator_n_max_1|XY[23]~95\);

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[23]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(23),
	combout => \data_in~combout\(23));

-- Location: LCFF_X11_Y13_N15
\u1|reg_n_max|q[23]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[23]~93_sumout\,
	adatasdata => \data_in~combout\(23),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(23));

-- Location: LCCOMB_X11_Y13_N16
\u1|subtrator_n_max_1|XY[24]~97\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[24]~97_sumout\ = SUM(( !\u1|reg_n_max|q\(24) ) + ( \u1|subtrator_n_max_1|XY[23]~95\ ) + ( \u1|subtrator_n_max_1|XY[23]~94\ ))
-- \u1|subtrator_n_max_1|XY[24]~98\ = CARRY(( !\u1|reg_n_max|q\(24) ) + ( \u1|subtrator_n_max_1|XY[23]~95\ ) + ( \u1|subtrator_n_max_1|XY[23]~94\ ))
-- \u1|subtrator_n_max_1|XY[24]~99\ = SHARE(\u1|reg_n_max|q\(24))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(24),
	cin => \u1|subtrator_n_max_1|XY[23]~94\,
	sharein => \u1|subtrator_n_max_1|XY[23]~95\,
	sumout => \u1|subtrator_n_max_1|XY[24]~97_sumout\,
	cout => \u1|subtrator_n_max_1|XY[24]~98\,
	shareout => \u1|subtrator_n_max_1|XY[24]~99\);

-- Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[24]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(24),
	combout => \data_in~combout\(24));

-- Location: LCFF_X11_Y13_N17
\u1|reg_n_max|q[24]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[24]~97_sumout\,
	adatasdata => \data_in~combout\(24),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(24));

-- Location: LCCOMB_X11_Y13_N18
\u1|subtrator_n_max_1|XY[25]~101\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[25]~101_sumout\ = SUM(( !\u1|reg_n_max|q\(25) ) + ( \u1|subtrator_n_max_1|XY[24]~99\ ) + ( \u1|subtrator_n_max_1|XY[24]~98\ ))
-- \u1|subtrator_n_max_1|XY[25]~102\ = CARRY(( !\u1|reg_n_max|q\(25) ) + ( \u1|subtrator_n_max_1|XY[24]~99\ ) + ( \u1|subtrator_n_max_1|XY[24]~98\ ))
-- \u1|subtrator_n_max_1|XY[25]~103\ = SHARE(\u1|reg_n_max|q\(25))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(25),
	cin => \u1|subtrator_n_max_1|XY[24]~98\,
	sharein => \u1|subtrator_n_max_1|XY[24]~99\,
	sumout => \u1|subtrator_n_max_1|XY[25]~101_sumout\,
	cout => \u1|subtrator_n_max_1|XY[25]~102\,
	shareout => \u1|subtrator_n_max_1|XY[25]~103\);

-- Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[25]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(25),
	combout => \data_in~combout\(25));

-- Location: LCFF_X11_Y13_N19
\u1|reg_n_max|q[25]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[25]~101_sumout\,
	adatasdata => \data_in~combout\(25),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(25));

-- Location: LCCOMB_X11_Y13_N20
\u1|subtrator_n_max_1|XY[26]~105\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[26]~105_sumout\ = SUM(( !\u1|reg_n_max|q\(26) ) + ( \u1|subtrator_n_max_1|XY[25]~103\ ) + ( \u1|subtrator_n_max_1|XY[25]~102\ ))
-- \u1|subtrator_n_max_1|XY[26]~106\ = CARRY(( !\u1|reg_n_max|q\(26) ) + ( \u1|subtrator_n_max_1|XY[25]~103\ ) + ( \u1|subtrator_n_max_1|XY[25]~102\ ))
-- \u1|subtrator_n_max_1|XY[26]~107\ = SHARE(\u1|reg_n_max|q\(26))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(26),
	cin => \u1|subtrator_n_max_1|XY[25]~102\,
	sharein => \u1|subtrator_n_max_1|XY[25]~103\,
	sumout => \u1|subtrator_n_max_1|XY[26]~105_sumout\,
	cout => \u1|subtrator_n_max_1|XY[26]~106\,
	shareout => \u1|subtrator_n_max_1|XY[26]~107\);

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[26]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(26),
	combout => \data_in~combout\(26));

-- Location: LCFF_X11_Y13_N21
\u1|reg_n_max|q[26]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[26]~105_sumout\,
	adatasdata => \data_in~combout\(26),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(26));

-- Location: LCCOMB_X11_Y13_N22
\u1|subtrator_n_max_1|XY[27]~109\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[27]~109_sumout\ = SUM(( !\u1|reg_n_max|q\(27) ) + ( \u1|subtrator_n_max_1|XY[26]~107\ ) + ( \u1|subtrator_n_max_1|XY[26]~106\ ))
-- \u1|subtrator_n_max_1|XY[27]~110\ = CARRY(( !\u1|reg_n_max|q\(27) ) + ( \u1|subtrator_n_max_1|XY[26]~107\ ) + ( \u1|subtrator_n_max_1|XY[26]~106\ ))
-- \u1|subtrator_n_max_1|XY[27]~111\ = SHARE(\u1|reg_n_max|q\(27))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(27),
	cin => \u1|subtrator_n_max_1|XY[26]~106\,
	sharein => \u1|subtrator_n_max_1|XY[26]~107\,
	sumout => \u1|subtrator_n_max_1|XY[27]~109_sumout\,
	cout => \u1|subtrator_n_max_1|XY[27]~110\,
	shareout => \u1|subtrator_n_max_1|XY[27]~111\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[27]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(27),
	combout => \data_in~combout\(27));

-- Location: LCFF_X11_Y13_N23
\u1|reg_n_max|q[27]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[27]~109_sumout\,
	adatasdata => \data_in~combout\(27),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(27));

-- Location: LCCOMB_X11_Y13_N24
\u1|subtrator_n_max_1|XY[28]~113\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[28]~113_sumout\ = SUM(( !\u1|reg_n_max|q\(28) ) + ( \u1|subtrator_n_max_1|XY[27]~111\ ) + ( \u1|subtrator_n_max_1|XY[27]~110\ ))
-- \u1|subtrator_n_max_1|XY[28]~114\ = CARRY(( !\u1|reg_n_max|q\(28) ) + ( \u1|subtrator_n_max_1|XY[27]~111\ ) + ( \u1|subtrator_n_max_1|XY[27]~110\ ))
-- \u1|subtrator_n_max_1|XY[28]~115\ = SHARE(\u1|reg_n_max|q\(28))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(28),
	cin => \u1|subtrator_n_max_1|XY[27]~110\,
	sharein => \u1|subtrator_n_max_1|XY[27]~111\,
	sumout => \u1|subtrator_n_max_1|XY[28]~113_sumout\,
	cout => \u1|subtrator_n_max_1|XY[28]~114\,
	shareout => \u1|subtrator_n_max_1|XY[28]~115\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[28]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(28),
	combout => \data_in~combout\(28));

-- Location: LCFF_X11_Y13_N25
\u1|reg_n_max|q[28]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[28]~113_sumout\,
	adatasdata => \data_in~combout\(28),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(28));

-- Location: LCCOMB_X11_Y13_N26
\u1|subtrator_n_max_1|XY[29]~117\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[29]~117_sumout\ = SUM(( !\u1|reg_n_max|q\(29) ) + ( \u1|subtrator_n_max_1|XY[28]~115\ ) + ( \u1|subtrator_n_max_1|XY[28]~114\ ))
-- \u1|subtrator_n_max_1|XY[29]~118\ = CARRY(( !\u1|reg_n_max|q\(29) ) + ( \u1|subtrator_n_max_1|XY[28]~115\ ) + ( \u1|subtrator_n_max_1|XY[28]~114\ ))
-- \u1|subtrator_n_max_1|XY[29]~119\ = SHARE(\u1|reg_n_max|q\(29))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(29),
	cin => \u1|subtrator_n_max_1|XY[28]~114\,
	sharein => \u1|subtrator_n_max_1|XY[28]~115\,
	sumout => \u1|subtrator_n_max_1|XY[29]~117_sumout\,
	cout => \u1|subtrator_n_max_1|XY[29]~118\,
	shareout => \u1|subtrator_n_max_1|XY[29]~119\);

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[29]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(29),
	combout => \data_in~combout\(29));

-- Location: LCFF_X11_Y13_N27
\u1|reg_n_max|q[29]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[29]~117_sumout\,
	adatasdata => \data_in~combout\(29),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(29));

-- Location: LCCOMB_X11_Y13_N28
\u1|subtrator_n_max_1|XY[30]~121\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[30]~121_sumout\ = SUM(( !\u1|reg_n_max|q\(30) ) + ( \u1|subtrator_n_max_1|XY[29]~119\ ) + ( \u1|subtrator_n_max_1|XY[29]~118\ ))
-- \u1|subtrator_n_max_1|XY[30]~122\ = CARRY(( !\u1|reg_n_max|q\(30) ) + ( \u1|subtrator_n_max_1|XY[29]~119\ ) + ( \u1|subtrator_n_max_1|XY[29]~118\ ))
-- \u1|subtrator_n_max_1|XY[30]~123\ = SHARE(\u1|reg_n_max|q\(30))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(30),
	cin => \u1|subtrator_n_max_1|XY[29]~118\,
	sharein => \u1|subtrator_n_max_1|XY[29]~119\,
	sumout => \u1|subtrator_n_max_1|XY[30]~121_sumout\,
	cout => \u1|subtrator_n_max_1|XY[30]~122\,
	shareout => \u1|subtrator_n_max_1|XY[30]~123\);

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[30]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(30),
	combout => \data_in~combout\(30));

-- Location: LCFF_X11_Y13_N29
\u1|reg_n_max|q[30]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[30]~121_sumout\,
	adatasdata => \data_in~combout\(30),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(30));

-- Location: LCCOMB_X11_Y13_N30
\u1|subtrator_n_max_1|XY[31]~125\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|subtrator_n_max_1|XY[31]~125_sumout\ = SUM(( !\u1|reg_n_max|q\(31) ) + ( \u1|subtrator_n_max_1|XY[30]~123\ ) + ( \u1|subtrator_n_max_1|XY[30]~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_max|ALT_INV_q\(31),
	cin => \u1|subtrator_n_max_1|XY[30]~122\,
	sharein => \u1|subtrator_n_max_1|XY[30]~123\,
	sumout => \u1|subtrator_n_max_1|XY[31]~125_sumout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[31]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(31),
	combout => \data_in~combout\(31));

-- Location: LCFF_X11_Y13_N31
\u1|reg_n_max|q[31]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[31]~125_sumout\,
	adatasdata => \data_in~combout\(31),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(31));

-- Location: LCCOMB_X9_Y15_N18
\u1|igual_n_max_1|Equal0~2\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|igual_n_max_1|Equal0~2_combout\ = ( !\u1|reg_n_max|q\(27) & ( !\u1|reg_n_max|q\(31) & ( (!\u1|reg_n_max|q\(28) & (!\u1|reg_n_max|q\(1) & (!\u1|reg_n_max|q\(30) & !\u1|reg_n_max|q\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|reg_n_max|ALT_INV_q\(28),
	datab => \u1|reg_n_max|ALT_INV_q\(1),
	datac => \u1|reg_n_max|ALT_INV_q\(30),
	datad => \u1|reg_n_max|ALT_INV_q\(29),
	datae => \u1|reg_n_max|ALT_INV_q\(27),
	dataf => \u1|reg_n_max|ALT_INV_q\(31),
	combout => \u1|igual_n_max_1|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y14_N20
\u1|igual_n_max_1|Equal0~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|igual_n_max_1|Equal0~0_combout\ = !\u1|reg_n_max|q\(0) $ (!\u1|reg_1|q\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|reg_n_max|ALT_INV_q\(0),
	datac => \u1|reg_1|ALT_INV_q\(0),
	combout => \u1|igual_n_max_1|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y15_N0
\u1|igual_n_max_1|Equal0~7\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|igual_n_max_1|Equal0~7_combout\ = ( !\u1|igual_n_max_1|Equal0~0_combout\ & ( (\u1|igual_n_max_1|Equal0~1_combout\ & (\u1|igual_n_max_1|Equal0~6_combout\ & (!\u1|reg_n_max|q\(20) & \u1|igual_n_max_1|Equal0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|igual_n_max_1|ALT_INV_Equal0~1_combout\,
	datab => \u1|igual_n_max_1|ALT_INV_Equal0~6_combout\,
	datac => \u1|reg_n_max|ALT_INV_q\(20),
	datad => \u1|igual_n_max_1|ALT_INV_Equal0~2_combout\,
	dataf => \u1|igual_n_max_1|ALT_INV_Equal0~0_combout\,
	combout => \u1|igual_n_max_1|Equal0~7_combout\);

-- Location: LCCOMB_X13_Y13_N28
\u1|igual_n_max_1|Equal0~1\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|igual_n_max_1|Equal0~1_combout\ = ( !\u1|reg_n_max|q\(25) & ( !\u1|reg_n_max|q\(21) & ( (!\u1|reg_n_max|q\(22) & (!\u1|reg_n_max|q\(23) & (!\u1|reg_n_max|q\(26) & !\u1|reg_n_max|q\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|reg_n_max|ALT_INV_q\(22),
	datab => \u1|reg_n_max|ALT_INV_q\(23),
	datac => \u1|reg_n_max|ALT_INV_q\(26),
	datad => \u1|reg_n_max|ALT_INV_q\(24),
	datae => \u1|reg_n_max|ALT_INV_q\(25),
	dataf => \u1|reg_n_max|ALT_INV_q\(21),
	combout => \u1|igual_n_max_1|Equal0~1_combout\);

-- Location: LCFF_X10_Y15_N11
\u0|state.estado2\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	adatasdata => \u0|state.estado1~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|state.estado2~regout\);

-- Location: LCFF_X10_Y15_N29
\u0|state.estado3\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	adatasdata => \u0|state.estado2~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|state.estado3~regout\);

-- Location: LCFF_X10_Y15_N9
\u0|state.estado4\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	adatasdata => \u0|state.estado3~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|state.estado4~regout\);

-- Location: LCCOMB_X9_Y15_N6
\u0|next_state.estado6~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|next_state.estado6~0_combout\ = ( \u0|state.estado4~regout\ & ( \u1|reg_n_max|q\(0) ) ) # ( \u0|state.estado4~regout\ & ( !\u1|reg_n_max|q\(0) & ( ((!\u1|igual_n_max_1|Equal0~6_combout\) # ((!\u1|igual_n_max_1|Equal0~2_combout\) # 
-- (!\u1|igual_n_max_1|Equal0~1_combout\))) # (\u1|reg_n_max|q\(20)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|reg_n_max|ALT_INV_q\(20),
	datab => \u1|igual_n_max_1|ALT_INV_Equal0~6_combout\,
	datac => \u1|igual_n_max_1|ALT_INV_Equal0~2_combout\,
	datad => \u1|igual_n_max_1|ALT_INV_Equal0~1_combout\,
	datae => \u0|ALT_INV_state.estado4~regout\,
	dataf => \u1|reg_n_max|ALT_INV_q\(0),
	combout => \u0|next_state.estado6~0_combout\);

-- Location: LCFF_X9_Y15_N7
\u0|state.estado6\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \u0|next_state.estado6~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|state.estado6~regout\);

-- Location: LCCOMB_X13_Y14_N10
\u0|next_state.estado7~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|next_state.estado7~0_combout\ = ( !\u1|igual_n_max_1|Equal0~0_combout\ & ( \u0|state.estado6~regout\ & ( (\u1|igual_n_max_1|Equal0~6_combout\ & (!\u1|reg_n_max|q\(20) & (\u1|igual_n_max_1|Equal0~1_combout\ & \u1|igual_n_max_1|Equal0~2_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|igual_n_max_1|ALT_INV_Equal0~6_combout\,
	datab => \u1|reg_n_max|ALT_INV_q\(20),
	datac => \u1|igual_n_max_1|ALT_INV_Equal0~1_combout\,
	datad => \u1|igual_n_max_1|ALT_INV_Equal0~2_combout\,
	datae => \u1|igual_n_max_1|ALT_INV_Equal0~0_combout\,
	dataf => \u0|ALT_INV_state.estado6~regout\,
	combout => \u0|next_state.estado7~0_combout\);

-- Location: LCFF_X13_Y14_N11
\u0|state.estado7\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \u0|next_state.estado7~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|state.estado7~regout\);

-- Location: LCCOMB_X13_Y14_N8
\u0|next_state.estado5~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|next_state.estado5~0_combout\ = ( !\u1|reg_n_max|q\(0) & ( \u0|state.estado4~regout\ & ( (\u1|igual_n_max_1|Equal0~6_combout\ & (!\u1|reg_n_max|q\(20) & (\u1|igual_n_max_1|Equal0~2_combout\ & \u1|igual_n_max_1|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|igual_n_max_1|ALT_INV_Equal0~6_combout\,
	datab => \u1|reg_n_max|ALT_INV_q\(20),
	datac => \u1|igual_n_max_1|ALT_INV_Equal0~2_combout\,
	datad => \u1|igual_n_max_1|ALT_INV_Equal0~1_combout\,
	datae => \u1|reg_n_max|ALT_INV_q\(0),
	dataf => \u0|ALT_INV_state.estado4~regout\,
	combout => \u0|next_state.estado5~0_combout\);

-- Location: LCFF_X13_Y14_N9
\u0|state.estado5\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \u0|next_state.estado5~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|state.estado5~regout\);

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\read_enable_i~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_read_enable_i,
	combout => \read_enable_i~combout\);

-- Location: LCCOMB_X9_Y15_N8
\u0|Selector11~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|Selector11~0_combout\ = ( \u0|state.estado13~regout\ & ( \read_enable_i~combout\ & ( (((\u0|state.estado8~regout\ & \u1|igual_n_max_1|Equal0~7_combout\)) # (\u0|state.estado5~regout\)) # (\u0|state.estado7~regout\) ) ) ) # ( 
-- !\u0|state.estado13~regout\ & ( \read_enable_i~combout\ & ( (((\u0|state.estado8~regout\ & \u1|igual_n_max_1|Equal0~7_combout\)) # (\u0|state.estado5~regout\)) # (\u0|state.estado7~regout\) ) ) ) # ( \u0|state.estado13~regout\ & ( !\read_enable_i~combout\ 
-- ) ) # ( !\u0|state.estado13~regout\ & ( !\read_enable_i~combout\ & ( (((\u0|state.estado8~regout\ & \u1|igual_n_max_1|Equal0~7_combout\)) # (\u0|state.estado5~regout\)) # (\u0|state.estado7~regout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111111111111111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ALT_INV_state.estado8~regout\,
	datab => \u1|igual_n_max_1|ALT_INV_Equal0~7_combout\,
	datac => \u0|ALT_INV_state.estado7~regout\,
	datad => \u0|ALT_INV_state.estado5~regout\,
	datae => \u0|ALT_INV_state.estado13~regout\,
	dataf => \ALT_INV_read_enable_i~combout\,
	combout => \u0|Selector11~0_combout\);

-- Location: LCFF_X9_Y15_N9
\u0|state.estado13\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \u0|Selector11~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|state.estado13~regout\);

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\write_enable_i~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_write_enable_i,
	combout => \write_enable_i~combout\);

-- Location: LCCOMB_X10_Y15_N24
\u0|Selector5~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|Selector5~0_combout\ = ( \write_enable_i~combout\ & ( (!\read_enable_i~combout\) # (!\u0|state.estado13~regout\) ) ) # ( !\write_enable_i~combout\ & ( (\u0|state.estado0~regout\ & ((!\read_enable_i~combout\) # (!\u0|state.estado13~regout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_enable_i~combout\,
	datac => \u0|ALT_INV_state.estado13~regout\,
	datad => \u0|ALT_INV_state.estado0~regout\,
	dataf => \ALT_INV_write_enable_i~combout\,
	combout => \u0|Selector5~0_combout\);

-- Location: LCFF_X10_Y15_N25
\u0|state.estado0\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \u0|Selector5~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|state.estado0~regout\);

-- Location: LCCOMB_X10_Y15_N6
\u0|next_state.estado1~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|next_state.estado1~0_combout\ = ( \write_enable_i~combout\ & ( !\u0|state.estado0~regout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ALT_INV_state.estado0~regout\,
	dataf => \ALT_INV_write_enable_i~combout\,
	combout => \u0|next_state.estado1~0_combout\);

-- Location: LCFF_X10_Y15_N7
\u0|state.estado1\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \u0|next_state.estado1~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|state.estado1~regout\);

-- Location: LCCOMB_X10_Y15_N10
\u0|WideOr3~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|WideOr3~0_combout\ = ( !\u0|state.estado2~regout\ & ( \u0|state.estado0~regout\ & ( !\u0|state.estado1~regout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ALT_INV_state.estado1~regout\,
	datae => \u0|ALT_INV_state.estado2~regout\,
	dataf => \u0|ALT_INV_state.estado0~regout\,
	combout => \u0|WideOr3~0_combout\);

-- Location: LCCOMB_X10_Y15_N12
\u0|WideOr8~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|WideOr8~0_combout\ = ( \u0|state.estado3~regout\ ) # ( !\u0|state.estado3~regout\ & ( \u0|state.estado12~regout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ALT_INV_state.estado12~regout\,
	dataf => \u0|ALT_INV_state.estado3~regout\,
	combout => \u0|WideOr8~0_combout\);

-- Location: LCCOMB_X10_Y15_N26
\u0|l_max\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|l_max~combout\ = ( \u0|WideOr8~0_combout\ & ( (\u0|WideOr3~0_combout\) # (\u0|l_max~combout\) ) ) # ( !\u0|WideOr8~0_combout\ & ( (\u0|l_max~combout\ & !\u0|WideOr3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|ALT_INV_l_max~combout\,
	datad => \u0|ALT_INV_WideOr3~0_combout\,
	dataf => \u0|ALT_INV_WideOr8~0_combout\,
	combout => \u0|l_max~combout\);

-- Location: LCFF_X11_Y14_N3
\u1|reg_n_max|q[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[1]~5_sumout\,
	adatasdata => \data_in~combout\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(1));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(2),
	combout => \data_in~combout\(2));

-- Location: LCFF_X11_Y14_N5
\u1|reg_n_max|q[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[2]~9_sumout\,
	adatasdata => \data_in~combout\(2),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(2));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(3),
	combout => \data_in~combout\(3));

-- Location: LCFF_X11_Y14_N7
\u1|reg_n_max|q[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[3]~13_sumout\,
	adatasdata => \data_in~combout\(3),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(3));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(4),
	combout => \data_in~combout\(4));

-- Location: LCFF_X11_Y14_N9
\u1|reg_n_max|q[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[4]~17_sumout\,
	adatasdata => \data_in~combout\(4),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(4));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(5),
	combout => \data_in~combout\(5));

-- Location: LCFF_X11_Y14_N11
\u1|reg_n_max|q[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[5]~21_sumout\,
	adatasdata => \data_in~combout\(5),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(5));

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(6),
	combout => \data_in~combout\(6));

-- Location: LCFF_X11_Y14_N13
\u1|reg_n_max|q[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[6]~25_sumout\,
	adatasdata => \data_in~combout\(6),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(7),
	combout => \data_in~combout\(7));

-- Location: LCFF_X11_Y14_N15
\u1|reg_n_max|q[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[7]~29_sumout\,
	adatasdata => \data_in~combout\(7),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(7));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(8),
	combout => \data_in~combout\(8));

-- Location: LCFF_X11_Y14_N17
\u1|reg_n_max|q[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[8]~33_sumout\,
	adatasdata => \data_in~combout\(8),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(8));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(9),
	combout => \data_in~combout\(9));

-- Location: LCFF_X11_Y14_N19
\u1|reg_n_max|q[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[9]~37_sumout\,
	adatasdata => \data_in~combout\(9),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(9));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(10),
	combout => \data_in~combout\(10));

-- Location: LCFF_X11_Y14_N21
\u1|reg_n_max|q[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[10]~41_sumout\,
	adatasdata => \data_in~combout\(10),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(10));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(11),
	combout => \data_in~combout\(11));

-- Location: LCFF_X11_Y14_N23
\u1|reg_n_max|q[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[11]~45_sumout\,
	adatasdata => \data_in~combout\(11),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(11));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(12),
	combout => \data_in~combout\(12));

-- Location: LCFF_X11_Y14_N25
\u1|reg_n_max|q[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[12]~49_sumout\,
	adatasdata => \data_in~combout\(12),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(12));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(13),
	combout => \data_in~combout\(13));

-- Location: LCFF_X11_Y14_N27
\u1|reg_n_max|q[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[13]~53_sumout\,
	adatasdata => \data_in~combout\(13),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(13));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(14),
	combout => \data_in~combout\(14));

-- Location: LCFF_X11_Y14_N29
\u1|reg_n_max|q[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[14]~57_sumout\,
	adatasdata => \data_in~combout\(14),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(14));

-- Location: LCCOMB_X13_Y14_N18
\u1|igual_n_max_1|Equal0~4\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|igual_n_max_1|Equal0~4_combout\ = ( !\u1|reg_n_max|q\(16) & ( (!\u1|reg_n_max|q\(15) & (!\u1|reg_n_max|q\(19) & (!\u1|reg_n_max|q\(17) & !\u1|reg_n_max|q\(18)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|reg_n_max|ALT_INV_q\(15),
	datab => \u1|reg_n_max|ALT_INV_q\(19),
	datac => \u1|reg_n_max|ALT_INV_q\(17),
	datad => \u1|reg_n_max|ALT_INV_q\(18),
	dataf => \u1|reg_n_max|ALT_INV_q\(16),
	combout => \u1|igual_n_max_1|Equal0~4_combout\);

-- Location: LCCOMB_X13_Y14_N0
\u1|igual_n_max_1|Equal0~3\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|igual_n_max_1|Equal0~3_combout\ = ( !\u1|reg_n_max|q\(4) & ( (!\u1|reg_n_max|q\(3) & (!\u1|reg_n_max|q\(7) & (!\u1|reg_n_max|q\(6) & !\u1|reg_n_max|q\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|reg_n_max|ALT_INV_q\(3),
	datab => \u1|reg_n_max|ALT_INV_q\(7),
	datac => \u1|reg_n_max|ALT_INV_q\(6),
	datad => \u1|reg_n_max|ALT_INV_q\(5),
	dataf => \u1|reg_n_max|ALT_INV_q\(4),
	combout => \u1|igual_n_max_1|Equal0~3_combout\);

-- Location: LCCOMB_X13_Y14_N26
\u1|igual_n_max_1|Equal0~6\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|igual_n_max_1|Equal0~6_combout\ = ( !\u1|reg_n_max|q\(2) & ( \u1|igual_n_max_1|Equal0~3_combout\ & ( (\u1|igual_n_max_1|Equal0~5_combout\ & (!\u1|reg_n_max|q\(14) & (\u1|igual_n_max_1|Equal0~4_combout\ & !\u1|reg_n_max|q\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|igual_n_max_1|ALT_INV_Equal0~5_combout\,
	datab => \u1|reg_n_max|ALT_INV_q\(14),
	datac => \u1|igual_n_max_1|ALT_INV_Equal0~4_combout\,
	datad => \u1|reg_n_max|ALT_INV_q\(8),
	datae => \u1|reg_n_max|ALT_INV_q\(2),
	dataf => \u1|igual_n_max_1|ALT_INV_Equal0~3_combout\,
	combout => \u1|igual_n_max_1|Equal0~6_combout\);

-- Location: LCCOMB_X9_Y15_N24
\u0|Selector9~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|Selector9~0_combout\ = ( \u1|igual_n_max_1|Equal0~7_combout\ & ( \u0|state.estado12~regout\ ) ) # ( !\u1|igual_n_max_1|Equal0~7_combout\ & ( (\u0|state.estado6~regout\) # (\u0|state.estado12~regout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|ALT_INV_state.estado12~regout\,
	datac => \u0|ALT_INV_state.estado6~regout\,
	dataf => \u1|igual_n_max_1|ALT_INV_Equal0~7_combout\,
	combout => \u0|Selector9~0_combout\);

-- Location: LCFF_X9_Y15_N25
\u0|state.estado8\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \u0|Selector9~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|state.estado8~regout\);

-- Location: LCCOMB_X9_Y15_N4
\u0|next_state.estado9~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|next_state.estado9~0_combout\ = ( \u0|state.estado8~regout\ & ( \u1|igual_n_max_1|Equal0~0_combout\ ) ) # ( \u0|state.estado8~regout\ & ( !\u1|igual_n_max_1|Equal0~0_combout\ & ( ((!\u1|igual_n_max_1|Equal0~6_combout\) # 
-- ((!\u1|igual_n_max_1|Equal0~1_combout\) # (!\u1|igual_n_max_1|Equal0~2_combout\))) # (\u1|reg_n_max|q\(20)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|reg_n_max|ALT_INV_q\(20),
	datab => \u1|igual_n_max_1|ALT_INV_Equal0~6_combout\,
	datac => \u1|igual_n_max_1|ALT_INV_Equal0~1_combout\,
	datad => \u1|igual_n_max_1|ALT_INV_Equal0~2_combout\,
	datae => \u0|ALT_INV_state.estado8~regout\,
	dataf => \u1|igual_n_max_1|ALT_INV_Equal0~0_combout\,
	combout => \u0|next_state.estado9~0_combout\);

-- Location: LCFF_X9_Y15_N5
\u0|state.estado9\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \u0|next_state.estado9~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|state.estado9~regout\);

-- Location: LCFF_X10_Y15_N19
\u0|state.estado10\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	adatasdata => \u0|state.estado9~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|state.estado10~regout\);

-- Location: LCFF_X10_Y15_N5
\u0|state.estado11\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	adatasdata => \u0|state.estado10~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|state.estado11~regout\);

-- Location: LCFF_X10_Y15_N23
\u0|state.estado12\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	adatasdata => \u0|state.estado11~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|state.estado12~regout\);

-- Location: LCCOMB_X10_Y15_N0
\u0|m_max\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|m_max~combout\ = ( \u0|m_max~combout\ & ( (!\u0|WideOr8~0_combout\) # (\u0|state.estado12~regout\) ) ) # ( !\u0|m_max~combout\ & ( (\u0|WideOr8~0_combout\ & \u0|state.estado12~regout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ALT_INV_WideOr8~0_combout\,
	datac => \u0|ALT_INV_state.estado12~regout\,
	dataf => \u0|ALT_INV_m_max~combout\,
	combout => \u0|m_max~combout\);

-- Location: LCFF_X11_Y14_N1
\u1|reg_n_max|q[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|subtrator_n_max_1|XY[0]~1_sumout\,
	adatasdata => \data_in~combout\(0),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|ALT_INV_m_max~combout\,
	ena => \u0|l_max~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_max|q\(0));

-- Location: LCCOMB_X9_Y15_N2
\u0|WideOr11~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|WideOr11~0_combout\ = ( \u0|state.estado7~regout\ ) # ( !\u0|state.estado7~regout\ & ( (\u0|state.estado5~regout\) # (\u0|state.estado9~regout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|ALT_INV_state.estado9~regout\,
	datad => \u0|ALT_INV_state.estado5~regout\,
	dataf => \u0|ALT_INV_state.estado7~regout\,
	combout => \u0|WideOr11~0_combout\);

-- Location: LCCOMB_X13_Y15_N20
\u0|m_fib\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|m_fib~combout\ = ( \u0|WideOr11~0_combout\ & ( !\u0|state.estado9~regout\ ) ) # ( !\u0|WideOr11~0_combout\ & ( \u0|m_fib~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ALT_INV_m_fib~combout\,
	datad => \u0|ALT_INV_state.estado9~regout\,
	dataf => \u0|ALT_INV_WideOr11~0_combout\,
	combout => \u0|m_fib~combout\);

-- Location: LCCOMB_X10_Y15_N30
\u0|WideOr12\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|WideOr12~combout\ = ( \u0|state.estado3~regout\ & ( \u0|WideOr3~0_combout\ ) ) # ( !\u0|state.estado3~regout\ & ( \u0|WideOr3~0_combout\ & ( ((\u0|state.estado4~regout\) # (\u0|state.estado8~regout\)) # (\u0|state.estado6~regout\) ) ) ) # ( 
-- \u0|state.estado3~regout\ & ( !\u0|WideOr3~0_combout\ ) ) # ( !\u0|state.estado3~regout\ & ( !\u0|WideOr3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ALT_INV_state.estado6~regout\,
	datac => \u0|ALT_INV_state.estado8~regout\,
	datad => \u0|ALT_INV_state.estado4~regout\,
	datae => \u0|ALT_INV_state.estado3~regout\,
	dataf => \u0|ALT_INV_WideOr3~0_combout\,
	combout => \u0|WideOr12~combout\);

-- Location: LCCOMB_X9_Y15_N14
\u0|l_fib\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|l_fib~combout\ = ( \u0|WideOr12~combout\ & ( \u0|l_fib~combout\ ) ) # ( !\u0|WideOr12~combout\ & ( !\u0|WideOr14~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ALT_INV_WideOr14~combout\,
	datac => \u0|ALT_INV_l_fib~combout\,
	dataf => \u0|ALT_INV_WideOr12~combout\,
	combout => \u0|l_fib~combout\);

-- Location: LCFF_X13_Y15_N19
\u1|reg_n_fibonacci|q[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[0]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(0),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(0));

-- Location: LCCOMB_X10_Y15_N20
\u0|l_d\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|l_d~combout\ = ( \u0|state.estado0~regout\ & ( \u0|state.estado13~regout\ ) ) # ( !\u0|state.estado0~regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ALT_INV_state.estado13~regout\,
	dataf => \u0|ALT_INV_state.estado0~regout\,
	combout => \u0|l_d~combout\);

-- Location: LCCOMB_X14_Y17_N12
\u0|m_d\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|m_d~combout\ = ( \u0|m_d~combout\ & ( \u0|l_d~combout\ & ( !\u0|state.estado13~regout\ ) ) ) # ( !\u0|m_d~combout\ & ( \u0|l_d~combout\ & ( !\u0|state.estado13~regout\ ) ) ) # ( \u0|m_d~combout\ & ( !\u0|l_d~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ALT_INV_state.estado13~regout\,
	datae => \u0|ALT_INV_m_d~combout\,
	dataf => \u0|ALT_INV_l_d~combout\,
	combout => \u0|m_d~combout\);

-- Location: LCFF_X14_Y17_N17
\u1|reg_data_o|q[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(0),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(0));

-- Location: LCCOMB_X10_Y15_N2
\u0|WideOr4~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|WideOr4~0_combout\ = ( \u0|state.estado11~regout\ ) # ( !\u0|state.estado11~regout\ & ( \u0|state.estado1~regout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ALT_INV_state.estado1~regout\,
	dataf => \u0|ALT_INV_state.estado11~regout\,
	combout => \u0|WideOr4~0_combout\);

-- Location: LCCOMB_X11_Y15_N14
\u0|m_a1\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|m_a1~combout\ = ( \u0|m_a1~combout\ & ( (!\u0|WideOr4~0_combout\) # (\u0|state.estado11~regout\) ) ) # ( !\u0|m_a1~combout\ & ( (\u0|state.estado11~regout\ & \u0|WideOr4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ALT_INV_state.estado11~regout\,
	datad => \u0|ALT_INV_WideOr4~0_combout\,
	dataf => \u0|ALT_INV_m_a1~combout\,
	combout => \u0|m_a1~combout\);

-- Location: LCCOMB_X11_Y15_N10
\u0|l_a1\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|l_a1~combout\ = ( \u0|state.estado0~regout\ & ( \u0|l_a1~combout\ & ( \u0|WideOr4~0_combout\ ) ) ) # ( !\u0|state.estado0~regout\ & ( \u0|l_a1~combout\ ) ) # ( \u0|state.estado0~regout\ & ( !\u0|l_a1~combout\ & ( \u0|WideOr4~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|ALT_INV_WideOr4~0_combout\,
	datae => \u0|ALT_INV_state.estado0~regout\,
	dataf => \u0|ALT_INV_l_a1~combout\,
	combout => \u0|l_a1~combout\);

-- Location: LCFF_X11_Y15_N3
\u1|reg_n_anterior1|q[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(1),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(1));

-- Location: LCCOMB_X10_Y15_N16
\u0|WideOr6~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|WideOr6~0_combout\ = ( \u0|state.estado10~regout\ & ( \u0|state.estado2~regout\ ) ) # ( !\u0|state.estado10~regout\ & ( \u0|state.estado2~regout\ ) ) # ( \u0|state.estado10~regout\ & ( !\u0|state.estado2~regout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u0|ALT_INV_state.estado10~regout\,
	dataf => \u0|ALT_INV_state.estado2~regout\,
	combout => \u0|WideOr6~0_combout\);

-- Location: LCCOMB_X15_Y15_N28
\u0|m_a2\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|m_a2~combout\ = ( \u0|WideOr6~0_combout\ & ( \u0|m_a2~combout\ & ( \u0|state.estado10~regout\ ) ) ) # ( !\u0|WideOr6~0_combout\ & ( \u0|m_a2~combout\ ) ) # ( \u0|WideOr6~0_combout\ & ( !\u0|m_a2~combout\ & ( \u0|state.estado10~regout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ALT_INV_state.estado10~regout\,
	datae => \u0|ALT_INV_WideOr6~0_combout\,
	dataf => \u0|ALT_INV_m_a2~combout\,
	combout => \u0|m_a2~combout\);

-- Location: LCCOMB_X10_Y15_N14
\u0|l_a2~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|l_a2~0_combout\ = ( !\u0|state.estado1~regout\ & ( \u0|state.estado0~regout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ALT_INV_state.estado0~regout\,
	dataf => \u0|ALT_INV_state.estado1~regout\,
	combout => \u0|l_a2~0_combout\);

-- Location: LCCOMB_X15_Y15_N8
\u0|l_a2\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|l_a2~combout\ = ( \u0|WideOr6~0_combout\ & ( \u0|l_a2~0_combout\ ) ) # ( \u0|WideOr6~0_combout\ & ( !\u0|l_a2~0_combout\ & ( \u0|l_a2~combout\ ) ) ) # ( !\u0|WideOr6~0_combout\ & ( !\u0|l_a2~0_combout\ & ( \u0|l_a2~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|ALT_INV_l_a2~combout\,
	datae => \u0|ALT_INV_WideOr6~0_combout\,
	dataf => \u0|ALT_INV_l_a2~0_combout\,
	combout => \u0|l_a2~combout\);

-- Location: LCFF_X15_Y15_N17
\u1|reg_n_anterior2|q[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(1),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(1));

-- Location: LCCOMB_X11_Y15_N12
\u1|mux_n_anterior1|f[0]~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|mux_n_anterior1|f[0]~0_combout\ = ( \u1|reg_n_fibonacci|q\(0) & ( (\u1|reg_1|q\(0)) # (\u0|m_a1~combout\) ) ) # ( !\u1|reg_n_fibonacci|q\(0) & ( (!\u0|m_a1~combout\ & \u1|reg_1|q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|ALT_INV_m_a1~combout\,
	datac => \u1|reg_1|ALT_INV_q\(0),
	dataf => \u1|reg_n_fibonacci|ALT_INV_q\(0),
	combout => \u1|mux_n_anterior1|f[0]~0_combout\);

-- Location: LCFF_X11_Y15_N13
\u1|reg_n_anterior1|q[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|mux_n_anterior1|f[0]~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(0));

-- Location: LCFF_X15_Y15_N19
\u1|reg_n_anterior2|q[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(0),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(0));

-- Location: LCCOMB_X14_Y15_N2
\u1|somador_n_anterior1_n_anterior2|Add0~5\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~5_sumout\ = SUM(( \u1|reg_n_anterior2|q\(1) ) + ( \u1|reg_n_anterior1|q\(1) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~2\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~6\ = CARRY(( \u1|reg_n_anterior2|q\(1) ) + ( \u1|reg_n_anterior1|q\(1) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior2|ALT_INV_q\(1),
	dataf => \u1|reg_n_anterior1|ALT_INV_q\(1),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~2\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~5_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~6\);

-- Location: LCCOMB_X13_Y15_N22
\u1|reg_n_fibonacci|q[1]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[1]~feeder_combout\ = ( \u1|somador_n_anterior1_n_anterior2|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~5_sumout\,
	combout => \u1|reg_n_fibonacci|q[1]~feeder_combout\);

-- Location: LCFF_X13_Y15_N23
\u1|reg_n_fibonacci|q[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[1]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(1));

-- Location: LCFF_X14_Y17_N19
\u1|reg_data_o|q[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(1),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(1));

-- Location: LCFF_X11_Y15_N1
\u1|reg_n_anterior1|q[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(2),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(2));

-- Location: LCFF_X15_Y15_N5
\u1|reg_n_anterior2|q[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(2),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(2));

-- Location: LCCOMB_X14_Y15_N4
\u1|somador_n_anterior1_n_anterior2|Add0~9\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~9_sumout\ = SUM(( \u1|reg_n_anterior1|q\(2) ) + ( \u1|reg_n_anterior2|q\(2) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~6\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~10\ = CARRY(( \u1|reg_n_anterior1|q\(2) ) + ( \u1|reg_n_anterior2|q\(2) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_anterior1|ALT_INV_q\(2),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(2),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~6\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~9_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~10\);

-- Location: LCCOMB_X13_Y15_N16
\u1|reg_n_fibonacci|q[2]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[2]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~9_sumout\,
	combout => \u1|reg_n_fibonacci|q[2]~feeder_combout\);

-- Location: LCFF_X13_Y15_N17
\u1|reg_n_fibonacci|q[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[2]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(2),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(2));

-- Location: LCFF_X14_Y17_N21
\u1|reg_data_o|q[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(2),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(2));

-- Location: LCFF_X11_Y15_N5
\u1|reg_n_anterior1|q[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(3),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(3));

-- Location: LCCOMB_X14_Y15_N6
\u1|somador_n_anterior1_n_anterior2|Add0~13\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~13_sumout\ = SUM(( \u1|reg_n_anterior1|q\(3) ) + ( \u1|reg_n_anterior2|q\(3) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~10\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~14\ = CARRY(( \u1|reg_n_anterior1|q\(3) ) + ( \u1|reg_n_anterior2|q\(3) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|reg_n_anterior2|ALT_INV_q\(3),
	datad => \u1|reg_n_anterior1|ALT_INV_q\(3),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~10\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~13_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~14\);

-- Location: LCCOMB_X13_Y15_N26
\u1|reg_n_fibonacci|q[3]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[3]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~13_sumout\,
	combout => \u1|reg_n_fibonacci|q[3]~feeder_combout\);

-- Location: LCFF_X13_Y15_N27
\u1|reg_n_fibonacci|q[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[3]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(3),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(3));

-- Location: LCFF_X14_Y17_N23
\u1|reg_data_o|q[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(3),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(3));

-- Location: LCFF_X11_Y15_N7
\u1|reg_n_anterior1|q[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(4),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(4));

-- Location: LCFF_X15_Y15_N25
\u1|reg_n_anterior2|q[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(4),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(4));

-- Location: LCCOMB_X14_Y15_N8
\u1|somador_n_anterior1_n_anterior2|Add0~17\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~17_sumout\ = SUM(( \u1|reg_n_anterior1|q\(4) ) + ( \u1|reg_n_anterior2|q\(4) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~14\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~18\ = CARRY(( \u1|reg_n_anterior1|q\(4) ) + ( \u1|reg_n_anterior2|q\(4) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior2|ALT_INV_q\(4),
	datad => \u1|reg_n_anterior1|ALT_INV_q\(4),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~14\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~17_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~18\);

-- Location: LCCOMB_X13_Y15_N24
\u1|reg_n_fibonacci|q[4]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[4]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~17_sumout\,
	combout => \u1|reg_n_fibonacci|q[4]~feeder_combout\);

-- Location: LCFF_X13_Y15_N25
\u1|reg_n_fibonacci|q[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[4]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(4),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(4));

-- Location: LCFF_X14_Y17_N9
\u1|reg_data_o|q[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(4),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(4));

-- Location: LCFF_X11_Y15_N9
\u1|reg_n_anterior1|q[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(5),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(5));

-- Location: LCFF_X15_Y15_N27
\u1|reg_n_anterior2|q[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(5),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(5));

-- Location: LCCOMB_X14_Y15_N10
\u1|somador_n_anterior1_n_anterior2|Add0~21\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~21_sumout\ = SUM(( \u1|reg_n_anterior1|q\(5) ) + ( \u1|reg_n_anterior2|q\(5) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~18\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~22\ = CARRY(( \u1|reg_n_anterior1|q\(5) ) + ( \u1|reg_n_anterior2|q\(5) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_anterior1|ALT_INV_q\(5),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(5),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~18\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~21_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~22\);

-- Location: LCCOMB_X13_Y15_N30
\u1|reg_n_fibonacci|q[5]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[5]~feeder_combout\ = ( \u1|somador_n_anterior1_n_anterior2|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~21_sumout\,
	combout => \u1|reg_n_fibonacci|q[5]~feeder_combout\);

-- Location: LCFF_X13_Y15_N31
\u1|reg_n_fibonacci|q[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[5]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(5),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(5));

-- Location: LCFF_X14_Y17_N11
\u1|reg_data_o|q[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(5),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(5));

-- Location: LCFF_X11_Y15_N29
\u1|reg_n_anterior1|q[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(6),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(6));

-- Location: LCFF_X15_Y15_N31
\u1|reg_n_anterior2|q[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(6),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(6));

-- Location: LCCOMB_X14_Y15_N12
\u1|somador_n_anterior1_n_anterior2|Add0~25\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~25_sumout\ = SUM(( \u1|reg_n_anterior1|q\(6) ) + ( \u1|reg_n_anterior2|q\(6) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~22\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~26\ = CARRY(( \u1|reg_n_anterior1|q\(6) ) + ( \u1|reg_n_anterior2|q\(6) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior1|ALT_INV_q\(6),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(6),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~22\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~25_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~26\);

-- Location: LCCOMB_X13_Y15_N28
\u1|reg_n_fibonacci|q[6]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[6]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~25_sumout\,
	combout => \u1|reg_n_fibonacci|q[6]~feeder_combout\);

-- Location: LCFF_X13_Y15_N29
\u1|reg_n_fibonacci|q[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[6]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(6),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(6));

-- Location: LCFF_X14_Y17_N29
\u1|reg_data_o|q[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(6),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(6));

-- Location: LCFF_X11_Y15_N31
\u1|reg_n_anterior1|q[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(7),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(7));

-- Location: LCFF_X15_Y15_N3
\u1|reg_n_anterior2|q[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(7),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(7));

-- Location: LCCOMB_X14_Y15_N14
\u1|somador_n_anterior1_n_anterior2|Add0~29\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~29_sumout\ = SUM(( \u1|reg_n_anterior2|q\(7) ) + ( \u1|reg_n_anterior1|q\(7) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~26\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~30\ = CARRY(( \u1|reg_n_anterior2|q\(7) ) + ( \u1|reg_n_anterior1|q\(7) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior1|ALT_INV_q\(7),
	datad => \u1|reg_n_anterior2|ALT_INV_q\(7),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~26\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~29_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~30\);

-- Location: LCCOMB_X13_Y15_N2
\u1|reg_n_fibonacci|q[7]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[7]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~29_sumout\,
	combout => \u1|reg_n_fibonacci|q[7]~feeder_combout\);

-- Location: LCFF_X13_Y15_N3
\u1|reg_n_fibonacci|q[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[7]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(7),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(7));

-- Location: LCFF_X14_Y17_N31
\u1|reg_data_o|q[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(7),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(7));

-- Location: LCFF_X11_Y15_N17
\u1|reg_n_anterior1|q[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(8),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(8));

-- Location: LCFF_X15_Y15_N1
\u1|reg_n_anterior2|q[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(8),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(8));

-- Location: LCCOMB_X14_Y15_N16
\u1|somador_n_anterior1_n_anterior2|Add0~33\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~33_sumout\ = SUM(( \u1|reg_n_anterior2|q\(8) ) + ( \u1|reg_n_anterior1|q\(8) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~30\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~34\ = CARRY(( \u1|reg_n_anterior2|q\(8) ) + ( \u1|reg_n_anterior1|q\(8) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior2|ALT_INV_q\(8),
	dataf => \u1|reg_n_anterior1|ALT_INV_q\(8),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~30\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~33_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~34\);

-- Location: LCCOMB_X13_Y15_N0
\u1|reg_n_fibonacci|q[8]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[8]~feeder_combout\ = ( \u1|somador_n_anterior1_n_anterior2|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~33_sumout\,
	combout => \u1|reg_n_fibonacci|q[8]~feeder_combout\);

-- Location: LCFF_X13_Y15_N1
\u1|reg_n_fibonacci|q[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[8]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(8),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(8));

-- Location: LCFF_X14_Y17_N1
\u1|reg_data_o|q[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(8),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(8));

-- Location: LCFF_X11_Y15_N19
\u1|reg_n_anterior1|q[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(9),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(9));

-- Location: LCCOMB_X14_Y15_N18
\u1|somador_n_anterior1_n_anterior2|Add0~37\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~37_sumout\ = SUM(( \u1|reg_n_anterior2|q\(9) ) + ( \u1|reg_n_anterior1|q\(9) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~34\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~38\ = CARRY(( \u1|reg_n_anterior2|q\(9) ) + ( \u1|reg_n_anterior1|q\(9) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|reg_n_anterior2|ALT_INV_q\(9),
	dataf => \u1|reg_n_anterior1|ALT_INV_q\(9),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~34\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~37_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~38\);

-- Location: LCCOMB_X13_Y15_N6
\u1|reg_n_fibonacci|q[9]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[9]~feeder_combout\ = ( \u1|somador_n_anterior1_n_anterior2|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~37_sumout\,
	combout => \u1|reg_n_fibonacci|q[9]~feeder_combout\);

-- Location: LCFF_X13_Y15_N7
\u1|reg_n_fibonacci|q[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[9]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(9),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(9));

-- Location: LCFF_X14_Y17_N3
\u1|reg_data_o|q[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(9),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(9));

-- Location: LCFF_X11_Y15_N21
\u1|reg_n_anterior1|q[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(10),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(10));

-- Location: LCFF_X15_Y15_N23
\u1|reg_n_anterior2|q[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(10),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(10));

-- Location: LCCOMB_X14_Y15_N20
\u1|somador_n_anterior1_n_anterior2|Add0~41\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~41_sumout\ = SUM(( \u1|reg_n_anterior2|q\(10) ) + ( \u1|reg_n_anterior1|q\(10) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~38\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~42\ = CARRY(( \u1|reg_n_anterior2|q\(10) ) + ( \u1|reg_n_anterior1|q\(10) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior1|ALT_INV_q\(10),
	datad => \u1|reg_n_anterior2|ALT_INV_q\(10),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~38\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~41_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~42\);

-- Location: LCCOMB_X13_Y15_N4
\u1|reg_n_fibonacci|q[10]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[10]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~41_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~41_sumout\,
	combout => \u1|reg_n_fibonacci|q[10]~feeder_combout\);

-- Location: LCFF_X13_Y15_N5
\u1|reg_n_fibonacci|q[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[10]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(10),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(10));

-- Location: LCFF_X14_Y17_N7
\u1|reg_data_o|q[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(10),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(10));

-- Location: LCFF_X11_Y15_N23
\u1|reg_n_anterior1|q[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(11),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(11));

-- Location: LCFF_X15_Y15_N11
\u1|reg_n_anterior2|q[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(11),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(11));

-- Location: LCCOMB_X14_Y15_N22
\u1|somador_n_anterior1_n_anterior2|Add0~45\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~45_sumout\ = SUM(( \u1|reg_n_anterior1|q\(11) ) + ( \u1|reg_n_anterior2|q\(11) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~42\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~46\ = CARRY(( \u1|reg_n_anterior1|q\(11) ) + ( \u1|reg_n_anterior2|q\(11) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior1|ALT_INV_q\(11),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(11),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~42\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~45_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~46\);

-- Location: LCCOMB_X13_Y15_N10
\u1|reg_n_fibonacci|q[11]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[11]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~45_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~45_sumout\,
	combout => \u1|reg_n_fibonacci|q[11]~feeder_combout\);

-- Location: LCFF_X13_Y15_N11
\u1|reg_n_fibonacci|q[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[11]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(11),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(11));

-- Location: LCFF_X14_Y17_N5
\u1|reg_data_o|q[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(11),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(11));

-- Location: LCFF_X11_Y15_N25
\u1|reg_n_anterior1|q[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(12),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(12));

-- Location: LCFF_X15_Y15_N13
\u1|reg_n_anterior2|q[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(12),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(12));

-- Location: LCCOMB_X14_Y15_N24
\u1|somador_n_anterior1_n_anterior2|Add0~49\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~49_sumout\ = SUM(( \u1|reg_n_anterior2|q\(12) ) + ( \u1|reg_n_anterior1|q\(12) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~46\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~50\ = CARRY(( \u1|reg_n_anterior2|q\(12) ) + ( \u1|reg_n_anterior1|q\(12) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior2|ALT_INV_q\(12),
	dataf => \u1|reg_n_anterior1|ALT_INV_q\(12),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~46\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~49_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~50\);

-- Location: LCCOMB_X13_Y15_N8
\u1|reg_n_fibonacci|q[12]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[12]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~49_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~49_sumout\,
	combout => \u1|reg_n_fibonacci|q[12]~feeder_combout\);

-- Location: LCFF_X13_Y15_N9
\u1|reg_n_fibonacci|q[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[12]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(12),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(12));

-- Location: LCFF_X14_Y17_N25
\u1|reg_data_o|q[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(12),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(12));

-- Location: LCFF_X11_Y15_N27
\u1|reg_n_anterior1|q[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(13),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(13));

-- Location: LCFF_X15_Y15_N15
\u1|reg_n_anterior2|q[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(13),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(13));

-- Location: LCCOMB_X14_Y15_N26
\u1|somador_n_anterior1_n_anterior2|Add0~53\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~53_sumout\ = SUM(( \u1|reg_n_anterior2|q\(13) ) + ( \u1|reg_n_anterior1|q\(13) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~50\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~54\ = CARRY(( \u1|reg_n_anterior2|q\(13) ) + ( \u1|reg_n_anterior1|q\(13) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior2|ALT_INV_q\(13),
	dataf => \u1|reg_n_anterior1|ALT_INV_q\(13),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~50\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~53_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~54\);

-- Location: LCCOMB_X13_Y15_N12
\u1|reg_n_fibonacci|q[13]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[13]~feeder_combout\ = ( \u1|somador_n_anterior1_n_anterior2|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~53_sumout\,
	combout => \u1|reg_n_fibonacci|q[13]~feeder_combout\);

-- Location: LCFF_X13_Y15_N13
\u1|reg_n_fibonacci|q[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[13]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(13),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(13));

-- Location: LCFF_X14_Y17_N27
\u1|reg_data_o|q[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(13),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(13));

-- Location: LCFF_X14_Y13_N19
\u1|reg_n_anterior1|q[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(14),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(14));

-- Location: LCFF_X15_Y14_N3
\u1|reg_n_anterior2|q[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(14),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(14));

-- Location: LCCOMB_X14_Y15_N28
\u1|somador_n_anterior1_n_anterior2|Add0~57\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~57_sumout\ = SUM(( \u1|reg_n_anterior1|q\(14) ) + ( \u1|reg_n_anterior2|q\(14) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~54\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~58\ = CARRY(( \u1|reg_n_anterior1|q\(14) ) + ( \u1|reg_n_anterior2|q\(14) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_anterior1|ALT_INV_q\(14),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(14),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~54\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~57_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~58\);

-- Location: LCCOMB_X13_Y15_N14
\u1|reg_n_fibonacci|q[14]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[14]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~57_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~57_sumout\,
	combout => \u1|reg_n_fibonacci|q[14]~feeder_combout\);

-- Location: LCFF_X13_Y15_N15
\u1|reg_n_fibonacci|q[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[14]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(14),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(14));

-- Location: LCFF_X13_Y17_N19
\u1|reg_data_o|q[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(14),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(14));

-- Location: LCFF_X14_Y13_N17
\u1|reg_n_anterior1|q[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(15),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(15));

-- Location: LCFF_X15_Y14_N1
\u1|reg_n_anterior2|q[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(15),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(15));

-- Location: LCCOMB_X14_Y15_N30
\u1|somador_n_anterior1_n_anterior2|Add0~61\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~61_sumout\ = SUM(( \u1|reg_n_anterior1|q\(15) ) + ( \u1|reg_n_anterior2|q\(15) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~58\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~62\ = CARRY(( \u1|reg_n_anterior1|q\(15) ) + ( \u1|reg_n_anterior2|q\(15) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_anterior1|ALT_INV_q\(15),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(15),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~58\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~61_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~62\);

-- Location: LCCOMB_X13_Y14_N2
\u1|reg_n_fibonacci|q[15]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[15]~feeder_combout\ = ( \u1|somador_n_anterior1_n_anterior2|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~61_sumout\,
	combout => \u1|reg_n_fibonacci|q[15]~feeder_combout\);

-- Location: LCFF_X13_Y14_N3
\u1|reg_n_fibonacci|q[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[15]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(15),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(15));

-- Location: LCFF_X13_Y17_N17
\u1|reg_data_o|q[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(15),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(15));

-- Location: LCFF_X14_Y13_N23
\u1|reg_n_anterior1|q[16]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(16),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(16));

-- Location: LCFF_X15_Y14_N21
\u1|reg_n_anterior2|q[16]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(16),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(16));

-- Location: LCCOMB_X14_Y14_N0
\u1|somador_n_anterior1_n_anterior2|Add0~65\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~65_sumout\ = SUM(( \u1|reg_n_anterior1|q\(16) ) + ( \u1|reg_n_anterior2|q\(16) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~62\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~66\ = CARRY(( \u1|reg_n_anterior1|q\(16) ) + ( \u1|reg_n_anterior2|q\(16) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_anterior1|ALT_INV_q\(16),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(16),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~62\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~65_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~66\);

-- Location: LCCOMB_X13_Y14_N16
\u1|reg_n_fibonacci|q[16]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[16]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~65_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~65_sumout\,
	combout => \u1|reg_n_fibonacci|q[16]~feeder_combout\);

-- Location: LCFF_X13_Y14_N17
\u1|reg_n_fibonacci|q[16]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[16]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(16),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(16));

-- Location: LCFF_X13_Y17_N5
\u1|reg_data_o|q[16]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(16),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(16));

-- Location: LCFF_X14_Y13_N21
\u1|reg_n_anterior1|q[17]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(17),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(17));

-- Location: LCFF_X15_Y14_N23
\u1|reg_n_anterior2|q[17]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(17),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(17));

-- Location: LCCOMB_X14_Y14_N2
\u1|somador_n_anterior1_n_anterior2|Add0~69\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~69_sumout\ = SUM(( \u1|reg_n_anterior1|q\(17) ) + ( \u1|reg_n_anterior2|q\(17) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~66\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~70\ = CARRY(( \u1|reg_n_anterior1|q\(17) ) + ( \u1|reg_n_anterior2|q\(17) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior2|ALT_INV_q\(17),
	datad => \u1|reg_n_anterior1|ALT_INV_q\(17),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~66\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~69_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~70\);

-- Location: LCCOMB_X13_Y14_N4
\u1|reg_n_fibonacci|q[17]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[17]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~69_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~69_sumout\,
	combout => \u1|reg_n_fibonacci|q[17]~feeder_combout\);

-- Location: LCFF_X13_Y14_N5
\u1|reg_n_fibonacci|q[17]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[17]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(17),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(17));

-- Location: LCFF_X13_Y17_N7
\u1|reg_data_o|q[17]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(17),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(17));

-- Location: LCFF_X14_Y13_N25
\u1|reg_n_anterior1|q[18]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(18),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(18));

-- Location: LCFF_X15_Y14_N27
\u1|reg_n_anterior2|q[18]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(18),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(18));

-- Location: LCCOMB_X14_Y14_N4
\u1|somador_n_anterior1_n_anterior2|Add0~73\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~73_sumout\ = SUM(( \u1|reg_n_anterior1|q\(18) ) + ( \u1|reg_n_anterior2|q\(18) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~70\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~74\ = CARRY(( \u1|reg_n_anterior1|q\(18) ) + ( \u1|reg_n_anterior2|q\(18) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior1|ALT_INV_q\(18),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(18),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~70\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~73_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~74\);

-- Location: LCCOMB_X13_Y14_N6
\u1|reg_n_fibonacci|q[18]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[18]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~73_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~73_sumout\,
	combout => \u1|reg_n_fibonacci|q[18]~feeder_combout\);

-- Location: LCFF_X13_Y14_N7
\u1|reg_n_fibonacci|q[18]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[18]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(18),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(18));

-- Location: LCFF_X13_Y17_N9
\u1|reg_data_o|q[18]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(18),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(18));

-- Location: LCFF_X14_Y13_N27
\u1|reg_n_anterior1|q[19]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(19),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(19));

-- Location: LCCOMB_X14_Y14_N6
\u1|somador_n_anterior1_n_anterior2|Add0~77\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~77_sumout\ = SUM(( \u1|reg_n_anterior1|q\(19) ) + ( \u1|reg_n_anterior2|q\(19) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~74\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~78\ = CARRY(( \u1|reg_n_anterior1|q\(19) ) + ( \u1|reg_n_anterior2|q\(19) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|reg_n_anterior2|ALT_INV_q\(19),
	datad => \u1|reg_n_anterior1|ALT_INV_q\(19),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~74\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~77_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~78\);

-- Location: LCCOMB_X13_Y14_N28
\u1|reg_n_fibonacci|q[19]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[19]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~77_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~77_sumout\,
	combout => \u1|reg_n_fibonacci|q[19]~feeder_combout\);

-- Location: LCFF_X13_Y14_N29
\u1|reg_n_fibonacci|q[19]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[19]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(19),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(19));

-- Location: LCFF_X13_Y17_N11
\u1|reg_data_o|q[19]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(19),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(19));

-- Location: LCFF_X14_Y13_N29
\u1|reg_n_anterior1|q[20]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(20),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(20));

-- Location: LCFF_X15_Y14_N29
\u1|reg_n_anterior2|q[20]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(20),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(20));

-- Location: LCCOMB_X14_Y14_N8
\u1|somador_n_anterior1_n_anterior2|Add0~81\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~81_sumout\ = SUM(( \u1|reg_n_anterior1|q\(20) ) + ( \u1|reg_n_anterior2|q\(20) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~78\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~82\ = CARRY(( \u1|reg_n_anterior1|q\(20) ) + ( \u1|reg_n_anterior2|q\(20) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|reg_n_anterior1|ALT_INV_q\(20),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(20),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~78\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~81_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~82\);

-- Location: LCCOMB_X13_Y14_N22
\u1|reg_n_fibonacci|q[20]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[20]~feeder_combout\ = ( \u1|somador_n_anterior1_n_anterior2|Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~81_sumout\,
	combout => \u1|reg_n_fibonacci|q[20]~feeder_combout\);

-- Location: LCFF_X13_Y14_N23
\u1|reg_n_fibonacci|q[20]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[20]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(20),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(20));

-- Location: LCFF_X13_Y17_N15
\u1|reg_data_o|q[20]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(20),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(20));

-- Location: LCFF_X14_Y13_N31
\u1|reg_n_anterior1|q[21]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(21),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(21));

-- Location: LCFF_X15_Y14_N31
\u1|reg_n_anterior2|q[21]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(21),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(21));

-- Location: LCCOMB_X14_Y14_N10
\u1|somador_n_anterior1_n_anterior2|Add0~85\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~85_sumout\ = SUM(( \u1|reg_n_anterior1|q\(21) ) + ( \u1|reg_n_anterior2|q\(21) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~82\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~86\ = CARRY(( \u1|reg_n_anterior1|q\(21) ) + ( \u1|reg_n_anterior2|q\(21) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|reg_n_anterior1|ALT_INV_q\(21),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(21),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~82\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~85_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~86\);

-- Location: LCCOMB_X13_Y13_N0
\u1|reg_n_fibonacci|q[21]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[21]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~85_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~85_sumout\,
	combout => \u1|reg_n_fibonacci|q[21]~feeder_combout\);

-- Location: LCFF_X13_Y13_N1
\u1|reg_n_fibonacci|q[21]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[21]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(21),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(21));

-- Location: LCFF_X13_Y17_N13
\u1|reg_data_o|q[21]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(21),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(21));

-- Location: LCFF_X14_Y13_N1
\u1|reg_n_anterior1|q[22]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(22),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(22));

-- Location: LCFF_X15_Y14_N19
\u1|reg_n_anterior2|q[22]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(22),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(22));

-- Location: LCCOMB_X14_Y14_N12
\u1|somador_n_anterior1_n_anterior2|Add0~89\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~89_sumout\ = SUM(( \u1|reg_n_anterior1|q\(22) ) + ( \u1|reg_n_anterior2|q\(22) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~86\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~90\ = CARRY(( \u1|reg_n_anterior1|q\(22) ) + ( \u1|reg_n_anterior2|q\(22) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior1|ALT_INV_q\(22),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(22),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~86\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~89_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~90\);

-- Location: LCCOMB_X13_Y13_N6
\u1|reg_n_fibonacci|q[22]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[22]~feeder_combout\ = ( \u1|somador_n_anterior1_n_anterior2|Add0~89_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~89_sumout\,
	combout => \u1|reg_n_fibonacci|q[22]~feeder_combout\);

-- Location: LCFF_X13_Y13_N7
\u1|reg_n_fibonacci|q[22]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[22]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(22),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(22));

-- Location: LCFF_X13_Y17_N1
\u1|reg_data_o|q[22]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(22),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(22));

-- Location: LCFF_X14_Y13_N3
\u1|reg_n_anterior1|q[23]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(23),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(23));

-- Location: LCFF_X15_Y14_N17
\u1|reg_n_anterior2|q[23]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(23),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(23));

-- Location: LCCOMB_X14_Y14_N14
\u1|somador_n_anterior1_n_anterior2|Add0~93\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~93_sumout\ = SUM(( \u1|reg_n_anterior2|q\(23) ) + ( \u1|reg_n_anterior1|q\(23) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~90\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~94\ = CARRY(( \u1|reg_n_anterior2|q\(23) ) + ( \u1|reg_n_anterior1|q\(23) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior2|ALT_INV_q\(23),
	dataf => \u1|reg_n_anterior1|ALT_INV_q\(23),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~90\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~93_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~94\);

-- Location: LCCOMB_X13_Y13_N2
\u1|reg_n_fibonacci|q[23]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[23]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~93_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~93_sumout\,
	combout => \u1|reg_n_fibonacci|q[23]~feeder_combout\);

-- Location: LCFF_X13_Y13_N3
\u1|reg_n_fibonacci|q[23]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[23]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(23),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(23));

-- Location: LCFF_X13_Y17_N3
\u1|reg_data_o|q[23]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(23),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(23));

-- Location: LCFF_X14_Y13_N5
\u1|reg_n_anterior1|q[24]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(24),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(24));

-- Location: LCFF_X15_Y14_N5
\u1|reg_n_anterior2|q[24]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(24),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(24));

-- Location: LCCOMB_X14_Y14_N16
\u1|somador_n_anterior1_n_anterior2|Add0~97\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~97_sumout\ = SUM(( \u1|reg_n_anterior1|q\(24) ) + ( \u1|reg_n_anterior2|q\(24) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~94\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~98\ = CARRY(( \u1|reg_n_anterior1|q\(24) ) + ( \u1|reg_n_anterior2|q\(24) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior1|ALT_INV_q\(24),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(24),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~94\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~97_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~98\);

-- Location: LCCOMB_X13_Y13_N4
\u1|reg_n_fibonacci|q[24]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[24]~feeder_combout\ = ( \u1|somador_n_anterior1_n_anterior2|Add0~97_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~97_sumout\,
	combout => \u1|reg_n_fibonacci|q[24]~feeder_combout\);

-- Location: LCFF_X13_Y13_N5
\u1|reg_n_fibonacci|q[24]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[24]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(24),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(24));

-- Location: LCFF_X13_Y17_N23
\u1|reg_data_o|q[24]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(24),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(24));

-- Location: LCFF_X14_Y13_N7
\u1|reg_n_anterior1|q[25]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(25),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(25));

-- Location: LCFF_X15_Y14_N7
\u1|reg_n_anterior2|q[25]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(25),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(25));

-- Location: LCCOMB_X14_Y14_N18
\u1|somador_n_anterior1_n_anterior2|Add0~101\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~101_sumout\ = SUM(( \u1|reg_n_anterior2|q\(25) ) + ( \u1|reg_n_anterior1|q\(25) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~98\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~102\ = CARRY(( \u1|reg_n_anterior2|q\(25) ) + ( \u1|reg_n_anterior1|q\(25) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_anterior2|ALT_INV_q\(25),
	dataf => \u1|reg_n_anterior1|ALT_INV_q\(25),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~98\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~101_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~102\);

-- Location: LCCOMB_X13_Y13_N24
\u1|reg_n_fibonacci|q[25]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[25]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~101_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~101_sumout\,
	combout => \u1|reg_n_fibonacci|q[25]~feeder_combout\);

-- Location: LCFF_X13_Y13_N25
\u1|reg_n_fibonacci|q[25]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[25]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(25),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(25));

-- Location: LCFF_X13_Y17_N21
\u1|reg_data_o|q[25]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(25),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(25));

-- Location: LCFF_X14_Y13_N9
\u1|reg_n_anterior1|q[26]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(26),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(26));

-- Location: LCFF_X15_Y14_N11
\u1|reg_n_anterior2|q[26]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(26),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(26));

-- Location: LCCOMB_X14_Y14_N20
\u1|somador_n_anterior1_n_anterior2|Add0~105\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~105_sumout\ = SUM(( \u1|reg_n_anterior1|q\(26) ) + ( \u1|reg_n_anterior2|q\(26) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~102\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~106\ = CARRY(( \u1|reg_n_anterior1|q\(26) ) + ( \u1|reg_n_anterior2|q\(26) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior1|ALT_INV_q\(26),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(26),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~102\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~105_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~106\);

-- Location: LCCOMB_X13_Y13_N26
\u1|reg_n_fibonacci|q[26]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[26]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~105_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~105_sumout\,
	combout => \u1|reg_n_fibonacci|q[26]~feeder_combout\);

-- Location: LCFF_X13_Y13_N27
\u1|reg_n_fibonacci|q[26]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[26]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(26),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(26));

-- Location: LCFF_X13_Y17_N27
\u1|reg_data_o|q[26]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(26),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(26));

-- Location: LCFF_X14_Y13_N11
\u1|reg_n_anterior1|q[27]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(27),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(27));

-- Location: LCFF_X15_Y14_N9
\u1|reg_n_anterior2|q[27]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(27),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(27));

-- Location: LCCOMB_X14_Y14_N22
\u1|somador_n_anterior1_n_anterior2|Add0~109\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~109_sumout\ = SUM(( \u1|reg_n_anterior1|q\(27) ) + ( \u1|reg_n_anterior2|q\(27) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~106\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~110\ = CARRY(( \u1|reg_n_anterior1|q\(27) ) + ( \u1|reg_n_anterior2|q\(27) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_anterior1|ALT_INV_q\(27),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(27),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~106\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~109_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~110\);

-- Location: LCCOMB_X9_Y15_N12
\u1|reg_n_fibonacci|q[27]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[27]~feeder_combout\ = ( \u1|somador_n_anterior1_n_anterior2|Add0~109_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~109_sumout\,
	combout => \u1|reg_n_fibonacci|q[27]~feeder_combout\);

-- Location: LCFF_X9_Y15_N13
\u1|reg_n_fibonacci|q[27]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[27]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(27),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(27));

-- Location: LCFF_X13_Y17_N25
\u1|reg_data_o|q[27]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(27),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(27));

-- Location: LCFF_X14_Y13_N13
\u1|reg_n_anterior1|q[28]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(28),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(28));

-- Location: LCFF_X15_Y14_N13
\u1|reg_n_anterior2|q[28]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(28),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(28));

-- Location: LCCOMB_X14_Y14_N24
\u1|somador_n_anterior1_n_anterior2|Add0~113\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~113_sumout\ = SUM(( \u1|reg_n_anterior1|q\(28) ) + ( \u1|reg_n_anterior2|q\(28) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~110\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~114\ = CARRY(( \u1|reg_n_anterior1|q\(28) ) + ( \u1|reg_n_anterior2|q\(28) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|reg_n_anterior2|ALT_INV_q\(28),
	datac => \u1|reg_n_anterior1|ALT_INV_q\(28),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~110\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~113_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~114\);

-- Location: LCCOMB_X9_Y15_N30
\u1|reg_n_fibonacci|q[28]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[28]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~113_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~113_sumout\,
	combout => \u1|reg_n_fibonacci|q[28]~feeder_combout\);

-- Location: LCFF_X9_Y15_N31
\u1|reg_n_fibonacci|q[28]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[28]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(28),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(28));

-- Location: LCFF_X13_Y17_N29
\u1|reg_data_o|q[28]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(28),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(28));

-- Location: LCFF_X14_Y13_N15
\u1|reg_n_anterior1|q[29]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(29),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(29));

-- Location: LCFF_X15_Y14_N15
\u1|reg_n_anterior2|q[29]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(29),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(29));

-- Location: LCCOMB_X14_Y14_N26
\u1|somador_n_anterior1_n_anterior2|Add0~117\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~117_sumout\ = SUM(( \u1|reg_n_anterior1|q\(29) ) + ( \u1|reg_n_anterior2|q\(29) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~114\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~118\ = CARRY(( \u1|reg_n_anterior1|q\(29) ) + ( \u1|reg_n_anterior2|q\(29) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_anterior1|ALT_INV_q\(29),
	dataf => \u1|reg_n_anterior2|ALT_INV_q\(29),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~114\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~117_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~118\);

-- Location: LCCOMB_X9_Y15_N22
\u1|reg_n_fibonacci|q[29]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[29]~feeder_combout\ = ( \u1|somador_n_anterior1_n_anterior2|Add0~117_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~117_sumout\,
	combout => \u1|reg_n_fibonacci|q[29]~feeder_combout\);

-- Location: LCFF_X9_Y15_N23
\u1|reg_n_fibonacci|q[29]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[29]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(29),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(29));

-- Location: LCFF_X13_Y17_N31
\u1|reg_data_o|q[29]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(29),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(29));

-- Location: LCFF_X11_Y16_N19
\u1|reg_n_anterior1|q[30]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(30),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(30));

-- Location: LCFF_X17_Y15_N19
\u1|reg_n_anterior2|q[30]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(30),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(30));

-- Location: LCCOMB_X14_Y14_N28
\u1|somador_n_anterior1_n_anterior2|Add0~121\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~121_sumout\ = SUM(( \u1|reg_n_anterior2|q\(30) ) + ( \u1|reg_n_anterior1|q\(30) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~118\ ))
-- \u1|somador_n_anterior1_n_anterior2|Add0~122\ = CARRY(( \u1|reg_n_anterior2|q\(30) ) + ( \u1|reg_n_anterior1|q\(30) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|reg_n_anterior2|ALT_INV_q\(30),
	dataf => \u1|reg_n_anterior1|ALT_INV_q\(30),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~118\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~121_sumout\,
	cout => \u1|somador_n_anterior1_n_anterior2|Add0~122\);

-- Location: LCCOMB_X9_Y15_N20
\u1|reg_n_fibonacci|q[30]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[30]~feeder_combout\ = \u1|somador_n_anterior1_n_anterior2|Add0~121_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~121_sumout\,
	combout => \u1|reg_n_fibonacci|q[30]~feeder_combout\);

-- Location: LCFF_X9_Y15_N21
\u1|reg_n_fibonacci|q[30]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[30]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(30),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(30));

-- Location: LCFF_X15_Y17_N1
\u1|reg_data_o|q[30]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(30),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(30));

-- Location: LCFF_X11_Y16_N17
\u1|reg_n_anterior1|q[31]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(31),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a1~combout\,
	sload => VCC,
	ena => \u0|l_a1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior1|q\(31));

-- Location: LCFF_X17_Y15_N17
\u1|reg_n_anterior2|q[31]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_anterior1|q\(31),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|ALT_INV_m_a2~combout\,
	sload => VCC,
	ena => \u0|l_a2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_anterior2|q\(31));

-- Location: LCCOMB_X14_Y14_N30
\u1|somador_n_anterior1_n_anterior2|Add0~125\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|somador_n_anterior1_n_anterior2|Add0~125_sumout\ = SUM(( \u1|reg_n_anterior2|q\(31) ) + ( \u1|reg_n_anterior1|q\(31) ) + ( \u1|somador_n_anterior1_n_anterior2|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|reg_n_anterior1|ALT_INV_q\(31),
	datad => \u1|reg_n_anterior2|ALT_INV_q\(31),
	cin => \u1|somador_n_anterior1_n_anterior2|Add0~122\,
	sumout => \u1|somador_n_anterior1_n_anterior2|Add0~125_sumout\);

-- Location: LCCOMB_X9_Y15_N28
\u1|reg_n_fibonacci|q[31]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|reg_n_fibonacci|q[31]~feeder_combout\ = ( \u1|somador_n_anterior1_n_anterior2|Add0~125_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|somador_n_anterior1_n_anterior2|ALT_INV_Add0~125_sumout\,
	combout => \u1|reg_n_fibonacci|q[31]~feeder_combout\);

-- Location: LCFF_X9_Y15_N29
\u1|reg_n_fibonacci|q[31]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|reg_n_fibonacci|q[31]~feeder_combout\,
	adatasdata => \u1|reg_n_max|q\(31),
	aclr => \rst~clkctrl_outclk\,
	sload => \u0|m_fib~combout\,
	ena => \u0|l_fib~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_n_fibonacci|q\(31));

-- Location: LCFF_X14_Y17_N15
\u1|reg_data_o|q[31]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	adatasdata => \u1|reg_n_fibonacci|q\(31),
	aclr => \rst~clkctrl_outclk\,
	sclr => \u0|m_d~combout\,
	sload => VCC,
	ena => \u0|l_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|reg_data_o|q\(31));

-- Location: LCCOMB_X10_Y15_N22
\u0|WideOr3\ : stratixii_lcell_comb
-- Equation(s):
-- \u0|WideOr3~combout\ = ( \u0|state.estado2~regout\ ) # ( !\u0|state.estado2~regout\ & ( ((!\u0|state.estado0~regout\) # (\u0|state.estado1~regout\)) # (\u0|state.estado13~regout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111110111111101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ALT_INV_state.estado13~regout\,
	datab => \u0|ALT_INV_state.estado0~regout\,
	datac => \u0|ALT_INV_state.estado1~regout\,
	dataf => \u0|ALT_INV_state.estado2~regout\,
	combout => \u0|WideOr3~combout\);

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(0));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(1));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(2));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(3));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(4));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(5));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(7));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(8));

-- Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(9));

-- Location: PIN_W13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(10));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(11));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(12));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(13));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(14));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(15));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[16]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(16));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[17]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(17));

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[18]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(18));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[19]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(19));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[20]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(20));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[21]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(21));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[22]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(22));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[23]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(23));

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[24]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(24));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[25]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(25));

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[26]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(26));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[27]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(27));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[28]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(28));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[29]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(29));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_o[30]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(30));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\data_o[31]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u1|reg_data_o|q\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_o(31));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\status_o[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u0|ALT_INV_WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_status_o(0));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\status_o[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u0|state.estado13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_status_o(1));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\irq_o~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u0|state.estado13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_irq_o);
END structure;


