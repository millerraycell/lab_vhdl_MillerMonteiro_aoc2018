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

-- DATE "10/26/2018 21:58:59"

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

ENTITY 	sum IS
    PORT (
	entrada1 : IN std_logic_vector(15 DOWNTO 0);
	entrada2 : IN std_logic_vector(15 DOWNTO 0);
	saida : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END sum;

ARCHITECTURE structure OF sum IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_entrada2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(15 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[8]~output_o\ : std_logic;
SIGNAL \saida[9]~output_o\ : std_logic;
SIGNAL \saida[10]~output_o\ : std_logic;
SIGNAL \saida[11]~output_o\ : std_logic;
SIGNAL \saida[12]~output_o\ : std_logic;
SIGNAL \saida[13]~output_o\ : std_logic;
SIGNAL \saida[14]~output_o\ : std_logic;
SIGNAL \saida[15]~output_o\ : std_logic;
SIGNAL \entrada2[0]~input_o\ : std_logic;
SIGNAL \entrada1[0]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \entrada2[1]~input_o\ : std_logic;
SIGNAL \entrada1[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \entrada2[2]~input_o\ : std_logic;
SIGNAL \entrada1[2]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \entrada2[3]~input_o\ : std_logic;
SIGNAL \entrada1[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \entrada2[4]~input_o\ : std_logic;
SIGNAL \entrada1[4]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \entrada2[5]~input_o\ : std_logic;
SIGNAL \entrada1[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \entrada2[6]~input_o\ : std_logic;
SIGNAL \entrada1[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \entrada2[7]~input_o\ : std_logic;
SIGNAL \entrada1[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \entrada2[8]~input_o\ : std_logic;
SIGNAL \entrada1[8]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \entrada2[9]~input_o\ : std_logic;
SIGNAL \entrada1[9]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \entrada2[10]~input_o\ : std_logic;
SIGNAL \entrada1[10]~input_o\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \entrada2[11]~input_o\ : std_logic;
SIGNAL \entrada1[11]~input_o\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \entrada2[12]~input_o\ : std_logic;
SIGNAL \entrada1[12]~input_o\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \entrada2[13]~input_o\ : std_logic;
SIGNAL \entrada1[13]~input_o\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \entrada2[14]~input_o\ : std_logic;
SIGNAL \entrada1[14]~input_o\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \entrada2[15]~input_o\ : std_logic;
SIGNAL \entrada1[15]~input_o\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_entrada1[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[0]~input_o\ : std_logic;

BEGIN

ww_entrada1 <= entrada1;
ww_entrada2 <= entrada2;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entrada1[15]~input_o\ <= NOT \entrada1[15]~input_o\;
\ALT_INV_entrada2[15]~input_o\ <= NOT \entrada2[15]~input_o\;
\ALT_INV_entrada1[14]~input_o\ <= NOT \entrada1[14]~input_o\;
\ALT_INV_entrada2[14]~input_o\ <= NOT \entrada2[14]~input_o\;
\ALT_INV_entrada1[13]~input_o\ <= NOT \entrada1[13]~input_o\;
\ALT_INV_entrada2[13]~input_o\ <= NOT \entrada2[13]~input_o\;
\ALT_INV_entrada1[12]~input_o\ <= NOT \entrada1[12]~input_o\;
\ALT_INV_entrada2[12]~input_o\ <= NOT \entrada2[12]~input_o\;
\ALT_INV_entrada1[11]~input_o\ <= NOT \entrada1[11]~input_o\;
\ALT_INV_entrada2[11]~input_o\ <= NOT \entrada2[11]~input_o\;
\ALT_INV_entrada1[10]~input_o\ <= NOT \entrada1[10]~input_o\;
\ALT_INV_entrada2[10]~input_o\ <= NOT \entrada2[10]~input_o\;
\ALT_INV_entrada1[9]~input_o\ <= NOT \entrada1[9]~input_o\;
\ALT_INV_entrada2[9]~input_o\ <= NOT \entrada2[9]~input_o\;
\ALT_INV_entrada1[8]~input_o\ <= NOT \entrada1[8]~input_o\;
\ALT_INV_entrada2[8]~input_o\ <= NOT \entrada2[8]~input_o\;
\ALT_INV_entrada1[7]~input_o\ <= NOT \entrada1[7]~input_o\;
\ALT_INV_entrada2[7]~input_o\ <= NOT \entrada2[7]~input_o\;
\ALT_INV_entrada1[6]~input_o\ <= NOT \entrada1[6]~input_o\;
\ALT_INV_entrada2[6]~input_o\ <= NOT \entrada2[6]~input_o\;
\ALT_INV_entrada1[5]~input_o\ <= NOT \entrada1[5]~input_o\;
\ALT_INV_entrada2[5]~input_o\ <= NOT \entrada2[5]~input_o\;
\ALT_INV_entrada1[4]~input_o\ <= NOT \entrada1[4]~input_o\;
\ALT_INV_entrada2[4]~input_o\ <= NOT \entrada2[4]~input_o\;
\ALT_INV_entrada1[3]~input_o\ <= NOT \entrada1[3]~input_o\;
\ALT_INV_entrada2[3]~input_o\ <= NOT \entrada2[3]~input_o\;
\ALT_INV_entrada1[2]~input_o\ <= NOT \entrada1[2]~input_o\;
\ALT_INV_entrada2[2]~input_o\ <= NOT \entrada2[2]~input_o\;
\ALT_INV_entrada1[1]~input_o\ <= NOT \entrada1[1]~input_o\;
\ALT_INV_entrada2[1]~input_o\ <= NOT \entrada2[1]~input_o\;
\ALT_INV_entrada1[0]~input_o\ <= NOT \entrada1[0]~input_o\;
\ALT_INV_entrada2[0]~input_o\ <= NOT \entrada2[0]~input_o\;

\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_sumout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~5_sumout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~9_sumout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~13_sumout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_sumout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~21_sumout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~25_sumout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~29_sumout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~33_sumout\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~37_sumout\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~41_sumout\,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~45_sumout\,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~49_sumout\,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~53_sumout\,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~57_sumout\,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~61_sumout\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

\entrada2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(0),
	o => \entrada2[0]~input_o\);

\entrada1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(0),
	o => \entrada1[0]~input_o\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \entrada2[0]~input_o\ ) + ( \entrada1[0]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \entrada2[0]~input_o\ ) + ( \entrada1[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[0]~input_o\,
	dataf => \ALT_INV_entrada1[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\entrada2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(1),
	o => \entrada2[1]~input_o\);

\entrada1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(1),
	o => \entrada1[1]~input_o\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \entrada2[1]~input_o\ ) + ( \entrada1[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \entrada2[1]~input_o\ ) + ( \entrada1[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[1]~input_o\,
	dataf => \ALT_INV_entrada1[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\entrada2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(2),
	o => \entrada2[2]~input_o\);

\entrada1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(2),
	o => \entrada1[2]~input_o\);

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \entrada2[2]~input_o\ ) + ( \entrada1[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \entrada2[2]~input_o\ ) + ( \entrada1[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[2]~input_o\,
	dataf => \ALT_INV_entrada1[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\entrada2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(3),
	o => \entrada2[3]~input_o\);

\entrada1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(3),
	o => \entrada1[3]~input_o\);

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \entrada2[3]~input_o\ ) + ( \entrada1[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \entrada2[3]~input_o\ ) + ( \entrada1[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[3]~input_o\,
	dataf => \ALT_INV_entrada1[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\entrada2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(4),
	o => \entrada2[4]~input_o\);

\entrada1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(4),
	o => \entrada1[4]~input_o\);

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \entrada2[4]~input_o\ ) + ( \entrada1[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \entrada2[4]~input_o\ ) + ( \entrada1[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[4]~input_o\,
	dataf => \ALT_INV_entrada1[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\entrada2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(5),
	o => \entrada2[5]~input_o\);

\entrada1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(5),
	o => \entrada1[5]~input_o\);

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \entrada2[5]~input_o\ ) + ( \entrada1[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \entrada2[5]~input_o\ ) + ( \entrada1[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[5]~input_o\,
	dataf => \ALT_INV_entrada1[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\entrada2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(6),
	o => \entrada2[6]~input_o\);

\entrada1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(6),
	o => \entrada1[6]~input_o\);

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \entrada2[6]~input_o\ ) + ( \entrada1[6]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \entrada2[6]~input_o\ ) + ( \entrada1[6]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[6]~input_o\,
	dataf => \ALT_INV_entrada1[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\entrada2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(7),
	o => \entrada2[7]~input_o\);

\entrada1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(7),
	o => \entrada1[7]~input_o\);

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \entrada2[7]~input_o\ ) + ( \entrada1[7]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \entrada2[7]~input_o\ ) + ( \entrada1[7]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[7]~input_o\,
	dataf => \ALT_INV_entrada1[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\entrada2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(8),
	o => \entrada2[8]~input_o\);

\entrada1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(8),
	o => \entrada1[8]~input_o\);

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \entrada2[8]~input_o\ ) + ( \entrada1[8]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \entrada2[8]~input_o\ ) + ( \entrada1[8]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[8]~input_o\,
	dataf => \ALT_INV_entrada1[8]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\entrada2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(9),
	o => \entrada2[9]~input_o\);

\entrada1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(9),
	o => \entrada1[9]~input_o\);

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \entrada2[9]~input_o\ ) + ( \entrada1[9]~input_o\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \entrada2[9]~input_o\ ) + ( \entrada1[9]~input_o\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[9]~input_o\,
	dataf => \ALT_INV_entrada1[9]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\entrada2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(10),
	o => \entrada2[10]~input_o\);

\entrada1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(10),
	o => \entrada1[10]~input_o\);

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \entrada2[10]~input_o\ ) + ( \entrada1[10]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \entrada2[10]~input_o\ ) + ( \entrada1[10]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[10]~input_o\,
	dataf => \ALT_INV_entrada1[10]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

\entrada2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(11),
	o => \entrada2[11]~input_o\);

\entrada1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(11),
	o => \entrada1[11]~input_o\);

\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \entrada2[11]~input_o\ ) + ( \entrada1[11]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \entrada2[11]~input_o\ ) + ( \entrada1[11]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[11]~input_o\,
	dataf => \ALT_INV_entrada1[11]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

\entrada2[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(12),
	o => \entrada2[12]~input_o\);

\entrada1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(12),
	o => \entrada1[12]~input_o\);

\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \entrada2[12]~input_o\ ) + ( \entrada1[12]~input_o\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \entrada2[12]~input_o\ ) + ( \entrada1[12]~input_o\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[12]~input_o\,
	dataf => \ALT_INV_entrada1[12]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

\entrada2[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(13),
	o => \entrada2[13]~input_o\);

\entrada1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(13),
	o => \entrada1[13]~input_o\);

\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \entrada2[13]~input_o\ ) + ( \entrada1[13]~input_o\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \entrada2[13]~input_o\ ) + ( \entrada1[13]~input_o\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[13]~input_o\,
	dataf => \ALT_INV_entrada1[13]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

\entrada2[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(14),
	o => \entrada2[14]~input_o\);

\entrada1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(14),
	o => \entrada1[14]~input_o\);

\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \entrada2[14]~input_o\ ) + ( \entrada1[14]~input_o\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \entrada2[14]~input_o\ ) + ( \entrada1[14]~input_o\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[14]~input_o\,
	dataf => \ALT_INV_entrada1[14]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

\entrada2[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(15),
	o => \entrada2[15]~input_o\);

\entrada1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(15),
	o => \entrada1[15]~input_o\);

\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \entrada2[15]~input_o\ ) + ( \entrada1[15]~input_o\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada2[15]~input_o\,
	dataf => \ALT_INV_entrada1[15]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(8) <= \saida[8]~output_o\;

ww_saida(9) <= \saida[9]~output_o\;

ww_saida(10) <= \saida[10]~output_o\;

ww_saida(11) <= \saida[11]~output_o\;

ww_saida(12) <= \saida[12]~output_o\;

ww_saida(13) <= \saida[13]~output_o\;

ww_saida(14) <= \saida[14]~output_o\;

ww_saida(15) <= \saida[15]~output_o\;
END structure;


