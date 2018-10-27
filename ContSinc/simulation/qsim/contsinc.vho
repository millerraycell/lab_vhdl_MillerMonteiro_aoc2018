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

-- DATE "10/26/2018 22:48:26"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contsinc IS
    PORT (
	j : IN std_logic;
	k : IN std_logic;
	clock : IN std_logic;
	z1 : BUFFER std_logic;
	z2 : BUFFER std_logic;
	z3 : BUFFER std_logic
	);
END contsinc;

ARCHITECTURE structure OF contsinc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_j : std_logic;
SIGNAL ww_k : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_z1 : std_logic;
SIGNAL ww_z2 : std_logic;
SIGNAL ww_z3 : std_logic;
SIGNAL \z1~output_o\ : std_logic;
SIGNAL \z2~output_o\ : std_logic;
SIGNAL \z3~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \j~input_o\ : std_logic;
SIGNAL \k~input_o\ : std_logic;
SIGNAL \G0|Mux0~0_combout\ : std_logic;
SIGNAL \G0|state~q\ : std_logic;
SIGNAL \G1|state~0_combout\ : std_logic;
SIGNAL \G1|state~q\ : std_logic;
SIGNAL \G3|state~0_combout\ : std_logic;
SIGNAL \G3|state~q\ : std_logic;
SIGNAL \ALT_INV_k~input_o\ : std_logic;
SIGNAL \ALT_INV_j~input_o\ : std_logic;
SIGNAL \G3|ALT_INV_state~q\ : std_logic;
SIGNAL \G1|ALT_INV_state~q\ : std_logic;
SIGNAL \G0|ALT_INV_state~q\ : std_logic;

BEGIN

ww_j <= j;
ww_k <= k;
ww_clock <= clock;
z1 <= ww_z1;
z2 <= ww_z2;
z3 <= ww_z3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_k~input_o\ <= NOT \k~input_o\;
\ALT_INV_j~input_o\ <= NOT \j~input_o\;
\G3|ALT_INV_state~q\ <= NOT \G3|state~q\;
\G1|ALT_INV_state~q\ <= NOT \G1|state~q\;
\G0|ALT_INV_state~q\ <= NOT \G0|state~q\;

\z1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G0|state~q\,
	devoe => ww_devoe,
	o => \z1~output_o\);

\z2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|state~q\,
	devoe => ww_devoe,
	o => \z2~output_o\);

\z3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|state~q\,
	devoe => ww_devoe,
	o => \z3~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\j~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j,
	o => \j~input_o\);

\k~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k,
	o => \k~input_o\);

\G0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G0|Mux0~0_combout\ = (!\G0|state~q\ & (\j~input_o\)) # (\G0|state~q\ & ((!\k~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010011100100111001001110010011100100111001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G0|ALT_INV_state~q\,
	datab => \ALT_INV_j~input_o\,
	datac => \ALT_INV_k~input_o\,
	combout => \G0|Mux0~0_combout\);

\G0|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \G0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G0|state~q\);

\G1|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|state~0_combout\ = !\G0|state~q\ $ (!\G1|state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G0|ALT_INV_state~q\,
	datab => \G1|ALT_INV_state~q\,
	combout => \G1|state~0_combout\);

\G1|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \G1|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|state~q\);

\G3|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|state~0_combout\ = !\G3|state~q\ $ (((!\G0|state~q\) # (!\G1|state~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G0|ALT_INV_state~q\,
	datab => \G1|ALT_INV_state~q\,
	datac => \G3|ALT_INV_state~q\,
	combout => \G3|state~0_combout\);

\G3|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \G3|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|state~q\);

ww_z1 <= \z1~output_o\;

ww_z2 <= \z2~output_o\;

ww_z3 <= \z3~output_o\;
END structure;


