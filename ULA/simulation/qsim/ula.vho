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

-- DATE "10/26/2018 22:21:53"

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

ENTITY 	ula IS
    PORT (
	flag : IN std_logic_vector(3 DOWNTO 0);
	entrada1 : IN std_logic_vector(15 DOWNTO 0);
	entrada2 : IN std_logic_vector(15 DOWNTO 0);
	saida : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END ula;

ARCHITECTURE structure OF ula IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_flag : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \flag[3]~input_o\ : std_logic;
SIGNAL \entrada2[0]~input_o\ : std_logic;
SIGNAL \entrada1[0]~input_o\ : std_logic;
SIGNAL \flag[0]~input_o\ : std_logic;
SIGNAL \G9|Add0~66_cout\ : std_logic;
SIGNAL \G9|Add0~1_sumout\ : std_logic;
SIGNAL \flag[2]~input_o\ : std_logic;
SIGNAL \entrada1[2]~input_o\ : std_logic;
SIGNAL \G10|Mux0~0_combout\ : std_logic;
SIGNAL \flag[1]~input_o\ : std_logic;
SIGNAL \G10|Mux0~1_combout\ : std_logic;
SIGNAL \G10|Mux0~2_combout\ : std_logic;
SIGNAL \G10|Mux16~0_combout\ : std_logic;
SIGNAL \entrada2[1]~input_o\ : std_logic;
SIGNAL \entrada1[1]~input_o\ : std_logic;
SIGNAL \G9|Add0~2\ : std_logic;
SIGNAL \G9|Add0~5_sumout\ : std_logic;
SIGNAL \entrada1[3]~input_o\ : std_logic;
SIGNAL \G10|Mux1~0_combout\ : std_logic;
SIGNAL \G10|Mux1~1_combout\ : std_logic;
SIGNAL \G10|Mux1~2_combout\ : std_logic;
SIGNAL \entrada2[2]~input_o\ : std_logic;
SIGNAL \G9|Add0~6\ : std_logic;
SIGNAL \G9|Add0~9_sumout\ : std_logic;
SIGNAL \entrada1[4]~input_o\ : std_logic;
SIGNAL \G10|Mux2~0_combout\ : std_logic;
SIGNAL \G10|Mux2~1_combout\ : std_logic;
SIGNAL \G10|Mux2~2_combout\ : std_logic;
SIGNAL \entrada2[3]~input_o\ : std_logic;
SIGNAL \G9|Add0~10\ : std_logic;
SIGNAL \G9|Add0~13_sumout\ : std_logic;
SIGNAL \entrada1[5]~input_o\ : std_logic;
SIGNAL \G10|Mux3~0_combout\ : std_logic;
SIGNAL \G10|Mux3~1_combout\ : std_logic;
SIGNAL \G10|Mux3~2_combout\ : std_logic;
SIGNAL \entrada2[4]~input_o\ : std_logic;
SIGNAL \G9|Add0~14\ : std_logic;
SIGNAL \G9|Add0~17_sumout\ : std_logic;
SIGNAL \entrada1[6]~input_o\ : std_logic;
SIGNAL \G10|Mux4~0_combout\ : std_logic;
SIGNAL \G10|Mux4~1_combout\ : std_logic;
SIGNAL \G10|Mux4~2_combout\ : std_logic;
SIGNAL \entrada2[5]~input_o\ : std_logic;
SIGNAL \G9|Add0~18\ : std_logic;
SIGNAL \G9|Add0~21_sumout\ : std_logic;
SIGNAL \entrada1[7]~input_o\ : std_logic;
SIGNAL \G10|Mux5~0_combout\ : std_logic;
SIGNAL \G10|Mux5~1_combout\ : std_logic;
SIGNAL \G10|Mux5~2_combout\ : std_logic;
SIGNAL \entrada2[6]~input_o\ : std_logic;
SIGNAL \G9|Add0~22\ : std_logic;
SIGNAL \G9|Add0~25_sumout\ : std_logic;
SIGNAL \entrada1[8]~input_o\ : std_logic;
SIGNAL \G10|Mux6~0_combout\ : std_logic;
SIGNAL \G10|Mux6~1_combout\ : std_logic;
SIGNAL \G10|Mux6~2_combout\ : std_logic;
SIGNAL \entrada2[7]~input_o\ : std_logic;
SIGNAL \G9|Add0~26\ : std_logic;
SIGNAL \G9|Add0~29_sumout\ : std_logic;
SIGNAL \entrada1[9]~input_o\ : std_logic;
SIGNAL \G10|Mux7~0_combout\ : std_logic;
SIGNAL \G10|Mux7~1_combout\ : std_logic;
SIGNAL \G10|Mux7~2_combout\ : std_logic;
SIGNAL \entrada2[8]~input_o\ : std_logic;
SIGNAL \G9|Add0~30\ : std_logic;
SIGNAL \G9|Add0~33_sumout\ : std_logic;
SIGNAL \entrada1[10]~input_o\ : std_logic;
SIGNAL \G10|Mux8~0_combout\ : std_logic;
SIGNAL \G10|Mux8~1_combout\ : std_logic;
SIGNAL \G10|Mux8~2_combout\ : std_logic;
SIGNAL \entrada2[9]~input_o\ : std_logic;
SIGNAL \G9|Add0~34\ : std_logic;
SIGNAL \G9|Add0~37_sumout\ : std_logic;
SIGNAL \entrada1[11]~input_o\ : std_logic;
SIGNAL \G10|Mux9~0_combout\ : std_logic;
SIGNAL \G10|Mux9~1_combout\ : std_logic;
SIGNAL \G10|Mux9~2_combout\ : std_logic;
SIGNAL \entrada2[10]~input_o\ : std_logic;
SIGNAL \G9|Add0~38\ : std_logic;
SIGNAL \G9|Add0~41_sumout\ : std_logic;
SIGNAL \entrada1[12]~input_o\ : std_logic;
SIGNAL \G10|Mux10~0_combout\ : std_logic;
SIGNAL \G10|Mux10~1_combout\ : std_logic;
SIGNAL \G10|Mux10~2_combout\ : std_logic;
SIGNAL \entrada2[11]~input_o\ : std_logic;
SIGNAL \G9|Add0~42\ : std_logic;
SIGNAL \G9|Add0~45_sumout\ : std_logic;
SIGNAL \entrada1[13]~input_o\ : std_logic;
SIGNAL \G10|Mux11~0_combout\ : std_logic;
SIGNAL \G10|Mux11~1_combout\ : std_logic;
SIGNAL \G10|Mux11~2_combout\ : std_logic;
SIGNAL \entrada2[12]~input_o\ : std_logic;
SIGNAL \G9|Add0~46\ : std_logic;
SIGNAL \G9|Add0~49_sumout\ : std_logic;
SIGNAL \entrada1[14]~input_o\ : std_logic;
SIGNAL \G10|Mux12~0_combout\ : std_logic;
SIGNAL \G10|Mux12~1_combout\ : std_logic;
SIGNAL \G10|Mux12~2_combout\ : std_logic;
SIGNAL \entrada2[13]~input_o\ : std_logic;
SIGNAL \G9|Add0~50\ : std_logic;
SIGNAL \G9|Add0~53_sumout\ : std_logic;
SIGNAL \entrada1[15]~input_o\ : std_logic;
SIGNAL \G10|Mux13~0_combout\ : std_logic;
SIGNAL \G10|Mux13~1_combout\ : std_logic;
SIGNAL \G10|Mux13~2_combout\ : std_logic;
SIGNAL \entrada2[14]~input_o\ : std_logic;
SIGNAL \G9|Add0~54\ : std_logic;
SIGNAL \G9|Add0~57_sumout\ : std_logic;
SIGNAL \G10|Mux15~0_combout\ : std_logic;
SIGNAL \G10|Mux14~1_combout\ : std_logic;
SIGNAL \G10|Mux14~0_combout\ : std_logic;
SIGNAL \entrada2[15]~input_o\ : std_logic;
SIGNAL \G9|Add0~58\ : std_logic;
SIGNAL \G9|Add0~61_sumout\ : std_logic;
SIGNAL \G10|Mux15~2_combout\ : std_logic;
SIGNAL \G10|Mux15~1_combout\ : std_logic;
SIGNAL \ALT_INV_entrada1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_flag[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_flag[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_flag[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_flag[3]~input_o\ : std_logic;
SIGNAL \G10|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G10|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \G9|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_entrada2[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada1[1]~input_o\ : std_logic;

BEGIN

ww_flag <= flag;
ww_entrada1 <= entrada1;
ww_entrada2 <= entrada2;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entrada1[3]~input_o\ <= NOT \entrada1[3]~input_o\;
\ALT_INV_entrada2[1]~input_o\ <= NOT \entrada2[1]~input_o\;
\ALT_INV_flag[1]~input_o\ <= NOT \flag[1]~input_o\;
\ALT_INV_entrada1[0]~input_o\ <= NOT \entrada1[0]~input_o\;
\ALT_INV_entrada1[2]~input_o\ <= NOT \entrada1[2]~input_o\;
\ALT_INV_flag[0]~input_o\ <= NOT \flag[0]~input_o\;
\ALT_INV_flag[2]~input_o\ <= NOT \flag[2]~input_o\;
\ALT_INV_entrada2[0]~input_o\ <= NOT \entrada2[0]~input_o\;
\ALT_INV_flag[3]~input_o\ <= NOT \flag[3]~input_o\;
\G10|ALT_INV_Mux14~1_combout\ <= NOT \G10|Mux14~1_combout\;
\G10|ALT_INV_Mux15~2_combout\ <= NOT \G10|Mux15~2_combout\;
\G10|ALT_INV_Mux15~0_combout\ <= NOT \G10|Mux15~0_combout\;
\G10|ALT_INV_Mux13~1_combout\ <= NOT \G10|Mux13~1_combout\;
\G10|ALT_INV_Mux13~0_combout\ <= NOT \G10|Mux13~0_combout\;
\G10|ALT_INV_Mux12~1_combout\ <= NOT \G10|Mux12~1_combout\;
\G10|ALT_INV_Mux12~0_combout\ <= NOT \G10|Mux12~0_combout\;
\G10|ALT_INV_Mux11~1_combout\ <= NOT \G10|Mux11~1_combout\;
\G10|ALT_INV_Mux11~0_combout\ <= NOT \G10|Mux11~0_combout\;
\G10|ALT_INV_Mux10~1_combout\ <= NOT \G10|Mux10~1_combout\;
\G10|ALT_INV_Mux10~0_combout\ <= NOT \G10|Mux10~0_combout\;
\G10|ALT_INV_Mux9~1_combout\ <= NOT \G10|Mux9~1_combout\;
\G10|ALT_INV_Mux9~0_combout\ <= NOT \G10|Mux9~0_combout\;
\G10|ALT_INV_Mux8~1_combout\ <= NOT \G10|Mux8~1_combout\;
\G10|ALT_INV_Mux8~0_combout\ <= NOT \G10|Mux8~0_combout\;
\G10|ALT_INV_Mux7~1_combout\ <= NOT \G10|Mux7~1_combout\;
\G10|ALT_INV_Mux7~0_combout\ <= NOT \G10|Mux7~0_combout\;
\G10|ALT_INV_Mux6~1_combout\ <= NOT \G10|Mux6~1_combout\;
\G10|ALT_INV_Mux6~0_combout\ <= NOT \G10|Mux6~0_combout\;
\G10|ALT_INV_Mux5~1_combout\ <= NOT \G10|Mux5~1_combout\;
\G10|ALT_INV_Mux5~0_combout\ <= NOT \G10|Mux5~0_combout\;
\G10|ALT_INV_Mux4~1_combout\ <= NOT \G10|Mux4~1_combout\;
\G10|ALT_INV_Mux4~0_combout\ <= NOT \G10|Mux4~0_combout\;
\G10|ALT_INV_Mux3~1_combout\ <= NOT \G10|Mux3~1_combout\;
\G10|ALT_INV_Mux3~0_combout\ <= NOT \G10|Mux3~0_combout\;
\G10|ALT_INV_Mux2~1_combout\ <= NOT \G10|Mux2~1_combout\;
\G10|ALT_INV_Mux2~0_combout\ <= NOT \G10|Mux2~0_combout\;
\G10|ALT_INV_Mux1~1_combout\ <= NOT \G10|Mux1~1_combout\;
\G10|ALT_INV_Mux1~0_combout\ <= NOT \G10|Mux1~0_combout\;
\G10|ALT_INV_Mux0~1_combout\ <= NOT \G10|Mux0~1_combout\;
\G10|ALT_INV_Mux0~0_combout\ <= NOT \G10|Mux0~0_combout\;
\G9|ALT_INV_Add0~61_sumout\ <= NOT \G9|Add0~61_sumout\;
\G9|ALT_INV_Add0~57_sumout\ <= NOT \G9|Add0~57_sumout\;
\G9|ALT_INV_Add0~53_sumout\ <= NOT \G9|Add0~53_sumout\;
\G9|ALT_INV_Add0~49_sumout\ <= NOT \G9|Add0~49_sumout\;
\G9|ALT_INV_Add0~45_sumout\ <= NOT \G9|Add0~45_sumout\;
\G9|ALT_INV_Add0~41_sumout\ <= NOT \G9|Add0~41_sumout\;
\G9|ALT_INV_Add0~37_sumout\ <= NOT \G9|Add0~37_sumout\;
\G9|ALT_INV_Add0~33_sumout\ <= NOT \G9|Add0~33_sumout\;
\G9|ALT_INV_Add0~29_sumout\ <= NOT \G9|Add0~29_sumout\;
\G9|ALT_INV_Add0~25_sumout\ <= NOT \G9|Add0~25_sumout\;
\G9|ALT_INV_Add0~21_sumout\ <= NOT \G9|Add0~21_sumout\;
\G9|ALT_INV_Add0~17_sumout\ <= NOT \G9|Add0~17_sumout\;
\G9|ALT_INV_Add0~13_sumout\ <= NOT \G9|Add0~13_sumout\;
\G9|ALT_INV_Add0~9_sumout\ <= NOT \G9|Add0~9_sumout\;
\G9|ALT_INV_Add0~5_sumout\ <= NOT \G9|Add0~5_sumout\;
\G9|ALT_INV_Add0~1_sumout\ <= NOT \G9|Add0~1_sumout\;
\ALT_INV_entrada2[15]~input_o\ <= NOT \entrada2[15]~input_o\;
\ALT_INV_entrada2[14]~input_o\ <= NOT \entrada2[14]~input_o\;
\ALT_INV_entrada1[15]~input_o\ <= NOT \entrada1[15]~input_o\;
\ALT_INV_entrada2[13]~input_o\ <= NOT \entrada2[13]~input_o\;
\ALT_INV_entrada1[14]~input_o\ <= NOT \entrada1[14]~input_o\;
\ALT_INV_entrada2[12]~input_o\ <= NOT \entrada2[12]~input_o\;
\ALT_INV_entrada1[13]~input_o\ <= NOT \entrada1[13]~input_o\;
\ALT_INV_entrada2[11]~input_o\ <= NOT \entrada2[11]~input_o\;
\ALT_INV_entrada1[12]~input_o\ <= NOT \entrada1[12]~input_o\;
\ALT_INV_entrada2[10]~input_o\ <= NOT \entrada2[10]~input_o\;
\ALT_INV_entrada1[11]~input_o\ <= NOT \entrada1[11]~input_o\;
\ALT_INV_entrada2[9]~input_o\ <= NOT \entrada2[9]~input_o\;
\ALT_INV_entrada1[10]~input_o\ <= NOT \entrada1[10]~input_o\;
\ALT_INV_entrada2[8]~input_o\ <= NOT \entrada2[8]~input_o\;
\ALT_INV_entrada1[9]~input_o\ <= NOT \entrada1[9]~input_o\;
\ALT_INV_entrada2[7]~input_o\ <= NOT \entrada2[7]~input_o\;
\ALT_INV_entrada1[8]~input_o\ <= NOT \entrada1[8]~input_o\;
\ALT_INV_entrada2[6]~input_o\ <= NOT \entrada2[6]~input_o\;
\ALT_INV_entrada1[7]~input_o\ <= NOT \entrada1[7]~input_o\;
\ALT_INV_entrada2[5]~input_o\ <= NOT \entrada2[5]~input_o\;
\ALT_INV_entrada1[6]~input_o\ <= NOT \entrada1[6]~input_o\;
\ALT_INV_entrada2[4]~input_o\ <= NOT \entrada2[4]~input_o\;
\ALT_INV_entrada1[5]~input_o\ <= NOT \entrada1[5]~input_o\;
\ALT_INV_entrada2[3]~input_o\ <= NOT \entrada2[3]~input_o\;
\ALT_INV_entrada1[4]~input_o\ <= NOT \entrada1[4]~input_o\;
\ALT_INV_entrada2[2]~input_o\ <= NOT \entrada2[2]~input_o\;
\ALT_INV_entrada1[1]~input_o\ <= NOT \entrada1[1]~input_o\;

\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G10|Mux0~2_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux1~2_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux2~2_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux3~2_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux4~2_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux5~2_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux6~2_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux7~2_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux8~2_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux9~2_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux10~2_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux11~2_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux12~2_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux13~2_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux14~0_combout\,
	oe => \G10|Mux16~0_combout\,
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
	i => \G10|Mux15~1_combout\,
	oe => \G10|Mux16~0_combout\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

\flag[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_flag(3),
	o => \flag[3]~input_o\);

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

\flag[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_flag(0),
	o => \flag[0]~input_o\);

\G9|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~66_cout\ = CARRY(( !\flag[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_flag[0]~input_o\,
	cin => GND,
	cout => \G9|Add0~66_cout\);

\G9|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~1_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[0]~input_o\) ) + ( \entrada1[0]~input_o\ ) + ( \G9|Add0~66_cout\ ))
-- \G9|Add0~2\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[0]~input_o\) ) + ( \entrada1[0]~input_o\ ) + ( \G9|Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[0]~input_o\,
	dataf => \ALT_INV_entrada1[0]~input_o\,
	cin => \G9|Add0~66_cout\,
	sumout => \G9|Add0~1_sumout\,
	cout => \G9|Add0~2\);

\flag[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_flag(2),
	o => \flag[2]~input_o\);

\entrada1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(2),
	o => \entrada1[2]~input_o\);

\G10|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux0~0_combout\ = ( \entrada1[2]~input_o\ & ( \entrada1[0]~input_o\ & ( (!\flag[2]~input_o\ & (!\entrada2[0]~input_o\ & (\flag[0]~input_o\))) # (\flag[2]~input_o\ & (((!\flag[0]~input_o\) # (\G9|Add0~1_sumout\)))) ) ) ) # ( !\entrada1[2]~input_o\ & ( 
-- \entrada1[0]~input_o\ & ( (\flag[0]~input_o\ & ((!\flag[2]~input_o\ & (!\entrada2[0]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~1_sumout\))))) ) ) ) # ( \entrada1[2]~input_o\ & ( !\entrada1[0]~input_o\ & ( (!\flag[0]~input_o\) # ((!\flag[2]~input_o\ & 
-- (\entrada2[0]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~1_sumout\)))) ) ) ) # ( !\entrada1[2]~input_o\ & ( !\entrada1[0]~input_o\ & ( (!\flag[2]~input_o\ & (((!\flag[0]~input_o\)) # (\entrada2[0]~input_o\))) # (\flag[2]~input_o\ & (((\flag[0]~input_o\ 
-- & \G9|Add0~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000111111101001111011100001000000010110011100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[0]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \G9|ALT_INV_Add0~1_sumout\,
	datae => \ALT_INV_entrada1[2]~input_o\,
	dataf => \ALT_INV_entrada1[0]~input_o\,
	combout => \G10|Mux0~0_combout\);

\flag[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_flag(1),
	o => \flag[1]~input_o\);

\G10|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux0~1_combout\ = (!\flag[0]~input_o\ & (!\flag[2]~input_o\ $ (((\entrada2[0]~input_o\ & \entrada1[0]~input_o\))))) # (\flag[0]~input_o\ & (!\entrada1[0]~input_o\ & ((!\entrada2[0]~input_o\) # (\flag[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100000011100111010000001110011101000000111001110100000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[0]~input_o\,
	datab => \ALT_INV_entrada1[0]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \ALT_INV_flag[2]~input_o\,
	combout => \G10|Mux0~1_combout\);

\G10|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux0~2_combout\ = ( \G10|Mux0~1_combout\ & ( (!\flag[3]~input_o\ & (((\G10|Mux0~0_combout\ & \flag[1]~input_o\)))) # (\flag[3]~input_o\ & (\G9|Add0~1_sumout\)) ) ) # ( !\G10|Mux0~1_combout\ & ( (!\flag[3]~input_o\ & (((!\flag[1]~input_o\) # 
-- (\G10|Mux0~0_combout\)))) # (\flag[3]~input_o\ & (\G9|Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100011011000100010001101110111011000110110001000100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \G9|ALT_INV_Add0~1_sumout\,
	datac => \G10|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_flag[1]~input_o\,
	datae => \G10|ALT_INV_Mux0~1_combout\,
	combout => \G10|Mux0~2_combout\);

\G10|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux16~0_combout\ = (!\flag[3]~input_o\) # ((!\flag[0]~input_o\ & (!\flag[1]~input_o\ & !\flag[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110000000111111111000000011111111100000001111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \ALT_INV_flag[2]~input_o\,
	datad => \ALT_INV_flag[3]~input_o\,
	combout => \G10|Mux16~0_combout\);

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

\G9|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~5_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[1]~input_o\) ) + ( \entrada1[1]~input_o\ ) + ( \G9|Add0~2\ ))
-- \G9|Add0~6\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[1]~input_o\) ) + ( \entrada1[1]~input_o\ ) + ( \G9|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[1]~input_o\,
	dataf => \ALT_INV_entrada1[1]~input_o\,
	cin => \G9|Add0~2\,
	sumout => \G9|Add0~5_sumout\,
	cout => \G9|Add0~6\);

\entrada1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(3),
	o => \entrada1[3]~input_o\);

\G10|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux1~0_combout\ = ( \entrada1[3]~input_o\ & ( \entrada1[1]~input_o\ & ( (!\flag[2]~input_o\ & (!\entrada2[1]~input_o\ & (\flag[0]~input_o\))) # (\flag[2]~input_o\ & (((!\flag[0]~input_o\) # (\G9|Add0~5_sumout\)))) ) ) ) # ( !\entrada1[3]~input_o\ & ( 
-- \entrada1[1]~input_o\ & ( (\flag[0]~input_o\ & ((!\flag[2]~input_o\ & (!\entrada2[1]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~5_sumout\))))) ) ) ) # ( \entrada1[3]~input_o\ & ( !\entrada1[1]~input_o\ & ( (!\flag[0]~input_o\) # ((!\flag[2]~input_o\ & 
-- (\entrada2[1]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~5_sumout\)))) ) ) ) # ( !\entrada1[3]~input_o\ & ( !\entrada1[1]~input_o\ & ( (!\flag[2]~input_o\ & (((!\flag[0]~input_o\)) # (\entrada2[1]~input_o\))) # (\flag[2]~input_o\ & (((\flag[0]~input_o\ 
-- & \G9|Add0~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000111111101001111011100001000000010110011100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[1]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \G9|ALT_INV_Add0~5_sumout\,
	datae => \ALT_INV_entrada1[3]~input_o\,
	dataf => \ALT_INV_entrada1[1]~input_o\,
	combout => \G10|Mux1~0_combout\);

\G10|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux1~1_combout\ = (!\flag[0]~input_o\ & (!\flag[2]~input_o\ $ (((\entrada2[1]~input_o\ & \entrada1[1]~input_o\))))) # (\flag[0]~input_o\ & (!\entrada1[1]~input_o\ & ((!\entrada2[1]~input_o\) # (\flag[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100110000010110110011000001011011001100000101101100110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_entrada2[1]~input_o\,
	datad => \ALT_INV_entrada1[1]~input_o\,
	combout => \G10|Mux1~1_combout\);

\G10|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux1~2_combout\ = ( \G10|Mux1~1_combout\ & ( (!\flag[3]~input_o\ & (\flag[1]~input_o\ & ((\G10|Mux1~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~5_sumout\)))) ) ) # ( !\G10|Mux1~1_combout\ & ( (!\flag[3]~input_o\ & ((!\flag[1]~input_o\) # 
-- ((\G10|Mux1~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111000001010010011110001101101011110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \G9|ALT_INV_Add0~5_sumout\,
	datad => \G10|ALT_INV_Mux1~0_combout\,
	datae => \G10|ALT_INV_Mux1~1_combout\,
	combout => \G10|Mux1~2_combout\);

\entrada2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(2),
	o => \entrada2[2]~input_o\);

\G9|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~9_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[2]~input_o\) ) + ( \entrada1[2]~input_o\ ) + ( \G9|Add0~6\ ))
-- \G9|Add0~10\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[2]~input_o\) ) + ( \entrada1[2]~input_o\ ) + ( \G9|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[2]~input_o\,
	dataf => \ALT_INV_entrada1[2]~input_o\,
	cin => \G9|Add0~6\,
	sumout => \G9|Add0~9_sumout\,
	cout => \G9|Add0~10\);

\entrada1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(4),
	o => \entrada1[4]~input_o\);

\G10|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux2~0_combout\ = ( \entrada1[4]~input_o\ & ( \entrada1[2]~input_o\ & ( (!\flag[2]~input_o\ & (!\entrada2[2]~input_o\ & (\flag[0]~input_o\))) # (\flag[2]~input_o\ & (((!\flag[0]~input_o\) # (\G9|Add0~9_sumout\)))) ) ) ) # ( !\entrada1[4]~input_o\ & ( 
-- \entrada1[2]~input_o\ & ( (\flag[0]~input_o\ & ((!\flag[2]~input_o\ & (!\entrada2[2]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~9_sumout\))))) ) ) ) # ( \entrada1[4]~input_o\ & ( !\entrada1[2]~input_o\ & ( (!\flag[0]~input_o\) # ((!\flag[2]~input_o\ & 
-- (\entrada2[2]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~9_sumout\)))) ) ) ) # ( !\entrada1[4]~input_o\ & ( !\entrada1[2]~input_o\ & ( (!\flag[2]~input_o\ & (((!\flag[0]~input_o\)) # (\entrada2[2]~input_o\))) # (\flag[2]~input_o\ & (((\flag[0]~input_o\ 
-- & \G9|Add0~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000111111101001111011100001000000010110011100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[2]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \G9|ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_entrada1[4]~input_o\,
	dataf => \ALT_INV_entrada1[2]~input_o\,
	combout => \G10|Mux2~0_combout\);

\G10|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux2~1_combout\ = (!\flag[0]~input_o\ & (!\flag[2]~input_o\ $ (((\entrada1[2]~input_o\ & \entrada2[2]~input_o\))))) # (\flag[0]~input_o\ & (!\entrada1[2]~input_o\ & ((!\entrada2[2]~input_o\) # (\flag[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010010010110110001001001011011000100100101101100010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_entrada1[2]~input_o\,
	datad => \ALT_INV_entrada2[2]~input_o\,
	combout => \G10|Mux2~1_combout\);

\G10|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux2~2_combout\ = ( \G10|Mux2~1_combout\ & ( (!\flag[3]~input_o\ & (\flag[1]~input_o\ & ((\G10|Mux2~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~9_sumout\)))) ) ) # ( !\G10|Mux2~1_combout\ & ( (!\flag[3]~input_o\ & ((!\flag[1]~input_o\) # 
-- ((\G10|Mux2~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111000001010010011110001101101011110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \G9|ALT_INV_Add0~9_sumout\,
	datad => \G10|ALT_INV_Mux2~0_combout\,
	datae => \G10|ALT_INV_Mux2~1_combout\,
	combout => \G10|Mux2~2_combout\);

\entrada2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(3),
	o => \entrada2[3]~input_o\);

\G9|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~13_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[3]~input_o\) ) + ( \entrada1[3]~input_o\ ) + ( \G9|Add0~10\ ))
-- \G9|Add0~14\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[3]~input_o\) ) + ( \entrada1[3]~input_o\ ) + ( \G9|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[3]~input_o\,
	dataf => \ALT_INV_entrada1[3]~input_o\,
	cin => \G9|Add0~10\,
	sumout => \G9|Add0~13_sumout\,
	cout => \G9|Add0~14\);

\entrada1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(5),
	o => \entrada1[5]~input_o\);

\G10|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux3~0_combout\ = ( \entrada1[5]~input_o\ & ( \entrada1[3]~input_o\ & ( (!\flag[2]~input_o\ & (!\entrada2[3]~input_o\ & (\flag[0]~input_o\))) # (\flag[2]~input_o\ & (((!\flag[0]~input_o\) # (\G9|Add0~13_sumout\)))) ) ) ) # ( !\entrada1[5]~input_o\ & 
-- ( \entrada1[3]~input_o\ & ( (\flag[0]~input_o\ & ((!\flag[2]~input_o\ & (!\entrada2[3]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~13_sumout\))))) ) ) ) # ( \entrada1[5]~input_o\ & ( !\entrada1[3]~input_o\ & ( (!\flag[0]~input_o\) # ((!\flag[2]~input_o\ 
-- & (\entrada2[3]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~13_sumout\)))) ) ) ) # ( !\entrada1[5]~input_o\ & ( !\entrada1[3]~input_o\ & ( (!\flag[2]~input_o\ & (((!\flag[0]~input_o\)) # (\entrada2[3]~input_o\))) # (\flag[2]~input_o\ & 
-- (((\flag[0]~input_o\ & \G9|Add0~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000111111101001111011100001000000010110011100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[3]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \G9|ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_entrada1[5]~input_o\,
	dataf => \ALT_INV_entrada1[3]~input_o\,
	combout => \G10|Mux3~0_combout\);

\G10|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux3~1_combout\ = (!\flag[0]~input_o\ & (!\flag[2]~input_o\ $ (((\entrada1[3]~input_o\ & \entrada2[3]~input_o\))))) # (\flag[0]~input_o\ & (!\entrada1[3]~input_o\ & ((!\entrada2[3]~input_o\) # (\flag[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010010010110110001001001011011000100100101101100010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_entrada1[3]~input_o\,
	datad => \ALT_INV_entrada2[3]~input_o\,
	combout => \G10|Mux3~1_combout\);

\G10|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux3~2_combout\ = ( \G10|Mux3~1_combout\ & ( (!\flag[3]~input_o\ & (\flag[1]~input_o\ & ((\G10|Mux3~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~13_sumout\)))) ) ) # ( !\G10|Mux3~1_combout\ & ( (!\flag[3]~input_o\ & ((!\flag[1]~input_o\) # 
-- ((\G10|Mux3~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111000001010010011110001101101011110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \G9|ALT_INV_Add0~13_sumout\,
	datad => \G10|ALT_INV_Mux3~0_combout\,
	datae => \G10|ALT_INV_Mux3~1_combout\,
	combout => \G10|Mux3~2_combout\);

\entrada2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(4),
	o => \entrada2[4]~input_o\);

\G9|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~17_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[4]~input_o\) ) + ( \entrada1[4]~input_o\ ) + ( \G9|Add0~14\ ))
-- \G9|Add0~18\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[4]~input_o\) ) + ( \entrada1[4]~input_o\ ) + ( \G9|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[4]~input_o\,
	dataf => \ALT_INV_entrada1[4]~input_o\,
	cin => \G9|Add0~14\,
	sumout => \G9|Add0~17_sumout\,
	cout => \G9|Add0~18\);

\entrada1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(6),
	o => \entrada1[6]~input_o\);

\G10|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux4~0_combout\ = ( \entrada1[6]~input_o\ & ( \entrada1[4]~input_o\ & ( (!\flag[2]~input_o\ & (!\entrada2[4]~input_o\ & (\flag[0]~input_o\))) # (\flag[2]~input_o\ & (((!\flag[0]~input_o\) # (\G9|Add0~17_sumout\)))) ) ) ) # ( !\entrada1[6]~input_o\ & 
-- ( \entrada1[4]~input_o\ & ( (\flag[0]~input_o\ & ((!\flag[2]~input_o\ & (!\entrada2[4]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~17_sumout\))))) ) ) ) # ( \entrada1[6]~input_o\ & ( !\entrada1[4]~input_o\ & ( (!\flag[0]~input_o\) # ((!\flag[2]~input_o\ 
-- & (\entrada2[4]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~17_sumout\)))) ) ) ) # ( !\entrada1[6]~input_o\ & ( !\entrada1[4]~input_o\ & ( (!\flag[2]~input_o\ & (((!\flag[0]~input_o\)) # (\entrada2[4]~input_o\))) # (\flag[2]~input_o\ & 
-- (((\flag[0]~input_o\ & \G9|Add0~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000111111101001111011100001000000010110011100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[4]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \G9|ALT_INV_Add0~17_sumout\,
	datae => \ALT_INV_entrada1[6]~input_o\,
	dataf => \ALT_INV_entrada1[4]~input_o\,
	combout => \G10|Mux4~0_combout\);

\G10|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux4~1_combout\ = (!\flag[0]~input_o\ & (!\flag[2]~input_o\ $ (((\entrada1[4]~input_o\ & \entrada2[4]~input_o\))))) # (\flag[0]~input_o\ & (!\entrada1[4]~input_o\ & ((!\entrada2[4]~input_o\) # (\flag[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010010010110110001001001011011000100100101101100010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_entrada1[4]~input_o\,
	datad => \ALT_INV_entrada2[4]~input_o\,
	combout => \G10|Mux4~1_combout\);

\G10|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux4~2_combout\ = ( \G10|Mux4~1_combout\ & ( (!\flag[3]~input_o\ & (\flag[1]~input_o\ & ((\G10|Mux4~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~17_sumout\)))) ) ) # ( !\G10|Mux4~1_combout\ & ( (!\flag[3]~input_o\ & ((!\flag[1]~input_o\) # 
-- ((\G10|Mux4~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111000001010010011110001101101011110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \G9|ALT_INV_Add0~17_sumout\,
	datad => \G10|ALT_INV_Mux4~0_combout\,
	datae => \G10|ALT_INV_Mux4~1_combout\,
	combout => \G10|Mux4~2_combout\);

\entrada2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(5),
	o => \entrada2[5]~input_o\);

\G9|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~21_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[5]~input_o\) ) + ( \entrada1[5]~input_o\ ) + ( \G9|Add0~18\ ))
-- \G9|Add0~22\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[5]~input_o\) ) + ( \entrada1[5]~input_o\ ) + ( \G9|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[5]~input_o\,
	dataf => \ALT_INV_entrada1[5]~input_o\,
	cin => \G9|Add0~18\,
	sumout => \G9|Add0~21_sumout\,
	cout => \G9|Add0~22\);

\entrada1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(7),
	o => \entrada1[7]~input_o\);

\G10|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux5~0_combout\ = ( \entrada1[7]~input_o\ & ( \entrada1[5]~input_o\ & ( (!\flag[2]~input_o\ & (!\entrada2[5]~input_o\ & (\flag[0]~input_o\))) # (\flag[2]~input_o\ & (((!\flag[0]~input_o\) # (\G9|Add0~21_sumout\)))) ) ) ) # ( !\entrada1[7]~input_o\ & 
-- ( \entrada1[5]~input_o\ & ( (\flag[0]~input_o\ & ((!\flag[2]~input_o\ & (!\entrada2[5]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~21_sumout\))))) ) ) ) # ( \entrada1[7]~input_o\ & ( !\entrada1[5]~input_o\ & ( (!\flag[0]~input_o\) # ((!\flag[2]~input_o\ 
-- & (\entrada2[5]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~21_sumout\)))) ) ) ) # ( !\entrada1[7]~input_o\ & ( !\entrada1[5]~input_o\ & ( (!\flag[2]~input_o\ & (((!\flag[0]~input_o\)) # (\entrada2[5]~input_o\))) # (\flag[2]~input_o\ & 
-- (((\flag[0]~input_o\ & \G9|Add0~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000111111101001111011100001000000010110011100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[5]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \G9|ALT_INV_Add0~21_sumout\,
	datae => \ALT_INV_entrada1[7]~input_o\,
	dataf => \ALT_INV_entrada1[5]~input_o\,
	combout => \G10|Mux5~0_combout\);

\G10|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux5~1_combout\ = (!\flag[0]~input_o\ & (!\flag[2]~input_o\ $ (((\entrada1[5]~input_o\ & \entrada2[5]~input_o\))))) # (\flag[0]~input_o\ & (!\entrada1[5]~input_o\ & ((!\entrada2[5]~input_o\) # (\flag[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010010010110110001001001011011000100100101101100010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_entrada1[5]~input_o\,
	datad => \ALT_INV_entrada2[5]~input_o\,
	combout => \G10|Mux5~1_combout\);

\G10|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux5~2_combout\ = ( \G10|Mux5~1_combout\ & ( (!\flag[3]~input_o\ & (\flag[1]~input_o\ & ((\G10|Mux5~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~21_sumout\)))) ) ) # ( !\G10|Mux5~1_combout\ & ( (!\flag[3]~input_o\ & ((!\flag[1]~input_o\) # 
-- ((\G10|Mux5~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111000001010010011110001101101011110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \G9|ALT_INV_Add0~21_sumout\,
	datad => \G10|ALT_INV_Mux5~0_combout\,
	datae => \G10|ALT_INV_Mux5~1_combout\,
	combout => \G10|Mux5~2_combout\);

\entrada2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(6),
	o => \entrada2[6]~input_o\);

\G9|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~25_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[6]~input_o\) ) + ( \entrada1[6]~input_o\ ) + ( \G9|Add0~22\ ))
-- \G9|Add0~26\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[6]~input_o\) ) + ( \entrada1[6]~input_o\ ) + ( \G9|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[6]~input_o\,
	dataf => \ALT_INV_entrada1[6]~input_o\,
	cin => \G9|Add0~22\,
	sumout => \G9|Add0~25_sumout\,
	cout => \G9|Add0~26\);

\entrada1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(8),
	o => \entrada1[8]~input_o\);

\G10|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux6~0_combout\ = ( \entrada1[8]~input_o\ & ( \entrada1[6]~input_o\ & ( (!\flag[2]~input_o\ & (!\entrada2[6]~input_o\ & (\flag[0]~input_o\))) # (\flag[2]~input_o\ & (((!\flag[0]~input_o\) # (\G9|Add0~25_sumout\)))) ) ) ) # ( !\entrada1[8]~input_o\ & 
-- ( \entrada1[6]~input_o\ & ( (\flag[0]~input_o\ & ((!\flag[2]~input_o\ & (!\entrada2[6]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~25_sumout\))))) ) ) ) # ( \entrada1[8]~input_o\ & ( !\entrada1[6]~input_o\ & ( (!\flag[0]~input_o\) # ((!\flag[2]~input_o\ 
-- & (\entrada2[6]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~25_sumout\)))) ) ) ) # ( !\entrada1[8]~input_o\ & ( !\entrada1[6]~input_o\ & ( (!\flag[2]~input_o\ & (((!\flag[0]~input_o\)) # (\entrada2[6]~input_o\))) # (\flag[2]~input_o\ & 
-- (((\flag[0]~input_o\ & \G9|Add0~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000111111101001111011100001000000010110011100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[6]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \G9|ALT_INV_Add0~25_sumout\,
	datae => \ALT_INV_entrada1[8]~input_o\,
	dataf => \ALT_INV_entrada1[6]~input_o\,
	combout => \G10|Mux6~0_combout\);

\G10|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux6~1_combout\ = (!\flag[0]~input_o\ & (!\flag[2]~input_o\ $ (((\entrada1[6]~input_o\ & \entrada2[6]~input_o\))))) # (\flag[0]~input_o\ & (!\entrada1[6]~input_o\ & ((!\entrada2[6]~input_o\) # (\flag[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010010010110110001001001011011000100100101101100010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_entrada1[6]~input_o\,
	datad => \ALT_INV_entrada2[6]~input_o\,
	combout => \G10|Mux6~1_combout\);

\G10|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux6~2_combout\ = ( \G10|Mux6~1_combout\ & ( (!\flag[3]~input_o\ & (\flag[1]~input_o\ & ((\G10|Mux6~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~25_sumout\)))) ) ) # ( !\G10|Mux6~1_combout\ & ( (!\flag[3]~input_o\ & ((!\flag[1]~input_o\) # 
-- ((\G10|Mux6~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111000001010010011110001101101011110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \G9|ALT_INV_Add0~25_sumout\,
	datad => \G10|ALT_INV_Mux6~0_combout\,
	datae => \G10|ALT_INV_Mux6~1_combout\,
	combout => \G10|Mux6~2_combout\);

\entrada2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(7),
	o => \entrada2[7]~input_o\);

\G9|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~29_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[7]~input_o\) ) + ( \entrada1[7]~input_o\ ) + ( \G9|Add0~26\ ))
-- \G9|Add0~30\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[7]~input_o\) ) + ( \entrada1[7]~input_o\ ) + ( \G9|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[7]~input_o\,
	dataf => \ALT_INV_entrada1[7]~input_o\,
	cin => \G9|Add0~26\,
	sumout => \G9|Add0~29_sumout\,
	cout => \G9|Add0~30\);

\entrada1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(9),
	o => \entrada1[9]~input_o\);

\G10|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux7~0_combout\ = ( \entrada1[9]~input_o\ & ( \entrada1[7]~input_o\ & ( (!\flag[2]~input_o\ & (!\entrada2[7]~input_o\ & (\flag[0]~input_o\))) # (\flag[2]~input_o\ & (((!\flag[0]~input_o\) # (\G9|Add0~29_sumout\)))) ) ) ) # ( !\entrada1[9]~input_o\ & 
-- ( \entrada1[7]~input_o\ & ( (\flag[0]~input_o\ & ((!\flag[2]~input_o\ & (!\entrada2[7]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~29_sumout\))))) ) ) ) # ( \entrada1[9]~input_o\ & ( !\entrada1[7]~input_o\ & ( (!\flag[0]~input_o\) # ((!\flag[2]~input_o\ 
-- & (\entrada2[7]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~29_sumout\)))) ) ) ) # ( !\entrada1[9]~input_o\ & ( !\entrada1[7]~input_o\ & ( (!\flag[2]~input_o\ & (((!\flag[0]~input_o\)) # (\entrada2[7]~input_o\))) # (\flag[2]~input_o\ & 
-- (((\flag[0]~input_o\ & \G9|Add0~29_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000111111101001111011100001000000010110011100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[7]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \G9|ALT_INV_Add0~29_sumout\,
	datae => \ALT_INV_entrada1[9]~input_o\,
	dataf => \ALT_INV_entrada1[7]~input_o\,
	combout => \G10|Mux7~0_combout\);

\G10|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux7~1_combout\ = (!\flag[0]~input_o\ & (!\flag[2]~input_o\ $ (((\entrada1[7]~input_o\ & \entrada2[7]~input_o\))))) # (\flag[0]~input_o\ & (!\entrada1[7]~input_o\ & ((!\entrada2[7]~input_o\) # (\flag[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010010010110110001001001011011000100100101101100010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_entrada1[7]~input_o\,
	datad => \ALT_INV_entrada2[7]~input_o\,
	combout => \G10|Mux7~1_combout\);

\G10|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux7~2_combout\ = ( \G10|Mux7~1_combout\ & ( (!\flag[3]~input_o\ & (\flag[1]~input_o\ & ((\G10|Mux7~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~29_sumout\)))) ) ) # ( !\G10|Mux7~1_combout\ & ( (!\flag[3]~input_o\ & ((!\flag[1]~input_o\) # 
-- ((\G10|Mux7~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111000001010010011110001101101011110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \G9|ALT_INV_Add0~29_sumout\,
	datad => \G10|ALT_INV_Mux7~0_combout\,
	datae => \G10|ALT_INV_Mux7~1_combout\,
	combout => \G10|Mux7~2_combout\);

\entrada2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(8),
	o => \entrada2[8]~input_o\);

\G9|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~33_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[8]~input_o\) ) + ( \entrada1[8]~input_o\ ) + ( \G9|Add0~30\ ))
-- \G9|Add0~34\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[8]~input_o\) ) + ( \entrada1[8]~input_o\ ) + ( \G9|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[8]~input_o\,
	dataf => \ALT_INV_entrada1[8]~input_o\,
	cin => \G9|Add0~30\,
	sumout => \G9|Add0~33_sumout\,
	cout => \G9|Add0~34\);

\entrada1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(10),
	o => \entrada1[10]~input_o\);

\G10|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux8~0_combout\ = ( \entrada1[10]~input_o\ & ( \entrada1[8]~input_o\ & ( (!\flag[2]~input_o\ & (!\entrada2[8]~input_o\ & (\flag[0]~input_o\))) # (\flag[2]~input_o\ & (((!\flag[0]~input_o\) # (\G9|Add0~33_sumout\)))) ) ) ) # ( !\entrada1[10]~input_o\ 
-- & ( \entrada1[8]~input_o\ & ( (\flag[0]~input_o\ & ((!\flag[2]~input_o\ & (!\entrada2[8]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~33_sumout\))))) ) ) ) # ( \entrada1[10]~input_o\ & ( !\entrada1[8]~input_o\ & ( (!\flag[0]~input_o\) # 
-- ((!\flag[2]~input_o\ & (\entrada2[8]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~33_sumout\)))) ) ) ) # ( !\entrada1[10]~input_o\ & ( !\entrada1[8]~input_o\ & ( (!\flag[2]~input_o\ & (((!\flag[0]~input_o\)) # (\entrada2[8]~input_o\))) # 
-- (\flag[2]~input_o\ & (((\flag[0]~input_o\ & \G9|Add0~33_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000111111101001111011100001000000010110011100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[8]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \G9|ALT_INV_Add0~33_sumout\,
	datae => \ALT_INV_entrada1[10]~input_o\,
	dataf => \ALT_INV_entrada1[8]~input_o\,
	combout => \G10|Mux8~0_combout\);

\G10|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux8~1_combout\ = (!\flag[0]~input_o\ & (!\flag[2]~input_o\ $ (((\entrada1[8]~input_o\ & \entrada2[8]~input_o\))))) # (\flag[0]~input_o\ & (!\entrada1[8]~input_o\ & ((!\entrada2[8]~input_o\) # (\flag[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010010010110110001001001011011000100100101101100010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_entrada1[8]~input_o\,
	datad => \ALT_INV_entrada2[8]~input_o\,
	combout => \G10|Mux8~1_combout\);

\G10|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux8~2_combout\ = ( \G10|Mux8~1_combout\ & ( (!\flag[3]~input_o\ & (\flag[1]~input_o\ & ((\G10|Mux8~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~33_sumout\)))) ) ) # ( !\G10|Mux8~1_combout\ & ( (!\flag[3]~input_o\ & ((!\flag[1]~input_o\) # 
-- ((\G10|Mux8~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~33_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111000001010010011110001101101011110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \G9|ALT_INV_Add0~33_sumout\,
	datad => \G10|ALT_INV_Mux8~0_combout\,
	datae => \G10|ALT_INV_Mux8~1_combout\,
	combout => \G10|Mux8~2_combout\);

\entrada2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(9),
	o => \entrada2[9]~input_o\);

\G9|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~37_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[9]~input_o\) ) + ( \entrada1[9]~input_o\ ) + ( \G9|Add0~34\ ))
-- \G9|Add0~38\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[9]~input_o\) ) + ( \entrada1[9]~input_o\ ) + ( \G9|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[9]~input_o\,
	dataf => \ALT_INV_entrada1[9]~input_o\,
	cin => \G9|Add0~34\,
	sumout => \G9|Add0~37_sumout\,
	cout => \G9|Add0~38\);

\entrada1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(11),
	o => \entrada1[11]~input_o\);

\G10|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux9~0_combout\ = ( \entrada1[11]~input_o\ & ( \entrada1[9]~input_o\ & ( (!\flag[2]~input_o\ & (!\entrada2[9]~input_o\ & (\flag[0]~input_o\))) # (\flag[2]~input_o\ & (((!\flag[0]~input_o\) # (\G9|Add0~37_sumout\)))) ) ) ) # ( !\entrada1[11]~input_o\ 
-- & ( \entrada1[9]~input_o\ & ( (\flag[0]~input_o\ & ((!\flag[2]~input_o\ & (!\entrada2[9]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~37_sumout\))))) ) ) ) # ( \entrada1[11]~input_o\ & ( !\entrada1[9]~input_o\ & ( (!\flag[0]~input_o\) # 
-- ((!\flag[2]~input_o\ & (\entrada2[9]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~37_sumout\)))) ) ) ) # ( !\entrada1[11]~input_o\ & ( !\entrada1[9]~input_o\ & ( (!\flag[2]~input_o\ & (((!\flag[0]~input_o\)) # (\entrada2[9]~input_o\))) # 
-- (\flag[2]~input_o\ & (((\flag[0]~input_o\ & \G9|Add0~37_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000111111101001111011100001000000010110011100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[9]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \G9|ALT_INV_Add0~37_sumout\,
	datae => \ALT_INV_entrada1[11]~input_o\,
	dataf => \ALT_INV_entrada1[9]~input_o\,
	combout => \G10|Mux9~0_combout\);

\G10|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux9~1_combout\ = (!\flag[0]~input_o\ & (!\flag[2]~input_o\ $ (((\entrada1[9]~input_o\ & \entrada2[9]~input_o\))))) # (\flag[0]~input_o\ & (!\entrada1[9]~input_o\ & ((!\entrada2[9]~input_o\) # (\flag[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010010010110110001001001011011000100100101101100010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_entrada1[9]~input_o\,
	datad => \ALT_INV_entrada2[9]~input_o\,
	combout => \G10|Mux9~1_combout\);

\G10|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux9~2_combout\ = ( \G10|Mux9~1_combout\ & ( (!\flag[3]~input_o\ & (\flag[1]~input_o\ & ((\G10|Mux9~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~37_sumout\)))) ) ) # ( !\G10|Mux9~1_combout\ & ( (!\flag[3]~input_o\ & ((!\flag[1]~input_o\) # 
-- ((\G10|Mux9~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~37_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111000001010010011110001101101011110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \G9|ALT_INV_Add0~37_sumout\,
	datad => \G10|ALT_INV_Mux9~0_combout\,
	datae => \G10|ALT_INV_Mux9~1_combout\,
	combout => \G10|Mux9~2_combout\);

\entrada2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(10),
	o => \entrada2[10]~input_o\);

\G9|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~41_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[10]~input_o\) ) + ( \entrada1[10]~input_o\ ) + ( \G9|Add0~38\ ))
-- \G9|Add0~42\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[10]~input_o\) ) + ( \entrada1[10]~input_o\ ) + ( \G9|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[10]~input_o\,
	dataf => \ALT_INV_entrada1[10]~input_o\,
	cin => \G9|Add0~38\,
	sumout => \G9|Add0~41_sumout\,
	cout => \G9|Add0~42\);

\entrada1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(12),
	o => \entrada1[12]~input_o\);

\G10|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux10~0_combout\ = ( \entrada1[12]~input_o\ & ( \entrada1[10]~input_o\ & ( (!\flag[2]~input_o\ & (!\entrada2[10]~input_o\ & (\flag[0]~input_o\))) # (\flag[2]~input_o\ & (((!\flag[0]~input_o\) # (\G9|Add0~41_sumout\)))) ) ) ) # ( 
-- !\entrada1[12]~input_o\ & ( \entrada1[10]~input_o\ & ( (\flag[0]~input_o\ & ((!\flag[2]~input_o\ & (!\entrada2[10]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~41_sumout\))))) ) ) ) # ( \entrada1[12]~input_o\ & ( !\entrada1[10]~input_o\ & ( 
-- (!\flag[0]~input_o\) # ((!\flag[2]~input_o\ & (\entrada2[10]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~41_sumout\)))) ) ) ) # ( !\entrada1[12]~input_o\ & ( !\entrada1[10]~input_o\ & ( (!\flag[2]~input_o\ & (((!\flag[0]~input_o\)) # 
-- (\entrada2[10]~input_o\))) # (\flag[2]~input_o\ & (((\flag[0]~input_o\ & \G9|Add0~41_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000111111101001111011100001000000010110011100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[10]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \G9|ALT_INV_Add0~41_sumout\,
	datae => \ALT_INV_entrada1[12]~input_o\,
	dataf => \ALT_INV_entrada1[10]~input_o\,
	combout => \G10|Mux10~0_combout\);

\G10|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux10~1_combout\ = (!\flag[0]~input_o\ & (!\flag[2]~input_o\ $ (((\entrada1[10]~input_o\ & \entrada2[10]~input_o\))))) # (\flag[0]~input_o\ & (!\entrada1[10]~input_o\ & ((!\entrada2[10]~input_o\) # (\flag[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010010010110110001001001011011000100100101101100010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_entrada1[10]~input_o\,
	datad => \ALT_INV_entrada2[10]~input_o\,
	combout => \G10|Mux10~1_combout\);

\G10|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux10~2_combout\ = ( \G10|Mux10~1_combout\ & ( (!\flag[3]~input_o\ & (\flag[1]~input_o\ & ((\G10|Mux10~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~41_sumout\)))) ) ) # ( !\G10|Mux10~1_combout\ & ( (!\flag[3]~input_o\ & ((!\flag[1]~input_o\) # 
-- ((\G10|Mux10~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~41_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111000001010010011110001101101011110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \G9|ALT_INV_Add0~41_sumout\,
	datad => \G10|ALT_INV_Mux10~0_combout\,
	datae => \G10|ALT_INV_Mux10~1_combout\,
	combout => \G10|Mux10~2_combout\);

\entrada2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(11),
	o => \entrada2[11]~input_o\);

\G9|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~45_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[11]~input_o\) ) + ( \entrada1[11]~input_o\ ) + ( \G9|Add0~42\ ))
-- \G9|Add0~46\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[11]~input_o\) ) + ( \entrada1[11]~input_o\ ) + ( \G9|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[11]~input_o\,
	dataf => \ALT_INV_entrada1[11]~input_o\,
	cin => \G9|Add0~42\,
	sumout => \G9|Add0~45_sumout\,
	cout => \G9|Add0~46\);

\entrada1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(13),
	o => \entrada1[13]~input_o\);

\G10|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux11~0_combout\ = ( \entrada1[13]~input_o\ & ( \entrada1[11]~input_o\ & ( (!\flag[2]~input_o\ & (!\entrada2[11]~input_o\ & (\flag[0]~input_o\))) # (\flag[2]~input_o\ & (((!\flag[0]~input_o\) # (\G9|Add0~45_sumout\)))) ) ) ) # ( 
-- !\entrada1[13]~input_o\ & ( \entrada1[11]~input_o\ & ( (\flag[0]~input_o\ & ((!\flag[2]~input_o\ & (!\entrada2[11]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~45_sumout\))))) ) ) ) # ( \entrada1[13]~input_o\ & ( !\entrada1[11]~input_o\ & ( 
-- (!\flag[0]~input_o\) # ((!\flag[2]~input_o\ & (\entrada2[11]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~45_sumout\)))) ) ) ) # ( !\entrada1[13]~input_o\ & ( !\entrada1[11]~input_o\ & ( (!\flag[2]~input_o\ & (((!\flag[0]~input_o\)) # 
-- (\entrada2[11]~input_o\))) # (\flag[2]~input_o\ & (((\flag[0]~input_o\ & \G9|Add0~45_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000111111101001111011100001000000010110011100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[11]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \G9|ALT_INV_Add0~45_sumout\,
	datae => \ALT_INV_entrada1[13]~input_o\,
	dataf => \ALT_INV_entrada1[11]~input_o\,
	combout => \G10|Mux11~0_combout\);

\G10|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux11~1_combout\ = (!\flag[0]~input_o\ & (!\flag[2]~input_o\ $ (((\entrada1[11]~input_o\ & \entrada2[11]~input_o\))))) # (\flag[0]~input_o\ & (!\entrada1[11]~input_o\ & ((!\entrada2[11]~input_o\) # (\flag[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010010010110110001001001011011000100100101101100010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_entrada1[11]~input_o\,
	datad => \ALT_INV_entrada2[11]~input_o\,
	combout => \G10|Mux11~1_combout\);

\G10|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux11~2_combout\ = ( \G10|Mux11~1_combout\ & ( (!\flag[3]~input_o\ & (\flag[1]~input_o\ & ((\G10|Mux11~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~45_sumout\)))) ) ) # ( !\G10|Mux11~1_combout\ & ( (!\flag[3]~input_o\ & ((!\flag[1]~input_o\) # 
-- ((\G10|Mux11~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~45_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111000001010010011110001101101011110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \G9|ALT_INV_Add0~45_sumout\,
	datad => \G10|ALT_INV_Mux11~0_combout\,
	datae => \G10|ALT_INV_Mux11~1_combout\,
	combout => \G10|Mux11~2_combout\);

\entrada2[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(12),
	o => \entrada2[12]~input_o\);

\G9|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~49_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[12]~input_o\) ) + ( \entrada1[12]~input_o\ ) + ( \G9|Add0~46\ ))
-- \G9|Add0~50\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[12]~input_o\) ) + ( \entrada1[12]~input_o\ ) + ( \G9|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[12]~input_o\,
	dataf => \ALT_INV_entrada1[12]~input_o\,
	cin => \G9|Add0~46\,
	sumout => \G9|Add0~49_sumout\,
	cout => \G9|Add0~50\);

\entrada1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(14),
	o => \entrada1[14]~input_o\);

\G10|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux12~0_combout\ = ( \entrada1[14]~input_o\ & ( \entrada1[12]~input_o\ & ( (!\flag[2]~input_o\ & (!\entrada2[12]~input_o\ & (\flag[0]~input_o\))) # (\flag[2]~input_o\ & (((!\flag[0]~input_o\) # (\G9|Add0~49_sumout\)))) ) ) ) # ( 
-- !\entrada1[14]~input_o\ & ( \entrada1[12]~input_o\ & ( (\flag[0]~input_o\ & ((!\flag[2]~input_o\ & (!\entrada2[12]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~49_sumout\))))) ) ) ) # ( \entrada1[14]~input_o\ & ( !\entrada1[12]~input_o\ & ( 
-- (!\flag[0]~input_o\) # ((!\flag[2]~input_o\ & (\entrada2[12]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~49_sumout\)))) ) ) ) # ( !\entrada1[14]~input_o\ & ( !\entrada1[12]~input_o\ & ( (!\flag[2]~input_o\ & (((!\flag[0]~input_o\)) # 
-- (\entrada2[12]~input_o\))) # (\flag[2]~input_o\ & (((\flag[0]~input_o\ & \G9|Add0~49_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000111111101001111011100001000000010110011100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[12]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \G9|ALT_INV_Add0~49_sumout\,
	datae => \ALT_INV_entrada1[14]~input_o\,
	dataf => \ALT_INV_entrada1[12]~input_o\,
	combout => \G10|Mux12~0_combout\);

\G10|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux12~1_combout\ = (!\flag[0]~input_o\ & (!\flag[2]~input_o\ $ (((\entrada1[12]~input_o\ & \entrada2[12]~input_o\))))) # (\flag[0]~input_o\ & (!\entrada1[12]~input_o\ & ((!\entrada2[12]~input_o\) # (\flag[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010010010110110001001001011011000100100101101100010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_entrada1[12]~input_o\,
	datad => \ALT_INV_entrada2[12]~input_o\,
	combout => \G10|Mux12~1_combout\);

\G10|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux12~2_combout\ = ( \G10|Mux12~1_combout\ & ( (!\flag[3]~input_o\ & (\flag[1]~input_o\ & ((\G10|Mux12~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~49_sumout\)))) ) ) # ( !\G10|Mux12~1_combout\ & ( (!\flag[3]~input_o\ & ((!\flag[1]~input_o\) # 
-- ((\G10|Mux12~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~49_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111000001010010011110001101101011110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \G9|ALT_INV_Add0~49_sumout\,
	datad => \G10|ALT_INV_Mux12~0_combout\,
	datae => \G10|ALT_INV_Mux12~1_combout\,
	combout => \G10|Mux12~2_combout\);

\entrada2[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(13),
	o => \entrada2[13]~input_o\);

\G9|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~53_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[13]~input_o\) ) + ( \entrada1[13]~input_o\ ) + ( \G9|Add0~50\ ))
-- \G9|Add0~54\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[13]~input_o\) ) + ( \entrada1[13]~input_o\ ) + ( \G9|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[13]~input_o\,
	dataf => \ALT_INV_entrada1[13]~input_o\,
	cin => \G9|Add0~50\,
	sumout => \G9|Add0~53_sumout\,
	cout => \G9|Add0~54\);

\entrada1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(15),
	o => \entrada1[15]~input_o\);

\G10|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux13~0_combout\ = ( \entrada1[15]~input_o\ & ( \entrada1[13]~input_o\ & ( (!\flag[2]~input_o\ & (!\entrada2[13]~input_o\ & (\flag[0]~input_o\))) # (\flag[2]~input_o\ & (((!\flag[0]~input_o\) # (\G9|Add0~53_sumout\)))) ) ) ) # ( 
-- !\entrada1[15]~input_o\ & ( \entrada1[13]~input_o\ & ( (\flag[0]~input_o\ & ((!\flag[2]~input_o\ & (!\entrada2[13]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~53_sumout\))))) ) ) ) # ( \entrada1[15]~input_o\ & ( !\entrada1[13]~input_o\ & ( 
-- (!\flag[0]~input_o\) # ((!\flag[2]~input_o\ & (\entrada2[13]~input_o\)) # (\flag[2]~input_o\ & ((\G9|Add0~53_sumout\)))) ) ) ) # ( !\entrada1[15]~input_o\ & ( !\entrada1[13]~input_o\ & ( (!\flag[2]~input_o\ & (((!\flag[0]~input_o\)) # 
-- (\entrada2[13]~input_o\))) # (\flag[2]~input_o\ & (((\flag[0]~input_o\ & \G9|Add0~53_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000111111101001111011100001000000010110011100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada2[13]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_flag[0]~input_o\,
	datad => \G9|ALT_INV_Add0~53_sumout\,
	datae => \ALT_INV_entrada1[15]~input_o\,
	dataf => \ALT_INV_entrada1[13]~input_o\,
	combout => \G10|Mux13~0_combout\);

\G10|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux13~1_combout\ = (!\flag[0]~input_o\ & (!\flag[2]~input_o\ $ (((\entrada1[13]~input_o\ & \entrada2[13]~input_o\))))) # (\flag[0]~input_o\ & (!\entrada1[13]~input_o\ & ((!\entrada2[13]~input_o\) # (\flag[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010010010110110001001001011011000100100101101100010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[2]~input_o\,
	datac => \ALT_INV_entrada1[13]~input_o\,
	datad => \ALT_INV_entrada2[13]~input_o\,
	combout => \G10|Mux13~1_combout\);

\G10|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux13~2_combout\ = ( \G10|Mux13~1_combout\ & ( (!\flag[3]~input_o\ & (\flag[1]~input_o\ & ((\G10|Mux13~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~53_sumout\)))) ) ) # ( !\G10|Mux13~1_combout\ & ( (!\flag[3]~input_o\ & ((!\flag[1]~input_o\) # 
-- ((\G10|Mux13~0_combout\)))) # (\flag[3]~input_o\ & (((\G9|Add0~53_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111000001010010011110001101101011110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \G9|ALT_INV_Add0~53_sumout\,
	datad => \G10|ALT_INV_Mux13~0_combout\,
	datae => \G10|ALT_INV_Mux13~1_combout\,
	combout => \G10|Mux13~2_combout\);

\entrada2[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(14),
	o => \entrada2[14]~input_o\);

\G9|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~57_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[14]~input_o\) ) + ( \entrada1[14]~input_o\ ) + ( \G9|Add0~54\ ))
-- \G9|Add0~58\ = CARRY(( !\flag[3]~input_o\ $ (!\entrada2[14]~input_o\) ) + ( \entrada1[14]~input_o\ ) + ( \G9|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[14]~input_o\,
	dataf => \ALT_INV_entrada1[14]~input_o\,
	cin => \G9|Add0~54\,
	sumout => \G9|Add0~57_sumout\,
	cout => \G9|Add0~58\);

\G10|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux15~0_combout\ = (!\flag[3]~input_o\ & ((!\flag[0]~input_o\) # ((!\flag[2]~input_o\) # (!\flag[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000101010101010100010101010101010001010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \ALT_INV_flag[0]~input_o\,
	datac => \ALT_INV_flag[2]~input_o\,
	datad => \ALT_INV_flag[1]~input_o\,
	combout => \G10|Mux15~0_combout\);

\G10|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux14~1_combout\ = ( \flag[2]~input_o\ & ( (!\flag[0]~input_o\ & (!\flag[1]~input_o\ & ((!\entrada2[14]~input_o\) # (!\entrada1[14]~input_o\)))) ) ) # ( !\flag[2]~input_o\ & ( (!\entrada1[14]~input_o\ & ((!\flag[0]~input_o\ & (\flag[1]~input_o\)) # 
-- (\flag[0]~input_o\ & ((\entrada2[14]~input_o\))))) # (\entrada1[14]~input_o\ & ((!\entrada2[14]~input_o\ & (\flag[0]~input_o\)) # (\entrada2[14]~input_o\ & ((!\flag[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011101011100100010001000000000100111010111001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[0]~input_o\,
	datab => \ALT_INV_flag[1]~input_o\,
	datac => \ALT_INV_entrada2[14]~input_o\,
	datad => \ALT_INV_entrada1[14]~input_o\,
	datae => \ALT_INV_flag[2]~input_o\,
	combout => \G10|Mux14~1_combout\);

\G10|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux14~0_combout\ = (!\flag[3]~input_o\ & (((\G9|Add0~57_sumout\ & !\G10|Mux15~0_combout\)) # (\G10|Mux14~1_combout\))) # (\flag[3]~input_o\ & (\G9|Add0~57_sumout\ & (!\G10|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010111010001100001011101000110000101110100011000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \G9|ALT_INV_Add0~57_sumout\,
	datac => \G10|ALT_INV_Mux15~0_combout\,
	datad => \G10|ALT_INV_Mux14~1_combout\,
	combout => \G10|Mux14~0_combout\);

\entrada2[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(15),
	o => \entrada2[15]~input_o\);

\G9|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|Add0~61_sumout\ = SUM(( !\flag[3]~input_o\ $ (!\entrada2[15]~input_o\) ) + ( \entrada1[15]~input_o\ ) + ( \G9|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datad => \ALT_INV_entrada2[15]~input_o\,
	dataf => \ALT_INV_entrada1[15]~input_o\,
	cin => \G9|Add0~58\,
	sumout => \G9|Add0~61_sumout\);

\G10|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux15~2_combout\ = ( \flag[2]~input_o\ & ( (!\flag[1]~input_o\ & (!\flag[0]~input_o\ & ((!\entrada2[15]~input_o\) # (!\entrada1[15]~input_o\)))) ) ) # ( !\flag[2]~input_o\ & ( (!\entrada1[15]~input_o\ & ((!\flag[0]~input_o\ & (\flag[1]~input_o\)) # 
-- (\flag[0]~input_o\ & ((\entrada2[15]~input_o\))))) # (\entrada1[15]~input_o\ & ((!\entrada2[15]~input_o\ & ((\flag[0]~input_o\))) # (\entrada2[15]~input_o\ & (!\flag[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100111010100010001000000001000111001110101000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[1]~input_o\,
	datab => \ALT_INV_flag[0]~input_o\,
	datac => \ALT_INV_entrada2[15]~input_o\,
	datad => \ALT_INV_entrada1[15]~input_o\,
	datae => \ALT_INV_flag[2]~input_o\,
	combout => \G10|Mux15~2_combout\);

\G10|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Mux15~1_combout\ = (!\flag[3]~input_o\ & (((!\G10|Mux15~0_combout\ & \G9|Add0~61_sumout\)) # (\G10|Mux15~2_combout\))) # (\flag[3]~input_o\ & (!\G10|Mux15~0_combout\ & (\G9|Add0~61_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010101110000011001010111000001100101011100000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag[3]~input_o\,
	datab => \G10|ALT_INV_Mux15~0_combout\,
	datac => \G9|ALT_INV_Add0~61_sumout\,
	datad => \G10|ALT_INV_Mux15~2_combout\,
	combout => \G10|Mux15~1_combout\);

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


