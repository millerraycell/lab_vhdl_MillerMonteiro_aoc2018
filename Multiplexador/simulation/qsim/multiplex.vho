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

-- DATE "10/26/2018 20:22:35"

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

ENTITY 	multiplex IS
    PORT (
	entrada1 : IN std_logic;
	entrada2 : IN std_logic;
	entrada3 : IN std_logic;
	entrada4 : IN std_logic;
	flag : IN std_logic_vector(1 DOWNTO 0);
	saida : BUFFER std_logic
	);
END multiplex;

ARCHITECTURE structure OF multiplex IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada1 : std_logic;
SIGNAL ww_entrada2 : std_logic;
SIGNAL ww_entrada3 : std_logic;
SIGNAL ww_entrada4 : std_logic;
SIGNAL ww_flag : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_saida : std_logic;
SIGNAL \saida~output_o\ : std_logic;
SIGNAL \entrada1~input_o\ : std_logic;
SIGNAL \entrada2~input_o\ : std_logic;
SIGNAL \entrada3~input_o\ : std_logic;
SIGNAL \entrada4~input_o\ : std_logic;
SIGNAL \flag[0]~input_o\ : std_logic;
SIGNAL \flag[1]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_entrada1~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada3~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada4~input_o\ : std_logic;
SIGNAL \ALT_INV_flag[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_flag[1]~input_o\ : std_logic;

BEGIN

ww_entrada1 <= entrada1;
ww_entrada2 <= entrada2;
ww_entrada3 <= entrada3;
ww_entrada4 <= entrada4;
ww_flag <= flag;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entrada1~input_o\ <= NOT \entrada1~input_o\;
\ALT_INV_entrada2~input_o\ <= NOT \entrada2~input_o\;
\ALT_INV_entrada3~input_o\ <= NOT \entrada3~input_o\;
\ALT_INV_entrada4~input_o\ <= NOT \entrada4~input_o\;
\ALT_INV_flag[0]~input_o\ <= NOT \flag[0]~input_o\;
\ALT_INV_flag[1]~input_o\ <= NOT \flag[1]~input_o\;

\saida~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \saida~output_o\);

\entrada1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1,
	o => \entrada1~input_o\);

\entrada2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2,
	o => \entrada2~input_o\);

\entrada3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada3,
	o => \entrada3~input_o\);

\entrada4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada4,
	o => \entrada4~input_o\);

\flag[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_flag(0),
	o => \flag[0]~input_o\);

\flag[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_flag(1),
	o => \flag[1]~input_o\);

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \flag[0]~input_o\ & ( \flag[1]~input_o\ & ( \entrada4~input_o\ ) ) ) # ( !\flag[0]~input_o\ & ( \flag[1]~input_o\ & ( \entrada3~input_o\ ) ) ) # ( \flag[0]~input_o\ & ( !\flag[1]~input_o\ & ( \entrada2~input_o\ ) ) ) # ( 
-- !\flag[0]~input_o\ & ( !\flag[1]~input_o\ & ( \entrada1~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada1~input_o\,
	datab => \ALT_INV_entrada2~input_o\,
	datac => \ALT_INV_entrada3~input_o\,
	datad => \ALT_INV_entrada4~input_o\,
	datae => \ALT_INV_flag[0]~input_o\,
	dataf => \ALT_INV_flag[1]~input_o\,
	combout => \Mux0~0_combout\);

ww_saida <= \saida~output_o\;
END structure;


