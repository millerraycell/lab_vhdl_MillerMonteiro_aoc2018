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

-- DATE "10/26/2018 20:00:45"

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

ENTITY 	registerd IS
    PORT (
	clk : IN std_logic;
	pin : IN std_logic;
	pout : BUFFER std_logic
	);
END registerd;

ARCHITECTURE structure OF registerd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pin : std_logic;
SIGNAL ww_pout : std_logic;
SIGNAL \pout~output_o\ : std_logic;
SIGNAL \pin~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \pout$latch~combout\ : std_logic;
SIGNAL \ALT_INV_pout$latch~combout\ : std_logic;
SIGNAL \ALT_INV_pin~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_pin <= pin;
pout <= ww_pout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_pout$latch~combout\ <= NOT \pout$latch~combout\;
\ALT_INV_pin~input_o\ <= NOT \pin~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;

\pout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pout$latch~combout\,
	devoe => ww_devoe,
	o => \pout~output_o\);

\pin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin,
	o => \pin~input_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\pout$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \pout$latch~combout\ = ( \pout$latch~combout\ & ( \clk~input_o\ & ( \pin~input_o\ ) ) ) # ( !\pout$latch~combout\ & ( \clk~input_o\ & ( \pin~input_o\ ) ) ) # ( \pout$latch~combout\ & ( !\clk~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_pin~input_o\,
	datae => \ALT_INV_pout$latch~combout\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \pout$latch~combout\);

ww_pout <= \pout~output_o\;
END structure;


