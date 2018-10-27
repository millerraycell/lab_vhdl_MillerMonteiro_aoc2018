-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "10/24/2018 17:53:11"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	somador IS
    PORT (
	entrada : IN std_logic_vector(15 DOWNTO 0);
	saida : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END somador;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[9]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[10]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[11]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[12]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[13]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[14]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[7]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[8]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[9]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[10]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[11]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[12]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[13]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[14]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[15]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF somador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \entrada[7]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \entrada[8]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \entrada[9]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \entrada[10]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \entrada[11]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \entrada[12]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \entrada[13]~input_o\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \entrada[14]~input_o\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \entrada[15]~input_o\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_entrada[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[2]~input_o\ : std_logic;

BEGIN

ww_entrada <= entrada;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entrada[15]~input_o\ <= NOT \entrada[15]~input_o\;
\ALT_INV_entrada[14]~input_o\ <= NOT \entrada[14]~input_o\;
\ALT_INV_entrada[13]~input_o\ <= NOT \entrada[13]~input_o\;
\ALT_INV_entrada[12]~input_o\ <= NOT \entrada[12]~input_o\;
\ALT_INV_entrada[11]~input_o\ <= NOT \entrada[11]~input_o\;
\ALT_INV_entrada[10]~input_o\ <= NOT \entrada[10]~input_o\;
\ALT_INV_entrada[9]~input_o\ <= NOT \entrada[9]~input_o\;
\ALT_INV_entrada[8]~input_o\ <= NOT \entrada[8]~input_o\;
\ALT_INV_entrada[7]~input_o\ <= NOT \entrada[7]~input_o\;
\ALT_INV_entrada[6]~input_o\ <= NOT \entrada[6]~input_o\;
\ALT_INV_entrada[5]~input_o\ <= NOT \entrada[5]~input_o\;
\ALT_INV_entrada[4]~input_o\ <= NOT \entrada[4]~input_o\;
\ALT_INV_entrada[3]~input_o\ <= NOT \entrada[3]~input_o\;
\ALT_INV_entrada[2]~input_o\ <= NOT \entrada[2]~input_o\;

-- Location: IOOBUF_X56_Y0_N36
\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[0]~input_o\,
	devoe => ww_devoe,
	o => ww_saida(0));

-- Location: IOOBUF_X8_Y0_N53
\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[1]~input_o\,
	devoe => ww_devoe,
	o => ww_saida(1));

-- Location: IOOBUF_X40_Y0_N2
\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_entrada[2]~input_o\,
	devoe => ww_devoe,
	o => ww_saida(2));

-- Location: IOOBUF_X34_Y0_N93
\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_saida(3));

-- Location: IOOBUF_X40_Y0_N53
\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_saida(4));

-- Location: IOOBUF_X30_Y0_N2
\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_saida(5));

-- Location: IOOBUF_X34_Y0_N76
\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_saida(6));

-- Location: IOOBUF_X36_Y0_N36
\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_saida(7));

-- Location: IOOBUF_X30_Y0_N19
\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_saida(8));

-- Location: IOOBUF_X34_Y0_N59
\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_saida(9));

-- Location: IOOBUF_X38_Y0_N19
\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_saida(10));

-- Location: IOOBUF_X38_Y0_N2
\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~33_sumout\,
	devoe => ww_devoe,
	o => ww_saida(11));

-- Location: IOOBUF_X36_Y0_N53
\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~37_sumout\,
	devoe => ww_devoe,
	o => ww_saida(12));

-- Location: IOOBUF_X36_Y0_N2
\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~41_sumout\,
	devoe => ww_devoe,
	o => ww_saida(13));

-- Location: IOOBUF_X32_Y0_N19
\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~45_sumout\,
	devoe => ww_devoe,
	o => ww_saida(14));

-- Location: IOOBUF_X38_Y0_N36
\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~49_sumout\,
	devoe => ww_devoe,
	o => ww_saida(15));

-- Location: IOIBUF_X56_Y0_N1
\entrada[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\entrada[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\entrada[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\entrada[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: MLABCELL_X34_Y1_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \entrada[3]~input_o\ ) + ( \entrada[2]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \entrada[3]~input_o\ ) + ( \entrada[2]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[2]~input_o\,
	datac => \ALT_INV_entrada[3]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: IOIBUF_X32_Y0_N52
\entrada[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

-- Location: MLABCELL_X34_Y1_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \entrada[4]~input_o\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \entrada[4]~input_o\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entrada[4]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: IOIBUF_X32_Y0_N1
\entrada[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

-- Location: MLABCELL_X34_Y1_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \entrada[5]~input_o\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \entrada[5]~input_o\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entrada[5]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: IOIBUF_X28_Y0_N1
\entrada[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

-- Location: MLABCELL_X34_Y1_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \entrada[6]~input_o\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \entrada[6]~input_o\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[6]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: IOIBUF_X30_Y0_N52
\entrada[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(7),
	o => \entrada[7]~input_o\);

-- Location: MLABCELL_X34_Y1_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \entrada[7]~input_o\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \entrada[7]~input_o\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entrada[7]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: IOIBUF_X34_Y0_N41
\entrada[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(8),
	o => \entrada[8]~input_o\);

-- Location: MLABCELL_X34_Y1_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \entrada[8]~input_o\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \entrada[8]~input_o\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entrada[8]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: IOIBUF_X36_Y0_N18
\entrada[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(9),
	o => \entrada[9]~input_o\);

-- Location: MLABCELL_X34_Y1_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \entrada[9]~input_o\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \entrada[9]~input_o\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entrada[9]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: IOIBUF_X38_Y0_N52
\entrada[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(10),
	o => \entrada[10]~input_o\);

-- Location: MLABCELL_X34_Y1_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \entrada[10]~input_o\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \entrada[10]~input_o\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[10]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: IOIBUF_X28_Y0_N52
\entrada[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(11),
	o => \entrada[11]~input_o\);

-- Location: MLABCELL_X34_Y1_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \entrada[11]~input_o\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \entrada[11]~input_o\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entrada[11]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: IOIBUF_X30_Y0_N35
\entrada[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(12),
	o => \entrada[12]~input_o\);

-- Location: MLABCELL_X34_Y1_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \entrada[12]~input_o\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \entrada[12]~input_o\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[12]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: IOIBUF_X32_Y0_N35
\entrada[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(13),
	o => \entrada[13]~input_o\);

-- Location: MLABCELL_X34_Y1_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \entrada[13]~input_o\ ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \entrada[13]~input_o\ ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entrada[13]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: IOIBUF_X28_Y0_N18
\entrada[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(14),
	o => \entrada[14]~input_o\);

-- Location: MLABCELL_X34_Y1_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \entrada[14]~input_o\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \entrada[14]~input_o\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entrada[14]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: IOIBUF_X28_Y0_N35
\entrada[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(15),
	o => \entrada[15]~input_o\);

-- Location: MLABCELL_X34_Y1_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \entrada[15]~input_o\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entrada[15]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\);

-- Location: LABCELL_X40_Y78_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


