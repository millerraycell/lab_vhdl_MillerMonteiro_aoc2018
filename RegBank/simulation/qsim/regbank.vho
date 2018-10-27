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

-- DATE "10/26/2018 23:04:08"

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

ENTITY 	regbank IS
    PORT (
	INSTR2 : IN std_logic_vector(3 DOWNTO 0);
	INSTR3 : IN std_logic_vector(3 DOWNTO 0);
	INSTRD : IN std_logic_vector(3 DOWNTO 0);
	WRITEFLAG : IN std_logic;
	WRITEBACKDATA : IN std_logic_vector(15 DOWNTO 0);
	OUTREG1 : BUFFER std_logic_vector(15 DOWNTO 0);
	OUTREG2 : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END regbank;

ARCHITECTURE structure OF regbank IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_INSTR2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_INSTR3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_INSTRD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_WRITEFLAG : std_logic;
SIGNAL ww_WRITEBACKDATA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_OUTREG1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_OUTREG2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \OUTREG1[0]~output_o\ : std_logic;
SIGNAL \OUTREG1[1]~output_o\ : std_logic;
SIGNAL \OUTREG1[2]~output_o\ : std_logic;
SIGNAL \OUTREG1[3]~output_o\ : std_logic;
SIGNAL \OUTREG1[4]~output_o\ : std_logic;
SIGNAL \OUTREG1[5]~output_o\ : std_logic;
SIGNAL \OUTREG1[6]~output_o\ : std_logic;
SIGNAL \OUTREG1[7]~output_o\ : std_logic;
SIGNAL \OUTREG1[8]~output_o\ : std_logic;
SIGNAL \OUTREG1[9]~output_o\ : std_logic;
SIGNAL \OUTREG1[10]~output_o\ : std_logic;
SIGNAL \OUTREG1[11]~output_o\ : std_logic;
SIGNAL \OUTREG1[12]~output_o\ : std_logic;
SIGNAL \OUTREG1[13]~output_o\ : std_logic;
SIGNAL \OUTREG1[14]~output_o\ : std_logic;
SIGNAL \OUTREG1[15]~output_o\ : std_logic;
SIGNAL \OUTREG2[0]~output_o\ : std_logic;
SIGNAL \OUTREG2[1]~output_o\ : std_logic;
SIGNAL \OUTREG2[2]~output_o\ : std_logic;
SIGNAL \OUTREG2[3]~output_o\ : std_logic;
SIGNAL \OUTREG2[4]~output_o\ : std_logic;
SIGNAL \OUTREG2[5]~output_o\ : std_logic;
SIGNAL \OUTREG2[6]~output_o\ : std_logic;
SIGNAL \OUTREG2[7]~output_o\ : std_logic;
SIGNAL \OUTREG2[8]~output_o\ : std_logic;
SIGNAL \OUTREG2[9]~output_o\ : std_logic;
SIGNAL \OUTREG2[10]~output_o\ : std_logic;
SIGNAL \OUTREG2[11]~output_o\ : std_logic;
SIGNAL \OUTREG2[12]~output_o\ : std_logic;
SIGNAL \OUTREG2[13]~output_o\ : std_logic;
SIGNAL \OUTREG2[14]~output_o\ : std_logic;
SIGNAL \OUTREG2[15]~output_o\ : std_logic;
SIGNAL \WRITEFLAG~input_o\ : std_logic;
SIGNAL \WRITEBACKDATA[0]~input_o\ : std_logic;
SIGNAL \INSTRD[0]~input_o\ : std_logic;
SIGNAL \INSTRD[1]~input_o\ : std_logic;
SIGNAL \INSTRD[2]~input_o\ : std_logic;
SIGNAL \INSTRD[3]~input_o\ : std_logic;
SIGNAL \BANKREG~437_combout\ : std_logic;
SIGNAL \BANKREG~21_q\ : std_logic;
SIGNAL \BANKREG~438_combout\ : std_logic;
SIGNAL \BANKREG~37_q\ : std_logic;
SIGNAL \BANKREG~439_combout\ : std_logic;
SIGNAL \BANKREG~53_q\ : std_logic;
SIGNAL \BANKREG~440_combout\ : std_logic;
SIGNAL \BANKREG~69_q\ : std_logic;
SIGNAL \INSTR2[0]~input_o\ : std_logic;
SIGNAL \INSTR2[1]~input_o\ : std_logic;
SIGNAL \BANKREG~277_combout\ : std_logic;
SIGNAL \BANKREG~441_combout\ : std_logic;
SIGNAL \BANKREG~85_q\ : std_logic;
SIGNAL \BANKREG~442_combout\ : std_logic;
SIGNAL \BANKREG~101_q\ : std_logic;
SIGNAL \BANKREG~443_combout\ : std_logic;
SIGNAL \BANKREG~117_q\ : std_logic;
SIGNAL \BANKREG~444_combout\ : std_logic;
SIGNAL \BANKREG~133_q\ : std_logic;
SIGNAL \BANKREG~278_combout\ : std_logic;
SIGNAL \BANKREG~445_combout\ : std_logic;
SIGNAL \BANKREG~149_q\ : std_logic;
SIGNAL \BANKREG~446_combout\ : std_logic;
SIGNAL \BANKREG~165_q\ : std_logic;
SIGNAL \BANKREG~447_combout\ : std_logic;
SIGNAL \BANKREG~181_q\ : std_logic;
SIGNAL \BANKREG~448_combout\ : std_logic;
SIGNAL \BANKREG~197_q\ : std_logic;
SIGNAL \BANKREG~279_combout\ : std_logic;
SIGNAL \BANKREG~449_combout\ : std_logic;
SIGNAL \BANKREG~213_q\ : std_logic;
SIGNAL \BANKREG~450_combout\ : std_logic;
SIGNAL \BANKREG~229_q\ : std_logic;
SIGNAL \BANKREG~451_combout\ : std_logic;
SIGNAL \BANKREG~245_q\ : std_logic;
SIGNAL \BANKREG~452_combout\ : std_logic;
SIGNAL \BANKREG~261_q\ : std_logic;
SIGNAL \BANKREG~280_combout\ : std_logic;
SIGNAL \INSTR2[2]~input_o\ : std_logic;
SIGNAL \INSTR2[3]~input_o\ : std_logic;
SIGNAL \BANKREG~281_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[1]~input_o\ : std_logic;
SIGNAL \BANKREG~22_q\ : std_logic;
SIGNAL \BANKREG~86_q\ : std_logic;
SIGNAL \BANKREG~150_q\ : std_logic;
SIGNAL \BANKREG~214_q\ : std_logic;
SIGNAL \BANKREG~282_combout\ : std_logic;
SIGNAL \BANKREG~38_q\ : std_logic;
SIGNAL \BANKREG~102_q\ : std_logic;
SIGNAL \BANKREG~166_q\ : std_logic;
SIGNAL \BANKREG~230_q\ : std_logic;
SIGNAL \BANKREG~283_combout\ : std_logic;
SIGNAL \BANKREG~54_q\ : std_logic;
SIGNAL \BANKREG~118_q\ : std_logic;
SIGNAL \BANKREG~182_q\ : std_logic;
SIGNAL \BANKREG~246_q\ : std_logic;
SIGNAL \BANKREG~284_combout\ : std_logic;
SIGNAL \BANKREG~70_q\ : std_logic;
SIGNAL \BANKREG~134_q\ : std_logic;
SIGNAL \BANKREG~198_q\ : std_logic;
SIGNAL \BANKREG~262_q\ : std_logic;
SIGNAL \BANKREG~285_combout\ : std_logic;
SIGNAL \BANKREG~286_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[2]~input_o\ : std_logic;
SIGNAL \BANKREG~23_q\ : std_logic;
SIGNAL \BANKREG~39_q\ : std_logic;
SIGNAL \BANKREG~55_q\ : std_logic;
SIGNAL \BANKREG~71_q\ : std_logic;
SIGNAL \BANKREG~287_combout\ : std_logic;
SIGNAL \BANKREG~87_q\ : std_logic;
SIGNAL \BANKREG~103_q\ : std_logic;
SIGNAL \BANKREG~119_q\ : std_logic;
SIGNAL \BANKREG~135_q\ : std_logic;
SIGNAL \BANKREG~288_combout\ : std_logic;
SIGNAL \BANKREG~151_q\ : std_logic;
SIGNAL \BANKREG~167_q\ : std_logic;
SIGNAL \BANKREG~183_q\ : std_logic;
SIGNAL \BANKREG~199_q\ : std_logic;
SIGNAL \BANKREG~289_combout\ : std_logic;
SIGNAL \BANKREG~215_q\ : std_logic;
SIGNAL \BANKREG~231_q\ : std_logic;
SIGNAL \BANKREG~247_q\ : std_logic;
SIGNAL \BANKREG~263_q\ : std_logic;
SIGNAL \BANKREG~290_combout\ : std_logic;
SIGNAL \BANKREG~291_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[3]~input_o\ : std_logic;
SIGNAL \BANKREG~24_q\ : std_logic;
SIGNAL \BANKREG~88_q\ : std_logic;
SIGNAL \BANKREG~152_q\ : std_logic;
SIGNAL \BANKREG~216_q\ : std_logic;
SIGNAL \BANKREG~292_combout\ : std_logic;
SIGNAL \BANKREG~40_q\ : std_logic;
SIGNAL \BANKREG~104_q\ : std_logic;
SIGNAL \BANKREG~168_q\ : std_logic;
SIGNAL \BANKREG~232_q\ : std_logic;
SIGNAL \BANKREG~293_combout\ : std_logic;
SIGNAL \BANKREG~56_q\ : std_logic;
SIGNAL \BANKREG~120_q\ : std_logic;
SIGNAL \BANKREG~184_q\ : std_logic;
SIGNAL \BANKREG~248_q\ : std_logic;
SIGNAL \BANKREG~294_combout\ : std_logic;
SIGNAL \BANKREG~72_q\ : std_logic;
SIGNAL \BANKREG~136_q\ : std_logic;
SIGNAL \BANKREG~200_q\ : std_logic;
SIGNAL \BANKREG~264_q\ : std_logic;
SIGNAL \BANKREG~295_combout\ : std_logic;
SIGNAL \BANKREG~296_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[4]~input_o\ : std_logic;
SIGNAL \BANKREG~25_q\ : std_logic;
SIGNAL \BANKREG~41_q\ : std_logic;
SIGNAL \BANKREG~57_q\ : std_logic;
SIGNAL \BANKREG~73_q\ : std_logic;
SIGNAL \BANKREG~297_combout\ : std_logic;
SIGNAL \BANKREG~89_q\ : std_logic;
SIGNAL \BANKREG~105_q\ : std_logic;
SIGNAL \BANKREG~121_q\ : std_logic;
SIGNAL \BANKREG~137_q\ : std_logic;
SIGNAL \BANKREG~298_combout\ : std_logic;
SIGNAL \BANKREG~153_q\ : std_logic;
SIGNAL \BANKREG~169_q\ : std_logic;
SIGNAL \BANKREG~185_q\ : std_logic;
SIGNAL \BANKREG~201_q\ : std_logic;
SIGNAL \BANKREG~299_combout\ : std_logic;
SIGNAL \BANKREG~217_q\ : std_logic;
SIGNAL \BANKREG~233_q\ : std_logic;
SIGNAL \BANKREG~249_q\ : std_logic;
SIGNAL \BANKREG~265_q\ : std_logic;
SIGNAL \BANKREG~300_combout\ : std_logic;
SIGNAL \BANKREG~301_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[5]~input_o\ : std_logic;
SIGNAL \BANKREG~26_q\ : std_logic;
SIGNAL \BANKREG~90_q\ : std_logic;
SIGNAL \BANKREG~154_q\ : std_logic;
SIGNAL \BANKREG~218_q\ : std_logic;
SIGNAL \BANKREG~302_combout\ : std_logic;
SIGNAL \BANKREG~42_q\ : std_logic;
SIGNAL \BANKREG~106_q\ : std_logic;
SIGNAL \BANKREG~170_q\ : std_logic;
SIGNAL \BANKREG~234_q\ : std_logic;
SIGNAL \BANKREG~303_combout\ : std_logic;
SIGNAL \BANKREG~58_q\ : std_logic;
SIGNAL \BANKREG~122_q\ : std_logic;
SIGNAL \BANKREG~186_q\ : std_logic;
SIGNAL \BANKREG~250_q\ : std_logic;
SIGNAL \BANKREG~304_combout\ : std_logic;
SIGNAL \BANKREG~74_q\ : std_logic;
SIGNAL \BANKREG~138_q\ : std_logic;
SIGNAL \BANKREG~202_q\ : std_logic;
SIGNAL \BANKREG~266_q\ : std_logic;
SIGNAL \BANKREG~305_combout\ : std_logic;
SIGNAL \BANKREG~306_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[6]~input_o\ : std_logic;
SIGNAL \BANKREG~27_q\ : std_logic;
SIGNAL \BANKREG~43_q\ : std_logic;
SIGNAL \BANKREG~59_q\ : std_logic;
SIGNAL \BANKREG~75_q\ : std_logic;
SIGNAL \BANKREG~307_combout\ : std_logic;
SIGNAL \BANKREG~91_q\ : std_logic;
SIGNAL \BANKREG~107_q\ : std_logic;
SIGNAL \BANKREG~123_q\ : std_logic;
SIGNAL \BANKREG~139_q\ : std_logic;
SIGNAL \BANKREG~308_combout\ : std_logic;
SIGNAL \BANKREG~155_q\ : std_logic;
SIGNAL \BANKREG~171_q\ : std_logic;
SIGNAL \BANKREG~187_q\ : std_logic;
SIGNAL \BANKREG~203_q\ : std_logic;
SIGNAL \BANKREG~309_combout\ : std_logic;
SIGNAL \BANKREG~219_q\ : std_logic;
SIGNAL \BANKREG~235_q\ : std_logic;
SIGNAL \BANKREG~251_q\ : std_logic;
SIGNAL \BANKREG~267_q\ : std_logic;
SIGNAL \BANKREG~310_combout\ : std_logic;
SIGNAL \BANKREG~311_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[7]~input_o\ : std_logic;
SIGNAL \BANKREG~28_q\ : std_logic;
SIGNAL \BANKREG~92_q\ : std_logic;
SIGNAL \BANKREG~156_q\ : std_logic;
SIGNAL \BANKREG~220_q\ : std_logic;
SIGNAL \BANKREG~312_combout\ : std_logic;
SIGNAL \BANKREG~44_q\ : std_logic;
SIGNAL \BANKREG~108_q\ : std_logic;
SIGNAL \BANKREG~172_q\ : std_logic;
SIGNAL \BANKREG~236_q\ : std_logic;
SIGNAL \BANKREG~313_combout\ : std_logic;
SIGNAL \BANKREG~60_q\ : std_logic;
SIGNAL \BANKREG~124_q\ : std_logic;
SIGNAL \BANKREG~188_q\ : std_logic;
SIGNAL \BANKREG~252_q\ : std_logic;
SIGNAL \BANKREG~314_combout\ : std_logic;
SIGNAL \BANKREG~76_q\ : std_logic;
SIGNAL \BANKREG~140_q\ : std_logic;
SIGNAL \BANKREG~204_q\ : std_logic;
SIGNAL \BANKREG~268_q\ : std_logic;
SIGNAL \BANKREG~315_combout\ : std_logic;
SIGNAL \BANKREG~316_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[8]~input_o\ : std_logic;
SIGNAL \BANKREG~29_q\ : std_logic;
SIGNAL \BANKREG~45_q\ : std_logic;
SIGNAL \BANKREG~61_q\ : std_logic;
SIGNAL \BANKREG~77_q\ : std_logic;
SIGNAL \BANKREG~317_combout\ : std_logic;
SIGNAL \BANKREG~93_q\ : std_logic;
SIGNAL \BANKREG~109_q\ : std_logic;
SIGNAL \BANKREG~125_q\ : std_logic;
SIGNAL \BANKREG~141_q\ : std_logic;
SIGNAL \BANKREG~318_combout\ : std_logic;
SIGNAL \BANKREG~157_q\ : std_logic;
SIGNAL \BANKREG~173_q\ : std_logic;
SIGNAL \BANKREG~189_q\ : std_logic;
SIGNAL \BANKREG~205_q\ : std_logic;
SIGNAL \BANKREG~319_combout\ : std_logic;
SIGNAL \BANKREG~221_q\ : std_logic;
SIGNAL \BANKREG~237_q\ : std_logic;
SIGNAL \BANKREG~253_q\ : std_logic;
SIGNAL \BANKREG~269_q\ : std_logic;
SIGNAL \BANKREG~320_combout\ : std_logic;
SIGNAL \BANKREG~321_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[9]~input_o\ : std_logic;
SIGNAL \BANKREG~30_q\ : std_logic;
SIGNAL \BANKREG~94_q\ : std_logic;
SIGNAL \BANKREG~158_q\ : std_logic;
SIGNAL \BANKREG~222_q\ : std_logic;
SIGNAL \BANKREG~322_combout\ : std_logic;
SIGNAL \BANKREG~46_q\ : std_logic;
SIGNAL \BANKREG~110_q\ : std_logic;
SIGNAL \BANKREG~174_q\ : std_logic;
SIGNAL \BANKREG~238_q\ : std_logic;
SIGNAL \BANKREG~323_combout\ : std_logic;
SIGNAL \BANKREG~62_q\ : std_logic;
SIGNAL \BANKREG~126_q\ : std_logic;
SIGNAL \BANKREG~190_q\ : std_logic;
SIGNAL \BANKREG~254_q\ : std_logic;
SIGNAL \BANKREG~324_combout\ : std_logic;
SIGNAL \BANKREG~78_q\ : std_logic;
SIGNAL \BANKREG~142_q\ : std_logic;
SIGNAL \BANKREG~206_q\ : std_logic;
SIGNAL \BANKREG~270_q\ : std_logic;
SIGNAL \BANKREG~325_combout\ : std_logic;
SIGNAL \BANKREG~326_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[10]~input_o\ : std_logic;
SIGNAL \BANKREG~31_q\ : std_logic;
SIGNAL \BANKREG~47_q\ : std_logic;
SIGNAL \BANKREG~63_q\ : std_logic;
SIGNAL \BANKREG~79_q\ : std_logic;
SIGNAL \BANKREG~327_combout\ : std_logic;
SIGNAL \BANKREG~95_q\ : std_logic;
SIGNAL \BANKREG~111_q\ : std_logic;
SIGNAL \BANKREG~127_q\ : std_logic;
SIGNAL \BANKREG~143_q\ : std_logic;
SIGNAL \BANKREG~328_combout\ : std_logic;
SIGNAL \BANKREG~159_q\ : std_logic;
SIGNAL \BANKREG~175_q\ : std_logic;
SIGNAL \BANKREG~191_q\ : std_logic;
SIGNAL \BANKREG~207_q\ : std_logic;
SIGNAL \BANKREG~329_combout\ : std_logic;
SIGNAL \BANKREG~223_q\ : std_logic;
SIGNAL \BANKREG~239_q\ : std_logic;
SIGNAL \BANKREG~255_q\ : std_logic;
SIGNAL \BANKREG~271_q\ : std_logic;
SIGNAL \BANKREG~330_combout\ : std_logic;
SIGNAL \BANKREG~331_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[11]~input_o\ : std_logic;
SIGNAL \BANKREG~32_q\ : std_logic;
SIGNAL \BANKREG~96_q\ : std_logic;
SIGNAL \BANKREG~160_q\ : std_logic;
SIGNAL \BANKREG~224_q\ : std_logic;
SIGNAL \BANKREG~332_combout\ : std_logic;
SIGNAL \BANKREG~48_q\ : std_logic;
SIGNAL \BANKREG~112_q\ : std_logic;
SIGNAL \BANKREG~176_q\ : std_logic;
SIGNAL \BANKREG~240_q\ : std_logic;
SIGNAL \BANKREG~333_combout\ : std_logic;
SIGNAL \BANKREG~64_q\ : std_logic;
SIGNAL \BANKREG~128_q\ : std_logic;
SIGNAL \BANKREG~192_q\ : std_logic;
SIGNAL \BANKREG~256_q\ : std_logic;
SIGNAL \BANKREG~334_combout\ : std_logic;
SIGNAL \BANKREG~80_q\ : std_logic;
SIGNAL \BANKREG~144_q\ : std_logic;
SIGNAL \BANKREG~208_q\ : std_logic;
SIGNAL \BANKREG~272_q\ : std_logic;
SIGNAL \BANKREG~335_combout\ : std_logic;
SIGNAL \BANKREG~336_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[12]~input_o\ : std_logic;
SIGNAL \BANKREG~33_q\ : std_logic;
SIGNAL \BANKREG~49_q\ : std_logic;
SIGNAL \BANKREG~65_q\ : std_logic;
SIGNAL \BANKREG~81_q\ : std_logic;
SIGNAL \BANKREG~337_combout\ : std_logic;
SIGNAL \BANKREG~97_q\ : std_logic;
SIGNAL \BANKREG~113_q\ : std_logic;
SIGNAL \BANKREG~129_q\ : std_logic;
SIGNAL \BANKREG~145_q\ : std_logic;
SIGNAL \BANKREG~338_combout\ : std_logic;
SIGNAL \BANKREG~161_q\ : std_logic;
SIGNAL \BANKREG~177_q\ : std_logic;
SIGNAL \BANKREG~193_q\ : std_logic;
SIGNAL \BANKREG~209_q\ : std_logic;
SIGNAL \BANKREG~339_combout\ : std_logic;
SIGNAL \BANKREG~225_q\ : std_logic;
SIGNAL \BANKREG~241_q\ : std_logic;
SIGNAL \BANKREG~257_q\ : std_logic;
SIGNAL \BANKREG~273_q\ : std_logic;
SIGNAL \BANKREG~340_combout\ : std_logic;
SIGNAL \BANKREG~341_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[13]~input_o\ : std_logic;
SIGNAL \BANKREG~34_q\ : std_logic;
SIGNAL \BANKREG~98_q\ : std_logic;
SIGNAL \BANKREG~162_q\ : std_logic;
SIGNAL \BANKREG~226_q\ : std_logic;
SIGNAL \BANKREG~342_combout\ : std_logic;
SIGNAL \BANKREG~50_q\ : std_logic;
SIGNAL \BANKREG~114_q\ : std_logic;
SIGNAL \BANKREG~178_q\ : std_logic;
SIGNAL \BANKREG~242_q\ : std_logic;
SIGNAL \BANKREG~343_combout\ : std_logic;
SIGNAL \BANKREG~66_q\ : std_logic;
SIGNAL \BANKREG~130_q\ : std_logic;
SIGNAL \BANKREG~194_q\ : std_logic;
SIGNAL \BANKREG~258_q\ : std_logic;
SIGNAL \BANKREG~344_combout\ : std_logic;
SIGNAL \BANKREG~82_q\ : std_logic;
SIGNAL \BANKREG~146_q\ : std_logic;
SIGNAL \BANKREG~210_q\ : std_logic;
SIGNAL \BANKREG~274_q\ : std_logic;
SIGNAL \BANKREG~345_combout\ : std_logic;
SIGNAL \BANKREG~346_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[14]~input_o\ : std_logic;
SIGNAL \BANKREG~35_q\ : std_logic;
SIGNAL \BANKREG~51_q\ : std_logic;
SIGNAL \BANKREG~67_q\ : std_logic;
SIGNAL \BANKREG~83_q\ : std_logic;
SIGNAL \BANKREG~347_combout\ : std_logic;
SIGNAL \BANKREG~99_q\ : std_logic;
SIGNAL \BANKREG~115_q\ : std_logic;
SIGNAL \BANKREG~131_q\ : std_logic;
SIGNAL \BANKREG~147_q\ : std_logic;
SIGNAL \BANKREG~348_combout\ : std_logic;
SIGNAL \BANKREG~163_q\ : std_logic;
SIGNAL \BANKREG~179_q\ : std_logic;
SIGNAL \BANKREG~195_q\ : std_logic;
SIGNAL \BANKREG~211_q\ : std_logic;
SIGNAL \BANKREG~349_combout\ : std_logic;
SIGNAL \BANKREG~227_q\ : std_logic;
SIGNAL \BANKREG~243_q\ : std_logic;
SIGNAL \BANKREG~259_q\ : std_logic;
SIGNAL \BANKREG~275_q\ : std_logic;
SIGNAL \BANKREG~350_combout\ : std_logic;
SIGNAL \BANKREG~351_combout\ : std_logic;
SIGNAL \WRITEBACKDATA[15]~input_o\ : std_logic;
SIGNAL \BANKREG~36_q\ : std_logic;
SIGNAL \BANKREG~100_q\ : std_logic;
SIGNAL \BANKREG~164_q\ : std_logic;
SIGNAL \BANKREG~228_q\ : std_logic;
SIGNAL \BANKREG~352_combout\ : std_logic;
SIGNAL \BANKREG~52_q\ : std_logic;
SIGNAL \BANKREG~116_q\ : std_logic;
SIGNAL \BANKREG~180_q\ : std_logic;
SIGNAL \BANKREG~244_q\ : std_logic;
SIGNAL \BANKREG~353_combout\ : std_logic;
SIGNAL \BANKREG~68_q\ : std_logic;
SIGNAL \BANKREG~132_q\ : std_logic;
SIGNAL \BANKREG~196_q\ : std_logic;
SIGNAL \BANKREG~260_q\ : std_logic;
SIGNAL \BANKREG~354_combout\ : std_logic;
SIGNAL \BANKREG~84_q\ : std_logic;
SIGNAL \BANKREG~148_q\ : std_logic;
SIGNAL \BANKREG~212_q\ : std_logic;
SIGNAL \BANKREG~276_q\ : std_logic;
SIGNAL \BANKREG~355_combout\ : std_logic;
SIGNAL \BANKREG~356_combout\ : std_logic;
SIGNAL \INSTR3[0]~input_o\ : std_logic;
SIGNAL \INSTR3[1]~input_o\ : std_logic;
SIGNAL \BANKREG~357_combout\ : std_logic;
SIGNAL \BANKREG~358_combout\ : std_logic;
SIGNAL \BANKREG~359_combout\ : std_logic;
SIGNAL \BANKREG~360_combout\ : std_logic;
SIGNAL \INSTR3[2]~input_o\ : std_logic;
SIGNAL \INSTR3[3]~input_o\ : std_logic;
SIGNAL \BANKREG~361_combout\ : std_logic;
SIGNAL \BANKREG~362_combout\ : std_logic;
SIGNAL \BANKREG~363_combout\ : std_logic;
SIGNAL \BANKREG~364_combout\ : std_logic;
SIGNAL \BANKREG~365_combout\ : std_logic;
SIGNAL \BANKREG~366_combout\ : std_logic;
SIGNAL \BANKREG~367_combout\ : std_logic;
SIGNAL \BANKREG~368_combout\ : std_logic;
SIGNAL \BANKREG~369_combout\ : std_logic;
SIGNAL \BANKREG~370_combout\ : std_logic;
SIGNAL \BANKREG~371_combout\ : std_logic;
SIGNAL \BANKREG~372_combout\ : std_logic;
SIGNAL \BANKREG~373_combout\ : std_logic;
SIGNAL \BANKREG~374_combout\ : std_logic;
SIGNAL \BANKREG~375_combout\ : std_logic;
SIGNAL \BANKREG~376_combout\ : std_logic;
SIGNAL \BANKREG~377_combout\ : std_logic;
SIGNAL \BANKREG~378_combout\ : std_logic;
SIGNAL \BANKREG~379_combout\ : std_logic;
SIGNAL \BANKREG~380_combout\ : std_logic;
SIGNAL \BANKREG~381_combout\ : std_logic;
SIGNAL \BANKREG~382_combout\ : std_logic;
SIGNAL \BANKREG~383_combout\ : std_logic;
SIGNAL \BANKREG~384_combout\ : std_logic;
SIGNAL \BANKREG~385_combout\ : std_logic;
SIGNAL \BANKREG~386_combout\ : std_logic;
SIGNAL \BANKREG~387_combout\ : std_logic;
SIGNAL \BANKREG~388_combout\ : std_logic;
SIGNAL \BANKREG~389_combout\ : std_logic;
SIGNAL \BANKREG~390_combout\ : std_logic;
SIGNAL \BANKREG~391_combout\ : std_logic;
SIGNAL \BANKREG~392_combout\ : std_logic;
SIGNAL \BANKREG~393_combout\ : std_logic;
SIGNAL \BANKREG~394_combout\ : std_logic;
SIGNAL \BANKREG~395_combout\ : std_logic;
SIGNAL \BANKREG~396_combout\ : std_logic;
SIGNAL \BANKREG~397_combout\ : std_logic;
SIGNAL \BANKREG~398_combout\ : std_logic;
SIGNAL \BANKREG~399_combout\ : std_logic;
SIGNAL \BANKREG~400_combout\ : std_logic;
SIGNAL \BANKREG~401_combout\ : std_logic;
SIGNAL \BANKREG~402_combout\ : std_logic;
SIGNAL \BANKREG~403_combout\ : std_logic;
SIGNAL \BANKREG~404_combout\ : std_logic;
SIGNAL \BANKREG~405_combout\ : std_logic;
SIGNAL \BANKREG~406_combout\ : std_logic;
SIGNAL \BANKREG~407_combout\ : std_logic;
SIGNAL \BANKREG~408_combout\ : std_logic;
SIGNAL \BANKREG~409_combout\ : std_logic;
SIGNAL \BANKREG~410_combout\ : std_logic;
SIGNAL \BANKREG~411_combout\ : std_logic;
SIGNAL \BANKREG~412_combout\ : std_logic;
SIGNAL \BANKREG~413_combout\ : std_logic;
SIGNAL \BANKREG~414_combout\ : std_logic;
SIGNAL \BANKREG~415_combout\ : std_logic;
SIGNAL \BANKREG~416_combout\ : std_logic;
SIGNAL \BANKREG~417_combout\ : std_logic;
SIGNAL \BANKREG~418_combout\ : std_logic;
SIGNAL \BANKREG~419_combout\ : std_logic;
SIGNAL \BANKREG~420_combout\ : std_logic;
SIGNAL \BANKREG~421_combout\ : std_logic;
SIGNAL \BANKREG~422_combout\ : std_logic;
SIGNAL \BANKREG~423_combout\ : std_logic;
SIGNAL \BANKREG~424_combout\ : std_logic;
SIGNAL \BANKREG~425_combout\ : std_logic;
SIGNAL \BANKREG~426_combout\ : std_logic;
SIGNAL \BANKREG~427_combout\ : std_logic;
SIGNAL \BANKREG~428_combout\ : std_logic;
SIGNAL \BANKREG~429_combout\ : std_logic;
SIGNAL \BANKREG~430_combout\ : std_logic;
SIGNAL \BANKREG~431_combout\ : std_logic;
SIGNAL \BANKREG~432_combout\ : std_logic;
SIGNAL \BANKREG~433_combout\ : std_logic;
SIGNAL \BANKREG~434_combout\ : std_logic;
SIGNAL \BANKREG~435_combout\ : std_logic;
SIGNAL \BANKREG~436_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~214_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~150_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~86_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~22_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~280_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~261_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~245_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~229_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~213_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~279_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~197_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~181_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~165_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~149_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~278_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~133_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~117_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~101_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~85_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~277_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~69_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~53_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~37_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~21_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~312_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~220_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~156_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~92_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~28_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~310_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~267_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~251_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~235_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~219_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~309_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~203_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~187_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~171_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~155_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~308_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~139_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~123_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~107_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~91_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~307_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~75_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~59_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~43_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~27_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~305_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~266_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~202_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~138_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~74_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~304_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~250_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~186_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~122_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~58_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~303_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~234_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~170_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~106_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~42_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~302_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~218_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~154_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~90_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~26_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~300_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~265_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~249_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~233_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~217_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~299_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~201_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~185_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~169_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~153_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~298_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~137_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~121_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~105_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~89_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~297_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~73_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~57_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~41_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~25_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~295_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~264_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~200_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~136_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~72_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~294_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~248_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~184_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~120_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~56_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~293_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~232_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~168_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~104_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~40_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~292_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~216_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~152_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~88_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~24_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~290_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~263_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~247_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~231_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~215_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~289_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~199_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~183_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~167_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~151_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~288_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~135_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~119_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~103_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~87_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~287_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~71_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~55_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~39_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~23_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~285_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~262_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~198_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~134_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~70_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~284_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~246_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~182_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~118_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~54_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~283_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~230_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~166_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~102_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~38_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~282_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~50_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~342_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~226_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~162_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~98_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~34_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~340_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~273_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~257_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~241_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~225_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~339_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~209_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~193_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~177_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~161_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~338_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~145_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~129_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~113_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~97_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~337_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~81_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~65_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~49_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~33_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~335_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~272_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~208_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~144_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~80_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~334_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~256_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~192_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~128_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~64_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~333_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~240_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~176_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~112_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~48_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~332_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~224_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~160_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~96_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~32_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~330_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~271_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~255_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~239_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~223_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~329_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~207_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~191_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~175_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~159_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~328_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~143_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~127_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~111_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~95_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~327_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~79_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~63_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~47_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~31_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~325_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~270_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~206_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~142_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~78_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~324_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~254_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~190_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~126_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~62_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~323_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~238_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~174_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~110_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~46_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~322_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~222_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~158_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~94_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~30_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~320_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~269_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~253_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~237_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~221_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~319_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~205_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~189_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~173_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~157_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~318_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~141_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~125_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~109_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~93_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~317_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~77_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~61_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~45_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~29_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~315_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~268_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~204_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~140_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~76_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~314_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~252_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~188_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~124_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~60_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~313_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~236_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~172_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~108_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~44_q\ : std_logic;
SIGNAL \ALT_INV_INSTRD[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTRD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTRD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTRD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTR3[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTR3[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTR3[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTR3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTR2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTR2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTR2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTR2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_BANKREG~435_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~434_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~433_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~432_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~430_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~429_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~428_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~427_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~425_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~424_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~423_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~422_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~420_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~419_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~418_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~417_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~415_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~414_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~413_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~412_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~410_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~409_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~408_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~407_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~405_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~404_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~403_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~402_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~400_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~399_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~398_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~397_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~395_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~394_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~393_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~392_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~390_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~389_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~388_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~387_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~385_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~384_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~383_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~382_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~380_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~379_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~378_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~377_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~375_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~374_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~373_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~372_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~370_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~369_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~368_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~367_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~365_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~364_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~363_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~362_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~360_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~359_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~358_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~357_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~355_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~276_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~212_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~148_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~84_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~354_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~260_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~196_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~132_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~68_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~353_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~244_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~180_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~116_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~52_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~352_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~228_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~164_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~100_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~36_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~350_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~275_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~259_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~243_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~227_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~349_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~211_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~195_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~179_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~163_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~348_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~147_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~131_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~115_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~99_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~347_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~83_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~67_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~51_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~35_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~345_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~274_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~210_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~146_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~82_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~344_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~258_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~194_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~130_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~66_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~343_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG~242_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~178_q\ : std_logic;
SIGNAL \ALT_INV_BANKREG~114_q\ : std_logic;

BEGIN

ww_INSTR2 <= INSTR2;
ww_INSTR3 <= INSTR3;
ww_INSTRD <= INSTRD;
ww_WRITEFLAG <= WRITEFLAG;
ww_WRITEBACKDATA <= WRITEBACKDATA;
OUTREG1 <= ww_OUTREG1;
OUTREG2 <= ww_OUTREG2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_BANKREG~214_q\ <= NOT \BANKREG~214_q\;
\ALT_INV_BANKREG~150_q\ <= NOT \BANKREG~150_q\;
\ALT_INV_BANKREG~86_q\ <= NOT \BANKREG~86_q\;
\ALT_INV_BANKREG~22_q\ <= NOT \BANKREG~22_q\;
\ALT_INV_BANKREG~280_combout\ <= NOT \BANKREG~280_combout\;
\ALT_INV_BANKREG~261_q\ <= NOT \BANKREG~261_q\;
\ALT_INV_BANKREG~245_q\ <= NOT \BANKREG~245_q\;
\ALT_INV_BANKREG~229_q\ <= NOT \BANKREG~229_q\;
\ALT_INV_BANKREG~213_q\ <= NOT \BANKREG~213_q\;
\ALT_INV_BANKREG~279_combout\ <= NOT \BANKREG~279_combout\;
\ALT_INV_BANKREG~197_q\ <= NOT \BANKREG~197_q\;
\ALT_INV_BANKREG~181_q\ <= NOT \BANKREG~181_q\;
\ALT_INV_BANKREG~165_q\ <= NOT \BANKREG~165_q\;
\ALT_INV_BANKREG~149_q\ <= NOT \BANKREG~149_q\;
\ALT_INV_BANKREG~278_combout\ <= NOT \BANKREG~278_combout\;
\ALT_INV_BANKREG~133_q\ <= NOT \BANKREG~133_q\;
\ALT_INV_BANKREG~117_q\ <= NOT \BANKREG~117_q\;
\ALT_INV_BANKREG~101_q\ <= NOT \BANKREG~101_q\;
\ALT_INV_BANKREG~85_q\ <= NOT \BANKREG~85_q\;
\ALT_INV_BANKREG~277_combout\ <= NOT \BANKREG~277_combout\;
\ALT_INV_BANKREG~69_q\ <= NOT \BANKREG~69_q\;
\ALT_INV_BANKREG~53_q\ <= NOT \BANKREG~53_q\;
\ALT_INV_BANKREG~37_q\ <= NOT \BANKREG~37_q\;
\ALT_INV_BANKREG~21_q\ <= NOT \BANKREG~21_q\;
\ALT_INV_BANKREG~312_combout\ <= NOT \BANKREG~312_combout\;
\ALT_INV_BANKREG~220_q\ <= NOT \BANKREG~220_q\;
\ALT_INV_BANKREG~156_q\ <= NOT \BANKREG~156_q\;
\ALT_INV_BANKREG~92_q\ <= NOT \BANKREG~92_q\;
\ALT_INV_BANKREG~28_q\ <= NOT \BANKREG~28_q\;
\ALT_INV_BANKREG~310_combout\ <= NOT \BANKREG~310_combout\;
\ALT_INV_BANKREG~267_q\ <= NOT \BANKREG~267_q\;
\ALT_INV_BANKREG~251_q\ <= NOT \BANKREG~251_q\;
\ALT_INV_BANKREG~235_q\ <= NOT \BANKREG~235_q\;
\ALT_INV_BANKREG~219_q\ <= NOT \BANKREG~219_q\;
\ALT_INV_BANKREG~309_combout\ <= NOT \BANKREG~309_combout\;
\ALT_INV_BANKREG~203_q\ <= NOT \BANKREG~203_q\;
\ALT_INV_BANKREG~187_q\ <= NOT \BANKREG~187_q\;
\ALT_INV_BANKREG~171_q\ <= NOT \BANKREG~171_q\;
\ALT_INV_BANKREG~155_q\ <= NOT \BANKREG~155_q\;
\ALT_INV_BANKREG~308_combout\ <= NOT \BANKREG~308_combout\;
\ALT_INV_BANKREG~139_q\ <= NOT \BANKREG~139_q\;
\ALT_INV_BANKREG~123_q\ <= NOT \BANKREG~123_q\;
\ALT_INV_BANKREG~107_q\ <= NOT \BANKREG~107_q\;
\ALT_INV_BANKREG~91_q\ <= NOT \BANKREG~91_q\;
\ALT_INV_BANKREG~307_combout\ <= NOT \BANKREG~307_combout\;
\ALT_INV_BANKREG~75_q\ <= NOT \BANKREG~75_q\;
\ALT_INV_BANKREG~59_q\ <= NOT \BANKREG~59_q\;
\ALT_INV_BANKREG~43_q\ <= NOT \BANKREG~43_q\;
\ALT_INV_BANKREG~27_q\ <= NOT \BANKREG~27_q\;
\ALT_INV_BANKREG~305_combout\ <= NOT \BANKREG~305_combout\;
\ALT_INV_BANKREG~266_q\ <= NOT \BANKREG~266_q\;
\ALT_INV_BANKREG~202_q\ <= NOT \BANKREG~202_q\;
\ALT_INV_BANKREG~138_q\ <= NOT \BANKREG~138_q\;
\ALT_INV_BANKREG~74_q\ <= NOT \BANKREG~74_q\;
\ALT_INV_BANKREG~304_combout\ <= NOT \BANKREG~304_combout\;
\ALT_INV_BANKREG~250_q\ <= NOT \BANKREG~250_q\;
\ALT_INV_BANKREG~186_q\ <= NOT \BANKREG~186_q\;
\ALT_INV_BANKREG~122_q\ <= NOT \BANKREG~122_q\;
\ALT_INV_BANKREG~58_q\ <= NOT \BANKREG~58_q\;
\ALT_INV_BANKREG~303_combout\ <= NOT \BANKREG~303_combout\;
\ALT_INV_BANKREG~234_q\ <= NOT \BANKREG~234_q\;
\ALT_INV_BANKREG~170_q\ <= NOT \BANKREG~170_q\;
\ALT_INV_BANKREG~106_q\ <= NOT \BANKREG~106_q\;
\ALT_INV_BANKREG~42_q\ <= NOT \BANKREG~42_q\;
\ALT_INV_BANKREG~302_combout\ <= NOT \BANKREG~302_combout\;
\ALT_INV_BANKREG~218_q\ <= NOT \BANKREG~218_q\;
\ALT_INV_BANKREG~154_q\ <= NOT \BANKREG~154_q\;
\ALT_INV_BANKREG~90_q\ <= NOT \BANKREG~90_q\;
\ALT_INV_BANKREG~26_q\ <= NOT \BANKREG~26_q\;
\ALT_INV_BANKREG~300_combout\ <= NOT \BANKREG~300_combout\;
\ALT_INV_BANKREG~265_q\ <= NOT \BANKREG~265_q\;
\ALT_INV_BANKREG~249_q\ <= NOT \BANKREG~249_q\;
\ALT_INV_BANKREG~233_q\ <= NOT \BANKREG~233_q\;
\ALT_INV_BANKREG~217_q\ <= NOT \BANKREG~217_q\;
\ALT_INV_BANKREG~299_combout\ <= NOT \BANKREG~299_combout\;
\ALT_INV_BANKREG~201_q\ <= NOT \BANKREG~201_q\;
\ALT_INV_BANKREG~185_q\ <= NOT \BANKREG~185_q\;
\ALT_INV_BANKREG~169_q\ <= NOT \BANKREG~169_q\;
\ALT_INV_BANKREG~153_q\ <= NOT \BANKREG~153_q\;
\ALT_INV_BANKREG~298_combout\ <= NOT \BANKREG~298_combout\;
\ALT_INV_BANKREG~137_q\ <= NOT \BANKREG~137_q\;
\ALT_INV_BANKREG~121_q\ <= NOT \BANKREG~121_q\;
\ALT_INV_BANKREG~105_q\ <= NOT \BANKREG~105_q\;
\ALT_INV_BANKREG~89_q\ <= NOT \BANKREG~89_q\;
\ALT_INV_BANKREG~297_combout\ <= NOT \BANKREG~297_combout\;
\ALT_INV_BANKREG~73_q\ <= NOT \BANKREG~73_q\;
\ALT_INV_BANKREG~57_q\ <= NOT \BANKREG~57_q\;
\ALT_INV_BANKREG~41_q\ <= NOT \BANKREG~41_q\;
\ALT_INV_BANKREG~25_q\ <= NOT \BANKREG~25_q\;
\ALT_INV_BANKREG~295_combout\ <= NOT \BANKREG~295_combout\;
\ALT_INV_BANKREG~264_q\ <= NOT \BANKREG~264_q\;
\ALT_INV_BANKREG~200_q\ <= NOT \BANKREG~200_q\;
\ALT_INV_BANKREG~136_q\ <= NOT \BANKREG~136_q\;
\ALT_INV_BANKREG~72_q\ <= NOT \BANKREG~72_q\;
\ALT_INV_BANKREG~294_combout\ <= NOT \BANKREG~294_combout\;
\ALT_INV_BANKREG~248_q\ <= NOT \BANKREG~248_q\;
\ALT_INV_BANKREG~184_q\ <= NOT \BANKREG~184_q\;
\ALT_INV_BANKREG~120_q\ <= NOT \BANKREG~120_q\;
\ALT_INV_BANKREG~56_q\ <= NOT \BANKREG~56_q\;
\ALT_INV_BANKREG~293_combout\ <= NOT \BANKREG~293_combout\;
\ALT_INV_BANKREG~232_q\ <= NOT \BANKREG~232_q\;
\ALT_INV_BANKREG~168_q\ <= NOT \BANKREG~168_q\;
\ALT_INV_BANKREG~104_q\ <= NOT \BANKREG~104_q\;
\ALT_INV_BANKREG~40_q\ <= NOT \BANKREG~40_q\;
\ALT_INV_BANKREG~292_combout\ <= NOT \BANKREG~292_combout\;
\ALT_INV_BANKREG~216_q\ <= NOT \BANKREG~216_q\;
\ALT_INV_BANKREG~152_q\ <= NOT \BANKREG~152_q\;
\ALT_INV_BANKREG~88_q\ <= NOT \BANKREG~88_q\;
\ALT_INV_BANKREG~24_q\ <= NOT \BANKREG~24_q\;
\ALT_INV_BANKREG~290_combout\ <= NOT \BANKREG~290_combout\;
\ALT_INV_BANKREG~263_q\ <= NOT \BANKREG~263_q\;
\ALT_INV_BANKREG~247_q\ <= NOT \BANKREG~247_q\;
\ALT_INV_BANKREG~231_q\ <= NOT \BANKREG~231_q\;
\ALT_INV_BANKREG~215_q\ <= NOT \BANKREG~215_q\;
\ALT_INV_BANKREG~289_combout\ <= NOT \BANKREG~289_combout\;
\ALT_INV_BANKREG~199_q\ <= NOT \BANKREG~199_q\;
\ALT_INV_BANKREG~183_q\ <= NOT \BANKREG~183_q\;
\ALT_INV_BANKREG~167_q\ <= NOT \BANKREG~167_q\;
\ALT_INV_BANKREG~151_q\ <= NOT \BANKREG~151_q\;
\ALT_INV_BANKREG~288_combout\ <= NOT \BANKREG~288_combout\;
\ALT_INV_BANKREG~135_q\ <= NOT \BANKREG~135_q\;
\ALT_INV_BANKREG~119_q\ <= NOT \BANKREG~119_q\;
\ALT_INV_BANKREG~103_q\ <= NOT \BANKREG~103_q\;
\ALT_INV_BANKREG~87_q\ <= NOT \BANKREG~87_q\;
\ALT_INV_BANKREG~287_combout\ <= NOT \BANKREG~287_combout\;
\ALT_INV_BANKREG~71_q\ <= NOT \BANKREG~71_q\;
\ALT_INV_BANKREG~55_q\ <= NOT \BANKREG~55_q\;
\ALT_INV_BANKREG~39_q\ <= NOT \BANKREG~39_q\;
\ALT_INV_BANKREG~23_q\ <= NOT \BANKREG~23_q\;
\ALT_INV_BANKREG~285_combout\ <= NOT \BANKREG~285_combout\;
\ALT_INV_BANKREG~262_q\ <= NOT \BANKREG~262_q\;
\ALT_INV_BANKREG~198_q\ <= NOT \BANKREG~198_q\;
\ALT_INV_BANKREG~134_q\ <= NOT \BANKREG~134_q\;
\ALT_INV_BANKREG~70_q\ <= NOT \BANKREG~70_q\;
\ALT_INV_BANKREG~284_combout\ <= NOT \BANKREG~284_combout\;
\ALT_INV_BANKREG~246_q\ <= NOT \BANKREG~246_q\;
\ALT_INV_BANKREG~182_q\ <= NOT \BANKREG~182_q\;
\ALT_INV_BANKREG~118_q\ <= NOT \BANKREG~118_q\;
\ALT_INV_BANKREG~54_q\ <= NOT \BANKREG~54_q\;
\ALT_INV_BANKREG~283_combout\ <= NOT \BANKREG~283_combout\;
\ALT_INV_BANKREG~230_q\ <= NOT \BANKREG~230_q\;
\ALT_INV_BANKREG~166_q\ <= NOT \BANKREG~166_q\;
\ALT_INV_BANKREG~102_q\ <= NOT \BANKREG~102_q\;
\ALT_INV_BANKREG~38_q\ <= NOT \BANKREG~38_q\;
\ALT_INV_BANKREG~282_combout\ <= NOT \BANKREG~282_combout\;
\ALT_INV_BANKREG~50_q\ <= NOT \BANKREG~50_q\;
\ALT_INV_BANKREG~342_combout\ <= NOT \BANKREG~342_combout\;
\ALT_INV_BANKREG~226_q\ <= NOT \BANKREG~226_q\;
\ALT_INV_BANKREG~162_q\ <= NOT \BANKREG~162_q\;
\ALT_INV_BANKREG~98_q\ <= NOT \BANKREG~98_q\;
\ALT_INV_BANKREG~34_q\ <= NOT \BANKREG~34_q\;
\ALT_INV_BANKREG~340_combout\ <= NOT \BANKREG~340_combout\;
\ALT_INV_BANKREG~273_q\ <= NOT \BANKREG~273_q\;
\ALT_INV_BANKREG~257_q\ <= NOT \BANKREG~257_q\;
\ALT_INV_BANKREG~241_q\ <= NOT \BANKREG~241_q\;
\ALT_INV_BANKREG~225_q\ <= NOT \BANKREG~225_q\;
\ALT_INV_BANKREG~339_combout\ <= NOT \BANKREG~339_combout\;
\ALT_INV_BANKREG~209_q\ <= NOT \BANKREG~209_q\;
\ALT_INV_BANKREG~193_q\ <= NOT \BANKREG~193_q\;
\ALT_INV_BANKREG~177_q\ <= NOT \BANKREG~177_q\;
\ALT_INV_BANKREG~161_q\ <= NOT \BANKREG~161_q\;
\ALT_INV_BANKREG~338_combout\ <= NOT \BANKREG~338_combout\;
\ALT_INV_BANKREG~145_q\ <= NOT \BANKREG~145_q\;
\ALT_INV_BANKREG~129_q\ <= NOT \BANKREG~129_q\;
\ALT_INV_BANKREG~113_q\ <= NOT \BANKREG~113_q\;
\ALT_INV_BANKREG~97_q\ <= NOT \BANKREG~97_q\;
\ALT_INV_BANKREG~337_combout\ <= NOT \BANKREG~337_combout\;
\ALT_INV_BANKREG~81_q\ <= NOT \BANKREG~81_q\;
\ALT_INV_BANKREG~65_q\ <= NOT \BANKREG~65_q\;
\ALT_INV_BANKREG~49_q\ <= NOT \BANKREG~49_q\;
\ALT_INV_BANKREG~33_q\ <= NOT \BANKREG~33_q\;
\ALT_INV_BANKREG~335_combout\ <= NOT \BANKREG~335_combout\;
\ALT_INV_BANKREG~272_q\ <= NOT \BANKREG~272_q\;
\ALT_INV_BANKREG~208_q\ <= NOT \BANKREG~208_q\;
\ALT_INV_BANKREG~144_q\ <= NOT \BANKREG~144_q\;
\ALT_INV_BANKREG~80_q\ <= NOT \BANKREG~80_q\;
\ALT_INV_BANKREG~334_combout\ <= NOT \BANKREG~334_combout\;
\ALT_INV_BANKREG~256_q\ <= NOT \BANKREG~256_q\;
\ALT_INV_BANKREG~192_q\ <= NOT \BANKREG~192_q\;
\ALT_INV_BANKREG~128_q\ <= NOT \BANKREG~128_q\;
\ALT_INV_BANKREG~64_q\ <= NOT \BANKREG~64_q\;
\ALT_INV_BANKREG~333_combout\ <= NOT \BANKREG~333_combout\;
\ALT_INV_BANKREG~240_q\ <= NOT \BANKREG~240_q\;
\ALT_INV_BANKREG~176_q\ <= NOT \BANKREG~176_q\;
\ALT_INV_BANKREG~112_q\ <= NOT \BANKREG~112_q\;
\ALT_INV_BANKREG~48_q\ <= NOT \BANKREG~48_q\;
\ALT_INV_BANKREG~332_combout\ <= NOT \BANKREG~332_combout\;
\ALT_INV_BANKREG~224_q\ <= NOT \BANKREG~224_q\;
\ALT_INV_BANKREG~160_q\ <= NOT \BANKREG~160_q\;
\ALT_INV_BANKREG~96_q\ <= NOT \BANKREG~96_q\;
\ALT_INV_BANKREG~32_q\ <= NOT \BANKREG~32_q\;
\ALT_INV_BANKREG~330_combout\ <= NOT \BANKREG~330_combout\;
\ALT_INV_BANKREG~271_q\ <= NOT \BANKREG~271_q\;
\ALT_INV_BANKREG~255_q\ <= NOT \BANKREG~255_q\;
\ALT_INV_BANKREG~239_q\ <= NOT \BANKREG~239_q\;
\ALT_INV_BANKREG~223_q\ <= NOT \BANKREG~223_q\;
\ALT_INV_BANKREG~329_combout\ <= NOT \BANKREG~329_combout\;
\ALT_INV_BANKREG~207_q\ <= NOT \BANKREG~207_q\;
\ALT_INV_BANKREG~191_q\ <= NOT \BANKREG~191_q\;
\ALT_INV_BANKREG~175_q\ <= NOT \BANKREG~175_q\;
\ALT_INV_BANKREG~159_q\ <= NOT \BANKREG~159_q\;
\ALT_INV_BANKREG~328_combout\ <= NOT \BANKREG~328_combout\;
\ALT_INV_BANKREG~143_q\ <= NOT \BANKREG~143_q\;
\ALT_INV_BANKREG~127_q\ <= NOT \BANKREG~127_q\;
\ALT_INV_BANKREG~111_q\ <= NOT \BANKREG~111_q\;
\ALT_INV_BANKREG~95_q\ <= NOT \BANKREG~95_q\;
\ALT_INV_BANKREG~327_combout\ <= NOT \BANKREG~327_combout\;
\ALT_INV_BANKREG~79_q\ <= NOT \BANKREG~79_q\;
\ALT_INV_BANKREG~63_q\ <= NOT \BANKREG~63_q\;
\ALT_INV_BANKREG~47_q\ <= NOT \BANKREG~47_q\;
\ALT_INV_BANKREG~31_q\ <= NOT \BANKREG~31_q\;
\ALT_INV_BANKREG~325_combout\ <= NOT \BANKREG~325_combout\;
\ALT_INV_BANKREG~270_q\ <= NOT \BANKREG~270_q\;
\ALT_INV_BANKREG~206_q\ <= NOT \BANKREG~206_q\;
\ALT_INV_BANKREG~142_q\ <= NOT \BANKREG~142_q\;
\ALT_INV_BANKREG~78_q\ <= NOT \BANKREG~78_q\;
\ALT_INV_BANKREG~324_combout\ <= NOT \BANKREG~324_combout\;
\ALT_INV_BANKREG~254_q\ <= NOT \BANKREG~254_q\;
\ALT_INV_BANKREG~190_q\ <= NOT \BANKREG~190_q\;
\ALT_INV_BANKREG~126_q\ <= NOT \BANKREG~126_q\;
\ALT_INV_BANKREG~62_q\ <= NOT \BANKREG~62_q\;
\ALT_INV_BANKREG~323_combout\ <= NOT \BANKREG~323_combout\;
\ALT_INV_BANKREG~238_q\ <= NOT \BANKREG~238_q\;
\ALT_INV_BANKREG~174_q\ <= NOT \BANKREG~174_q\;
\ALT_INV_BANKREG~110_q\ <= NOT \BANKREG~110_q\;
\ALT_INV_BANKREG~46_q\ <= NOT \BANKREG~46_q\;
\ALT_INV_BANKREG~322_combout\ <= NOT \BANKREG~322_combout\;
\ALT_INV_BANKREG~222_q\ <= NOT \BANKREG~222_q\;
\ALT_INV_BANKREG~158_q\ <= NOT \BANKREG~158_q\;
\ALT_INV_BANKREG~94_q\ <= NOT \BANKREG~94_q\;
\ALT_INV_BANKREG~30_q\ <= NOT \BANKREG~30_q\;
\ALT_INV_BANKREG~320_combout\ <= NOT \BANKREG~320_combout\;
\ALT_INV_BANKREG~269_q\ <= NOT \BANKREG~269_q\;
\ALT_INV_BANKREG~253_q\ <= NOT \BANKREG~253_q\;
\ALT_INV_BANKREG~237_q\ <= NOT \BANKREG~237_q\;
\ALT_INV_BANKREG~221_q\ <= NOT \BANKREG~221_q\;
\ALT_INV_BANKREG~319_combout\ <= NOT \BANKREG~319_combout\;
\ALT_INV_BANKREG~205_q\ <= NOT \BANKREG~205_q\;
\ALT_INV_BANKREG~189_q\ <= NOT \BANKREG~189_q\;
\ALT_INV_BANKREG~173_q\ <= NOT \BANKREG~173_q\;
\ALT_INV_BANKREG~157_q\ <= NOT \BANKREG~157_q\;
\ALT_INV_BANKREG~318_combout\ <= NOT \BANKREG~318_combout\;
\ALT_INV_BANKREG~141_q\ <= NOT \BANKREG~141_q\;
\ALT_INV_BANKREG~125_q\ <= NOT \BANKREG~125_q\;
\ALT_INV_BANKREG~109_q\ <= NOT \BANKREG~109_q\;
\ALT_INV_BANKREG~93_q\ <= NOT \BANKREG~93_q\;
\ALT_INV_BANKREG~317_combout\ <= NOT \BANKREG~317_combout\;
\ALT_INV_BANKREG~77_q\ <= NOT \BANKREG~77_q\;
\ALT_INV_BANKREG~61_q\ <= NOT \BANKREG~61_q\;
\ALT_INV_BANKREG~45_q\ <= NOT \BANKREG~45_q\;
\ALT_INV_BANKREG~29_q\ <= NOT \BANKREG~29_q\;
\ALT_INV_BANKREG~315_combout\ <= NOT \BANKREG~315_combout\;
\ALT_INV_BANKREG~268_q\ <= NOT \BANKREG~268_q\;
\ALT_INV_BANKREG~204_q\ <= NOT \BANKREG~204_q\;
\ALT_INV_BANKREG~140_q\ <= NOT \BANKREG~140_q\;
\ALT_INV_BANKREG~76_q\ <= NOT \BANKREG~76_q\;
\ALT_INV_BANKREG~314_combout\ <= NOT \BANKREG~314_combout\;
\ALT_INV_BANKREG~252_q\ <= NOT \BANKREG~252_q\;
\ALT_INV_BANKREG~188_q\ <= NOT \BANKREG~188_q\;
\ALT_INV_BANKREG~124_q\ <= NOT \BANKREG~124_q\;
\ALT_INV_BANKREG~60_q\ <= NOT \BANKREG~60_q\;
\ALT_INV_BANKREG~313_combout\ <= NOT \BANKREG~313_combout\;
\ALT_INV_BANKREG~236_q\ <= NOT \BANKREG~236_q\;
\ALT_INV_BANKREG~172_q\ <= NOT \BANKREG~172_q\;
\ALT_INV_BANKREG~108_q\ <= NOT \BANKREG~108_q\;
\ALT_INV_BANKREG~44_q\ <= NOT \BANKREG~44_q\;
\ALT_INV_INSTRD[3]~input_o\ <= NOT \INSTRD[3]~input_o\;
\ALT_INV_INSTRD[2]~input_o\ <= NOT \INSTRD[2]~input_o\;
\ALT_INV_INSTRD[1]~input_o\ <= NOT \INSTRD[1]~input_o\;
\ALT_INV_INSTRD[0]~input_o\ <= NOT \INSTRD[0]~input_o\;
\ALT_INV_INSTR3[3]~input_o\ <= NOT \INSTR3[3]~input_o\;
\ALT_INV_INSTR3[2]~input_o\ <= NOT \INSTR3[2]~input_o\;
\ALT_INV_INSTR3[1]~input_o\ <= NOT \INSTR3[1]~input_o\;
\ALT_INV_INSTR3[0]~input_o\ <= NOT \INSTR3[0]~input_o\;
\ALT_INV_INSTR2[3]~input_o\ <= NOT \INSTR2[3]~input_o\;
\ALT_INV_INSTR2[2]~input_o\ <= NOT \INSTR2[2]~input_o\;
\ALT_INV_INSTR2[1]~input_o\ <= NOT \INSTR2[1]~input_o\;
\ALT_INV_INSTR2[0]~input_o\ <= NOT \INSTR2[0]~input_o\;
\ALT_INV_BANKREG~435_combout\ <= NOT \BANKREG~435_combout\;
\ALT_INV_BANKREG~434_combout\ <= NOT \BANKREG~434_combout\;
\ALT_INV_BANKREG~433_combout\ <= NOT \BANKREG~433_combout\;
\ALT_INV_BANKREG~432_combout\ <= NOT \BANKREG~432_combout\;
\ALT_INV_BANKREG~430_combout\ <= NOT \BANKREG~430_combout\;
\ALT_INV_BANKREG~429_combout\ <= NOT \BANKREG~429_combout\;
\ALT_INV_BANKREG~428_combout\ <= NOT \BANKREG~428_combout\;
\ALT_INV_BANKREG~427_combout\ <= NOT \BANKREG~427_combout\;
\ALT_INV_BANKREG~425_combout\ <= NOT \BANKREG~425_combout\;
\ALT_INV_BANKREG~424_combout\ <= NOT \BANKREG~424_combout\;
\ALT_INV_BANKREG~423_combout\ <= NOT \BANKREG~423_combout\;
\ALT_INV_BANKREG~422_combout\ <= NOT \BANKREG~422_combout\;
\ALT_INV_BANKREG~420_combout\ <= NOT \BANKREG~420_combout\;
\ALT_INV_BANKREG~419_combout\ <= NOT \BANKREG~419_combout\;
\ALT_INV_BANKREG~418_combout\ <= NOT \BANKREG~418_combout\;
\ALT_INV_BANKREG~417_combout\ <= NOT \BANKREG~417_combout\;
\ALT_INV_BANKREG~415_combout\ <= NOT \BANKREG~415_combout\;
\ALT_INV_BANKREG~414_combout\ <= NOT \BANKREG~414_combout\;
\ALT_INV_BANKREG~413_combout\ <= NOT \BANKREG~413_combout\;
\ALT_INV_BANKREG~412_combout\ <= NOT \BANKREG~412_combout\;
\ALT_INV_BANKREG~410_combout\ <= NOT \BANKREG~410_combout\;
\ALT_INV_BANKREG~409_combout\ <= NOT \BANKREG~409_combout\;
\ALT_INV_BANKREG~408_combout\ <= NOT \BANKREG~408_combout\;
\ALT_INV_BANKREG~407_combout\ <= NOT \BANKREG~407_combout\;
\ALT_INV_BANKREG~405_combout\ <= NOT \BANKREG~405_combout\;
\ALT_INV_BANKREG~404_combout\ <= NOT \BANKREG~404_combout\;
\ALT_INV_BANKREG~403_combout\ <= NOT \BANKREG~403_combout\;
\ALT_INV_BANKREG~402_combout\ <= NOT \BANKREG~402_combout\;
\ALT_INV_BANKREG~400_combout\ <= NOT \BANKREG~400_combout\;
\ALT_INV_BANKREG~399_combout\ <= NOT \BANKREG~399_combout\;
\ALT_INV_BANKREG~398_combout\ <= NOT \BANKREG~398_combout\;
\ALT_INV_BANKREG~397_combout\ <= NOT \BANKREG~397_combout\;
\ALT_INV_BANKREG~395_combout\ <= NOT \BANKREG~395_combout\;
\ALT_INV_BANKREG~394_combout\ <= NOT \BANKREG~394_combout\;
\ALT_INV_BANKREG~393_combout\ <= NOT \BANKREG~393_combout\;
\ALT_INV_BANKREG~392_combout\ <= NOT \BANKREG~392_combout\;
\ALT_INV_BANKREG~390_combout\ <= NOT \BANKREG~390_combout\;
\ALT_INV_BANKREG~389_combout\ <= NOT \BANKREG~389_combout\;
\ALT_INV_BANKREG~388_combout\ <= NOT \BANKREG~388_combout\;
\ALT_INV_BANKREG~387_combout\ <= NOT \BANKREG~387_combout\;
\ALT_INV_BANKREG~385_combout\ <= NOT \BANKREG~385_combout\;
\ALT_INV_BANKREG~384_combout\ <= NOT \BANKREG~384_combout\;
\ALT_INV_BANKREG~383_combout\ <= NOT \BANKREG~383_combout\;
\ALT_INV_BANKREG~382_combout\ <= NOT \BANKREG~382_combout\;
\ALT_INV_BANKREG~380_combout\ <= NOT \BANKREG~380_combout\;
\ALT_INV_BANKREG~379_combout\ <= NOT \BANKREG~379_combout\;
\ALT_INV_BANKREG~378_combout\ <= NOT \BANKREG~378_combout\;
\ALT_INV_BANKREG~377_combout\ <= NOT \BANKREG~377_combout\;
\ALT_INV_BANKREG~375_combout\ <= NOT \BANKREG~375_combout\;
\ALT_INV_BANKREG~374_combout\ <= NOT \BANKREG~374_combout\;
\ALT_INV_BANKREG~373_combout\ <= NOT \BANKREG~373_combout\;
\ALT_INV_BANKREG~372_combout\ <= NOT \BANKREG~372_combout\;
\ALT_INV_BANKREG~370_combout\ <= NOT \BANKREG~370_combout\;
\ALT_INV_BANKREG~369_combout\ <= NOT \BANKREG~369_combout\;
\ALT_INV_BANKREG~368_combout\ <= NOT \BANKREG~368_combout\;
\ALT_INV_BANKREG~367_combout\ <= NOT \BANKREG~367_combout\;
\ALT_INV_BANKREG~365_combout\ <= NOT \BANKREG~365_combout\;
\ALT_INV_BANKREG~364_combout\ <= NOT \BANKREG~364_combout\;
\ALT_INV_BANKREG~363_combout\ <= NOT \BANKREG~363_combout\;
\ALT_INV_BANKREG~362_combout\ <= NOT \BANKREG~362_combout\;
\ALT_INV_BANKREG~360_combout\ <= NOT \BANKREG~360_combout\;
\ALT_INV_BANKREG~359_combout\ <= NOT \BANKREG~359_combout\;
\ALT_INV_BANKREG~358_combout\ <= NOT \BANKREG~358_combout\;
\ALT_INV_BANKREG~357_combout\ <= NOT \BANKREG~357_combout\;
\ALT_INV_BANKREG~355_combout\ <= NOT \BANKREG~355_combout\;
\ALT_INV_BANKREG~276_q\ <= NOT \BANKREG~276_q\;
\ALT_INV_BANKREG~212_q\ <= NOT \BANKREG~212_q\;
\ALT_INV_BANKREG~148_q\ <= NOT \BANKREG~148_q\;
\ALT_INV_BANKREG~84_q\ <= NOT \BANKREG~84_q\;
\ALT_INV_BANKREG~354_combout\ <= NOT \BANKREG~354_combout\;
\ALT_INV_BANKREG~260_q\ <= NOT \BANKREG~260_q\;
\ALT_INV_BANKREG~196_q\ <= NOT \BANKREG~196_q\;
\ALT_INV_BANKREG~132_q\ <= NOT \BANKREG~132_q\;
\ALT_INV_BANKREG~68_q\ <= NOT \BANKREG~68_q\;
\ALT_INV_BANKREG~353_combout\ <= NOT \BANKREG~353_combout\;
\ALT_INV_BANKREG~244_q\ <= NOT \BANKREG~244_q\;
\ALT_INV_BANKREG~180_q\ <= NOT \BANKREG~180_q\;
\ALT_INV_BANKREG~116_q\ <= NOT \BANKREG~116_q\;
\ALT_INV_BANKREG~52_q\ <= NOT \BANKREG~52_q\;
\ALT_INV_BANKREG~352_combout\ <= NOT \BANKREG~352_combout\;
\ALT_INV_BANKREG~228_q\ <= NOT \BANKREG~228_q\;
\ALT_INV_BANKREG~164_q\ <= NOT \BANKREG~164_q\;
\ALT_INV_BANKREG~100_q\ <= NOT \BANKREG~100_q\;
\ALT_INV_BANKREG~36_q\ <= NOT \BANKREG~36_q\;
\ALT_INV_BANKREG~350_combout\ <= NOT \BANKREG~350_combout\;
\ALT_INV_BANKREG~275_q\ <= NOT \BANKREG~275_q\;
\ALT_INV_BANKREG~259_q\ <= NOT \BANKREG~259_q\;
\ALT_INV_BANKREG~243_q\ <= NOT \BANKREG~243_q\;
\ALT_INV_BANKREG~227_q\ <= NOT \BANKREG~227_q\;
\ALT_INV_BANKREG~349_combout\ <= NOT \BANKREG~349_combout\;
\ALT_INV_BANKREG~211_q\ <= NOT \BANKREG~211_q\;
\ALT_INV_BANKREG~195_q\ <= NOT \BANKREG~195_q\;
\ALT_INV_BANKREG~179_q\ <= NOT \BANKREG~179_q\;
\ALT_INV_BANKREG~163_q\ <= NOT \BANKREG~163_q\;
\ALT_INV_BANKREG~348_combout\ <= NOT \BANKREG~348_combout\;
\ALT_INV_BANKREG~147_q\ <= NOT \BANKREG~147_q\;
\ALT_INV_BANKREG~131_q\ <= NOT \BANKREG~131_q\;
\ALT_INV_BANKREG~115_q\ <= NOT \BANKREG~115_q\;
\ALT_INV_BANKREG~99_q\ <= NOT \BANKREG~99_q\;
\ALT_INV_BANKREG~347_combout\ <= NOT \BANKREG~347_combout\;
\ALT_INV_BANKREG~83_q\ <= NOT \BANKREG~83_q\;
\ALT_INV_BANKREG~67_q\ <= NOT \BANKREG~67_q\;
\ALT_INV_BANKREG~51_q\ <= NOT \BANKREG~51_q\;
\ALT_INV_BANKREG~35_q\ <= NOT \BANKREG~35_q\;
\ALT_INV_BANKREG~345_combout\ <= NOT \BANKREG~345_combout\;
\ALT_INV_BANKREG~274_q\ <= NOT \BANKREG~274_q\;
\ALT_INV_BANKREG~210_q\ <= NOT \BANKREG~210_q\;
\ALT_INV_BANKREG~146_q\ <= NOT \BANKREG~146_q\;
\ALT_INV_BANKREG~82_q\ <= NOT \BANKREG~82_q\;
\ALT_INV_BANKREG~344_combout\ <= NOT \BANKREG~344_combout\;
\ALT_INV_BANKREG~258_q\ <= NOT \BANKREG~258_q\;
\ALT_INV_BANKREG~194_q\ <= NOT \BANKREG~194_q\;
\ALT_INV_BANKREG~130_q\ <= NOT \BANKREG~130_q\;
\ALT_INV_BANKREG~66_q\ <= NOT \BANKREG~66_q\;
\ALT_INV_BANKREG~343_combout\ <= NOT \BANKREG~343_combout\;
\ALT_INV_BANKREG~242_q\ <= NOT \BANKREG~242_q\;
\ALT_INV_BANKREG~178_q\ <= NOT \BANKREG~178_q\;
\ALT_INV_BANKREG~114_q\ <= NOT \BANKREG~114_q\;

\OUTREG1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~281_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[0]~output_o\);

\OUTREG1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~286_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[1]~output_o\);

\OUTREG1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~291_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[2]~output_o\);

\OUTREG1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~296_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[3]~output_o\);

\OUTREG1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~301_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[4]~output_o\);

\OUTREG1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~306_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[5]~output_o\);

\OUTREG1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~311_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[6]~output_o\);

\OUTREG1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~316_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[7]~output_o\);

\OUTREG1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~321_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[8]~output_o\);

\OUTREG1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~326_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[9]~output_o\);

\OUTREG1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~331_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[10]~output_o\);

\OUTREG1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~336_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[11]~output_o\);

\OUTREG1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~341_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[12]~output_o\);

\OUTREG1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~346_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[13]~output_o\);

\OUTREG1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~351_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[14]~output_o\);

\OUTREG1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~356_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[15]~output_o\);

\OUTREG2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~361_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[0]~output_o\);

\OUTREG2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~366_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[1]~output_o\);

\OUTREG2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~371_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[2]~output_o\);

\OUTREG2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~376_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[3]~output_o\);

\OUTREG2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~381_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[4]~output_o\);

\OUTREG2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~386_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[5]~output_o\);

\OUTREG2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~391_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[6]~output_o\);

\OUTREG2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~396_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[7]~output_o\);

\OUTREG2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~401_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[8]~output_o\);

\OUTREG2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~406_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[9]~output_o\);

\OUTREG2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~411_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[10]~output_o\);

\OUTREG2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~416_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[11]~output_o\);

\OUTREG2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~421_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[12]~output_o\);

\OUTREG2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~426_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[13]~output_o\);

\OUTREG2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~431_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[14]~output_o\);

\OUTREG2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANKREG~436_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[15]~output_o\);

\WRITEFLAG~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEFLAG,
	o => \WRITEFLAG~input_o\);

\WRITEBACKDATA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(0),
	o => \WRITEBACKDATA[0]~input_o\);

\INSTRD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRD(0),
	o => \INSTRD[0]~input_o\);

\INSTRD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRD(1),
	o => \INSTRD[1]~input_o\);

\INSTRD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRD(2),
	o => \INSTRD[2]~input_o\);

\INSTRD[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRD(3),
	o => \INSTRD[3]~input_o\);

\BANKREG~437\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~437_combout\ = (!\INSTRD[0]~input_o\ & (!\INSTRD[1]~input_o\ & (!\INSTRD[2]~input_o\ & !\INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~437_combout\);

\BANKREG~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~21_q\);

\BANKREG~438\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~438_combout\ = (\INSTRD[0]~input_o\ & (!\INSTRD[1]~input_o\ & (!\INSTRD[2]~input_o\ & !\INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~438_combout\);

\BANKREG~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~37_q\);

\BANKREG~439\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~439_combout\ = (!\INSTRD[0]~input_o\ & (\INSTRD[1]~input_o\ & (!\INSTRD[2]~input_o\ & !\INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~439_combout\);

\BANKREG~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~53_q\);

\BANKREG~440\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~440_combout\ = (\INSTRD[0]~input_o\ & (\INSTRD[1]~input_o\ & (!\INSTRD[2]~input_o\ & !\INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~440_combout\);

\BANKREG~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~69_q\);

\INSTR2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR2(0),
	o => \INSTR2[0]~input_o\);

\INSTR2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR2(1),
	o => \INSTR2[1]~input_o\);

\BANKREG~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~277_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~69_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~53_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~37_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~21_q\,
	datab => \ALT_INV_BANKREG~37_q\,
	datac => \ALT_INV_BANKREG~53_q\,
	datad => \ALT_INV_BANKREG~69_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~277_combout\);

\BANKREG~441\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~441_combout\ = (!\INSTRD[0]~input_o\ & (!\INSTRD[1]~input_o\ & (\INSTRD[2]~input_o\ & !\INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~441_combout\);

\BANKREG~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~85_q\);

\BANKREG~442\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~442_combout\ = (\INSTRD[0]~input_o\ & (!\INSTRD[1]~input_o\ & (\INSTRD[2]~input_o\ & !\INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~442_combout\);

\BANKREG~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~101_q\);

\BANKREG~443\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~443_combout\ = (!\INSTRD[0]~input_o\ & (\INSTRD[1]~input_o\ & (\INSTRD[2]~input_o\ & !\INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~443_combout\);

\BANKREG~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~117_q\);

\BANKREG~444\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~444_combout\ = (\INSTRD[0]~input_o\ & (\INSTRD[1]~input_o\ & (\INSTRD[2]~input_o\ & !\INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~444_combout\);

\BANKREG~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~133_q\);

\BANKREG~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~278_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~133_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~117_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~101_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~85_q\,
	datab => \ALT_INV_BANKREG~101_q\,
	datac => \ALT_INV_BANKREG~117_q\,
	datad => \ALT_INV_BANKREG~133_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~278_combout\);

\BANKREG~445\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~445_combout\ = (!\INSTRD[0]~input_o\ & (!\INSTRD[1]~input_o\ & (!\INSTRD[2]~input_o\ & \INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~445_combout\);

\BANKREG~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~149_q\);

\BANKREG~446\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~446_combout\ = (\INSTRD[0]~input_o\ & (!\INSTRD[1]~input_o\ & (!\INSTRD[2]~input_o\ & \INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~446_combout\);

\BANKREG~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~165_q\);

\BANKREG~447\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~447_combout\ = (!\INSTRD[0]~input_o\ & (\INSTRD[1]~input_o\ & (!\INSTRD[2]~input_o\ & \INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~447_combout\);

\BANKREG~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~181_q\);

\BANKREG~448\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~448_combout\ = (\INSTRD[0]~input_o\ & (\INSTRD[1]~input_o\ & (!\INSTRD[2]~input_o\ & \INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~448_combout\);

\BANKREG~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~197_q\);

\BANKREG~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~279_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~197_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~181_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~165_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~149_q\,
	datab => \ALT_INV_BANKREG~165_q\,
	datac => \ALT_INV_BANKREG~181_q\,
	datad => \ALT_INV_BANKREG~197_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~279_combout\);

\BANKREG~449\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~449_combout\ = (!\INSTRD[0]~input_o\ & (!\INSTRD[1]~input_o\ & (\INSTRD[2]~input_o\ & \INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~449_combout\);

\BANKREG~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~213_q\);

\BANKREG~450\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~450_combout\ = (\INSTRD[0]~input_o\ & (!\INSTRD[1]~input_o\ & (\INSTRD[2]~input_o\ & \INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~450_combout\);

\BANKREG~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~229_q\);

\BANKREG~451\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~451_combout\ = (!\INSTRD[0]~input_o\ & (\INSTRD[1]~input_o\ & (\INSTRD[2]~input_o\ & \INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~451_combout\);

\BANKREG~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~245_q\);

\BANKREG~452\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~452_combout\ = (\INSTRD[0]~input_o\ & (\INSTRD[1]~input_o\ & (\INSTRD[2]~input_o\ & \INSTRD[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[0]~input_o\,
	datab => \ALT_INV_INSTRD[1]~input_o\,
	datac => \ALT_INV_INSTRD[2]~input_o\,
	datad => \ALT_INV_INSTRD[3]~input_o\,
	combout => \BANKREG~452_combout\);

\BANKREG~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~261_q\);

\BANKREG~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~280_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~261_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~245_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~229_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~213_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~213_q\,
	datab => \ALT_INV_BANKREG~229_q\,
	datac => \ALT_INV_BANKREG~245_q\,
	datad => \ALT_INV_BANKREG~261_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~280_combout\);

\INSTR2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR2(2),
	o => \INSTR2[2]~input_o\);

\INSTR2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR2(3),
	o => \INSTR2[3]~input_o\);

\BANKREG~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~281_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~280_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~279_combout\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( 
-- \BANKREG~278_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~277_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~277_combout\,
	datab => \ALT_INV_BANKREG~278_combout\,
	datac => \ALT_INV_BANKREG~279_combout\,
	datad => \ALT_INV_BANKREG~280_combout\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~281_combout\);

\WRITEBACKDATA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(1),
	o => \WRITEBACKDATA[1]~input_o\);

\BANKREG~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~22_q\);

\BANKREG~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~86_q\);

\BANKREG~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~150_q\);

\BANKREG~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~214_q\);

\BANKREG~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~282_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~214_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~150_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~86_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~22_q\,
	datab => \ALT_INV_BANKREG~86_q\,
	datac => \ALT_INV_BANKREG~150_q\,
	datad => \ALT_INV_BANKREG~214_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~282_combout\);

\BANKREG~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~38_q\);

\BANKREG~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~102_q\);

\BANKREG~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~166_q\);

\BANKREG~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~230_q\);

\BANKREG~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~283_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~230_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~166_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~102_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~38_q\,
	datab => \ALT_INV_BANKREG~102_q\,
	datac => \ALT_INV_BANKREG~166_q\,
	datad => \ALT_INV_BANKREG~230_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~283_combout\);

\BANKREG~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~54_q\);

\BANKREG~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~118_q\);

\BANKREG~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~182_q\);

\BANKREG~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~246_q\);

\BANKREG~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~284_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~246_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~182_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~118_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~54_q\,
	datab => \ALT_INV_BANKREG~118_q\,
	datac => \ALT_INV_BANKREG~182_q\,
	datad => \ALT_INV_BANKREG~246_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~284_combout\);

\BANKREG~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~70_q\);

\BANKREG~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~134_q\);

\BANKREG~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~198_q\);

\BANKREG~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~262_q\);

\BANKREG~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~285_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~262_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~198_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~134_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~70_q\,
	datab => \ALT_INV_BANKREG~134_q\,
	datac => \ALT_INV_BANKREG~198_q\,
	datad => \ALT_INV_BANKREG~262_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~285_combout\);

\BANKREG~286\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~286_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~285_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~284_combout\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( 
-- \BANKREG~283_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~282_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~282_combout\,
	datab => \ALT_INV_BANKREG~283_combout\,
	datac => \ALT_INV_BANKREG~284_combout\,
	datad => \ALT_INV_BANKREG~285_combout\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~286_combout\);

\WRITEBACKDATA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(2),
	o => \WRITEBACKDATA[2]~input_o\);

\BANKREG~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~23_q\);

\BANKREG~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~39_q\);

\BANKREG~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~55_q\);

\BANKREG~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~71_q\);

\BANKREG~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~287_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~71_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~55_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~39_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~23_q\,
	datab => \ALT_INV_BANKREG~39_q\,
	datac => \ALT_INV_BANKREG~55_q\,
	datad => \ALT_INV_BANKREG~71_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~287_combout\);

\BANKREG~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~87_q\);

\BANKREG~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~103_q\);

\BANKREG~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~119_q\);

\BANKREG~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~135_q\);

\BANKREG~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~288_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~135_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~119_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~103_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~87_q\,
	datab => \ALT_INV_BANKREG~103_q\,
	datac => \ALT_INV_BANKREG~119_q\,
	datad => \ALT_INV_BANKREG~135_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~288_combout\);

\BANKREG~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~151_q\);

\BANKREG~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~167_q\);

\BANKREG~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~183_q\);

\BANKREG~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~199_q\);

\BANKREG~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~289_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~199_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~183_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~167_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~151_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~151_q\,
	datab => \ALT_INV_BANKREG~167_q\,
	datac => \ALT_INV_BANKREG~183_q\,
	datad => \ALT_INV_BANKREG~199_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~289_combout\);

\BANKREG~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~215_q\);

\BANKREG~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~231_q\);

\BANKREG~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~247_q\);

\BANKREG~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~263_q\);

\BANKREG~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~290_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~263_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~247_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~231_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~215_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~215_q\,
	datab => \ALT_INV_BANKREG~231_q\,
	datac => \ALT_INV_BANKREG~247_q\,
	datad => \ALT_INV_BANKREG~263_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~290_combout\);

\BANKREG~291\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~291_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~290_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~289_combout\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( 
-- \BANKREG~288_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~287_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~287_combout\,
	datab => \ALT_INV_BANKREG~288_combout\,
	datac => \ALT_INV_BANKREG~289_combout\,
	datad => \ALT_INV_BANKREG~290_combout\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~291_combout\);

\WRITEBACKDATA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(3),
	o => \WRITEBACKDATA[3]~input_o\);

\BANKREG~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~24_q\);

\BANKREG~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~88_q\);

\BANKREG~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~152_q\);

\BANKREG~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~216_q\);

\BANKREG~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~292_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~216_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~152_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~88_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~24_q\,
	datab => \ALT_INV_BANKREG~88_q\,
	datac => \ALT_INV_BANKREG~152_q\,
	datad => \ALT_INV_BANKREG~216_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~292_combout\);

\BANKREG~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~40_q\);

\BANKREG~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~104_q\);

\BANKREG~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~168_q\);

\BANKREG~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~232_q\);

\BANKREG~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~293_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~232_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~168_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~104_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~40_q\,
	datab => \ALT_INV_BANKREG~104_q\,
	datac => \ALT_INV_BANKREG~168_q\,
	datad => \ALT_INV_BANKREG~232_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~293_combout\);

\BANKREG~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~56_q\);

\BANKREG~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~120_q\);

\BANKREG~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~184_q\);

\BANKREG~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~248_q\);

\BANKREG~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~294_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~248_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~184_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~120_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~56_q\,
	datab => \ALT_INV_BANKREG~120_q\,
	datac => \ALT_INV_BANKREG~184_q\,
	datad => \ALT_INV_BANKREG~248_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~294_combout\);

\BANKREG~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~72_q\);

\BANKREG~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~136_q\);

\BANKREG~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~200_q\);

\BANKREG~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~264_q\);

\BANKREG~295\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~295_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~264_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~200_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~136_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~72_q\,
	datab => \ALT_INV_BANKREG~136_q\,
	datac => \ALT_INV_BANKREG~200_q\,
	datad => \ALT_INV_BANKREG~264_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~295_combout\);

\BANKREG~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~296_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~295_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~294_combout\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( 
-- \BANKREG~293_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~292_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~292_combout\,
	datab => \ALT_INV_BANKREG~293_combout\,
	datac => \ALT_INV_BANKREG~294_combout\,
	datad => \ALT_INV_BANKREG~295_combout\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~296_combout\);

\WRITEBACKDATA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(4),
	o => \WRITEBACKDATA[4]~input_o\);

\BANKREG~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~25_q\);

\BANKREG~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~41_q\);

\BANKREG~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~57_q\);

\BANKREG~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~73_q\);

\BANKREG~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~297_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~73_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~57_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~41_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~25_q\,
	datab => \ALT_INV_BANKREG~41_q\,
	datac => \ALT_INV_BANKREG~57_q\,
	datad => \ALT_INV_BANKREG~73_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~297_combout\);

\BANKREG~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~89_q\);

\BANKREG~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~105_q\);

\BANKREG~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~121_q\);

\BANKREG~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~137_q\);

\BANKREG~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~298_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~137_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~121_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~105_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~89_q\,
	datab => \ALT_INV_BANKREG~105_q\,
	datac => \ALT_INV_BANKREG~121_q\,
	datad => \ALT_INV_BANKREG~137_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~298_combout\);

\BANKREG~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~153_q\);

\BANKREG~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~169_q\);

\BANKREG~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~185_q\);

\BANKREG~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~201_q\);

\BANKREG~299\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~299_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~201_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~185_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~169_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~153_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~153_q\,
	datab => \ALT_INV_BANKREG~169_q\,
	datac => \ALT_INV_BANKREG~185_q\,
	datad => \ALT_INV_BANKREG~201_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~299_combout\);

\BANKREG~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~217_q\);

\BANKREG~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~233_q\);

\BANKREG~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~249_q\);

\BANKREG~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~265_q\);

\BANKREG~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~300_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~265_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~249_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~233_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~217_q\,
	datab => \ALT_INV_BANKREG~233_q\,
	datac => \ALT_INV_BANKREG~249_q\,
	datad => \ALT_INV_BANKREG~265_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~300_combout\);

\BANKREG~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~301_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~300_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~299_combout\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( 
-- \BANKREG~298_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~297_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~297_combout\,
	datab => \ALT_INV_BANKREG~298_combout\,
	datac => \ALT_INV_BANKREG~299_combout\,
	datad => \ALT_INV_BANKREG~300_combout\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~301_combout\);

\WRITEBACKDATA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(5),
	o => \WRITEBACKDATA[5]~input_o\);

\BANKREG~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~26_q\);

\BANKREG~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~90_q\);

\BANKREG~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~154_q\);

\BANKREG~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~218_q\);

\BANKREG~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~302_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~218_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~154_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~90_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~26_q\,
	datab => \ALT_INV_BANKREG~90_q\,
	datac => \ALT_INV_BANKREG~154_q\,
	datad => \ALT_INV_BANKREG~218_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~302_combout\);

\BANKREG~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~42_q\);

\BANKREG~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~106_q\);

\BANKREG~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~170_q\);

\BANKREG~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~234_q\);

\BANKREG~303\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~303_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~234_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~170_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~106_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~42_q\,
	datab => \ALT_INV_BANKREG~106_q\,
	datac => \ALT_INV_BANKREG~170_q\,
	datad => \ALT_INV_BANKREG~234_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~303_combout\);

\BANKREG~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~58_q\);

\BANKREG~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~122_q\);

\BANKREG~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~186_q\);

\BANKREG~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~250_q\);

\BANKREG~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~304_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~250_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~186_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~122_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~58_q\,
	datab => \ALT_INV_BANKREG~122_q\,
	datac => \ALT_INV_BANKREG~186_q\,
	datad => \ALT_INV_BANKREG~250_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~304_combout\);

\BANKREG~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~74_q\);

\BANKREG~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~138_q\);

\BANKREG~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~202_q\);

\BANKREG~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~266_q\);

\BANKREG~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~305_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~266_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~202_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~138_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~74_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~74_q\,
	datab => \ALT_INV_BANKREG~138_q\,
	datac => \ALT_INV_BANKREG~202_q\,
	datad => \ALT_INV_BANKREG~266_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~305_combout\);

\BANKREG~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~306_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~305_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~304_combout\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( 
-- \BANKREG~303_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~302_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~302_combout\,
	datab => \ALT_INV_BANKREG~303_combout\,
	datac => \ALT_INV_BANKREG~304_combout\,
	datad => \ALT_INV_BANKREG~305_combout\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~306_combout\);

\WRITEBACKDATA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(6),
	o => \WRITEBACKDATA[6]~input_o\);

\BANKREG~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~27_q\);

\BANKREG~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~43_q\);

\BANKREG~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~59_q\);

\BANKREG~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~75_q\);

\BANKREG~307\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~307_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~75_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~59_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~43_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~27_q\,
	datab => \ALT_INV_BANKREG~43_q\,
	datac => \ALT_INV_BANKREG~59_q\,
	datad => \ALT_INV_BANKREG~75_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~307_combout\);

\BANKREG~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~91_q\);

\BANKREG~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~107_q\);

\BANKREG~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~123_q\);

\BANKREG~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~139_q\);

\BANKREG~308\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~308_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~139_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~123_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~107_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~91_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~91_q\,
	datab => \ALT_INV_BANKREG~107_q\,
	datac => \ALT_INV_BANKREG~123_q\,
	datad => \ALT_INV_BANKREG~139_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~308_combout\);

\BANKREG~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~155_q\);

\BANKREG~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~171_q\);

\BANKREG~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~187_q\);

\BANKREG~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~203_q\);

\BANKREG~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~309_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~203_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~187_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~171_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~155_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~155_q\,
	datab => \ALT_INV_BANKREG~171_q\,
	datac => \ALT_INV_BANKREG~187_q\,
	datad => \ALT_INV_BANKREG~203_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~309_combout\);

\BANKREG~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~219_q\);

\BANKREG~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~235_q\);

\BANKREG~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~251_q\);

\BANKREG~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~267_q\);

\BANKREG~310\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~310_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~267_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~251_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~235_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~219_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~219_q\,
	datab => \ALT_INV_BANKREG~235_q\,
	datac => \ALT_INV_BANKREG~251_q\,
	datad => \ALT_INV_BANKREG~267_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~310_combout\);

\BANKREG~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~311_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~310_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~309_combout\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( 
-- \BANKREG~308_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~307_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~307_combout\,
	datab => \ALT_INV_BANKREG~308_combout\,
	datac => \ALT_INV_BANKREG~309_combout\,
	datad => \ALT_INV_BANKREG~310_combout\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~311_combout\);

\WRITEBACKDATA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(7),
	o => \WRITEBACKDATA[7]~input_o\);

\BANKREG~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~28_q\);

\BANKREG~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~92_q\);

\BANKREG~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~156_q\);

\BANKREG~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~220_q\);

\BANKREG~312\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~312_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~220_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~156_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~92_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~28_q\,
	datab => \ALT_INV_BANKREG~92_q\,
	datac => \ALT_INV_BANKREG~156_q\,
	datad => \ALT_INV_BANKREG~220_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~312_combout\);

\BANKREG~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~44_q\);

\BANKREG~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~108_q\);

\BANKREG~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~172_q\);

\BANKREG~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~236_q\);

\BANKREG~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~313_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~236_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~172_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~108_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~44_q\,
	datab => \ALT_INV_BANKREG~108_q\,
	datac => \ALT_INV_BANKREG~172_q\,
	datad => \ALT_INV_BANKREG~236_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~313_combout\);

\BANKREG~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~60_q\);

\BANKREG~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~124_q\);

\BANKREG~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~188_q\);

\BANKREG~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~252_q\);

\BANKREG~314\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~314_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~252_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~188_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~124_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~60_q\,
	datab => \ALT_INV_BANKREG~124_q\,
	datac => \ALT_INV_BANKREG~188_q\,
	datad => \ALT_INV_BANKREG~252_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~314_combout\);

\BANKREG~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~76_q\);

\BANKREG~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~140_q\);

\BANKREG~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~204_q\);

\BANKREG~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~268_q\);

\BANKREG~315\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~315_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~268_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~204_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~140_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~76_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~76_q\,
	datab => \ALT_INV_BANKREG~140_q\,
	datac => \ALT_INV_BANKREG~204_q\,
	datad => \ALT_INV_BANKREG~268_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~315_combout\);

\BANKREG~316\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~316_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~315_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~314_combout\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( 
-- \BANKREG~313_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~312_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~312_combout\,
	datab => \ALT_INV_BANKREG~313_combout\,
	datac => \ALT_INV_BANKREG~314_combout\,
	datad => \ALT_INV_BANKREG~315_combout\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~316_combout\);

\WRITEBACKDATA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(8),
	o => \WRITEBACKDATA[8]~input_o\);

\BANKREG~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~29_q\);

\BANKREG~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~45_q\);

\BANKREG~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~61_q\);

\BANKREG~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~77_q\);

\BANKREG~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~317_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~77_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~61_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~45_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~29_q\,
	datab => \ALT_INV_BANKREG~45_q\,
	datac => \ALT_INV_BANKREG~61_q\,
	datad => \ALT_INV_BANKREG~77_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~317_combout\);

\BANKREG~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~93_q\);

\BANKREG~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~109_q\);

\BANKREG~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~125_q\);

\BANKREG~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~141_q\);

\BANKREG~318\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~318_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~141_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~125_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~109_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~93_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~93_q\,
	datab => \ALT_INV_BANKREG~109_q\,
	datac => \ALT_INV_BANKREG~125_q\,
	datad => \ALT_INV_BANKREG~141_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~318_combout\);

\BANKREG~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~157_q\);

\BANKREG~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~173_q\);

\BANKREG~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~189_q\);

\BANKREG~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~205_q\);

\BANKREG~319\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~319_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~205_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~189_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~173_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~157_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~157_q\,
	datab => \ALT_INV_BANKREG~173_q\,
	datac => \ALT_INV_BANKREG~189_q\,
	datad => \ALT_INV_BANKREG~205_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~319_combout\);

\BANKREG~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~221_q\);

\BANKREG~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~237_q\);

\BANKREG~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~253_q\);

\BANKREG~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~269_q\);

\BANKREG~320\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~320_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~269_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~253_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~237_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~221_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~221_q\,
	datab => \ALT_INV_BANKREG~237_q\,
	datac => \ALT_INV_BANKREG~253_q\,
	datad => \ALT_INV_BANKREG~269_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~320_combout\);

\BANKREG~321\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~321_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~320_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~319_combout\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( 
-- \BANKREG~318_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~317_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~317_combout\,
	datab => \ALT_INV_BANKREG~318_combout\,
	datac => \ALT_INV_BANKREG~319_combout\,
	datad => \ALT_INV_BANKREG~320_combout\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~321_combout\);

\WRITEBACKDATA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(9),
	o => \WRITEBACKDATA[9]~input_o\);

\BANKREG~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~30_q\);

\BANKREG~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~94_q\);

\BANKREG~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~158_q\);

\BANKREG~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~222_q\);

\BANKREG~322\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~322_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~222_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~158_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~94_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~30_q\,
	datab => \ALT_INV_BANKREG~94_q\,
	datac => \ALT_INV_BANKREG~158_q\,
	datad => \ALT_INV_BANKREG~222_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~322_combout\);

\BANKREG~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~46_q\);

\BANKREG~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~110_q\);

\BANKREG~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~174_q\);

\BANKREG~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~238_q\);

\BANKREG~323\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~323_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~238_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~174_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~110_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~46_q\,
	datab => \ALT_INV_BANKREG~110_q\,
	datac => \ALT_INV_BANKREG~174_q\,
	datad => \ALT_INV_BANKREG~238_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~323_combout\);

\BANKREG~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~62_q\);

\BANKREG~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~126_q\);

\BANKREG~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~190_q\);

\BANKREG~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~254_q\);

\BANKREG~324\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~324_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~254_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~190_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~126_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~62_q\,
	datab => \ALT_INV_BANKREG~126_q\,
	datac => \ALT_INV_BANKREG~190_q\,
	datad => \ALT_INV_BANKREG~254_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~324_combout\);

\BANKREG~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~78_q\);

\BANKREG~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~142_q\);

\BANKREG~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~206_q\);

\BANKREG~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~270_q\);

\BANKREG~325\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~325_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~270_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~206_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~142_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~78_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~78_q\,
	datab => \ALT_INV_BANKREG~142_q\,
	datac => \ALT_INV_BANKREG~206_q\,
	datad => \ALT_INV_BANKREG~270_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~325_combout\);

\BANKREG~326\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~326_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~325_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~324_combout\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( 
-- \BANKREG~323_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~322_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~322_combout\,
	datab => \ALT_INV_BANKREG~323_combout\,
	datac => \ALT_INV_BANKREG~324_combout\,
	datad => \ALT_INV_BANKREG~325_combout\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~326_combout\);

\WRITEBACKDATA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(10),
	o => \WRITEBACKDATA[10]~input_o\);

\BANKREG~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~31_q\);

\BANKREG~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~47_q\);

\BANKREG~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~63_q\);

\BANKREG~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~79_q\);

\BANKREG~327\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~327_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~79_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~63_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~47_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~31_q\,
	datab => \ALT_INV_BANKREG~47_q\,
	datac => \ALT_INV_BANKREG~63_q\,
	datad => \ALT_INV_BANKREG~79_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~327_combout\);

\BANKREG~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~95_q\);

\BANKREG~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~111_q\);

\BANKREG~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~127_q\);

\BANKREG~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~143_q\);

\BANKREG~328\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~328_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~143_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~127_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~111_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~95_q\,
	datab => \ALT_INV_BANKREG~111_q\,
	datac => \ALT_INV_BANKREG~127_q\,
	datad => \ALT_INV_BANKREG~143_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~328_combout\);

\BANKREG~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~159_q\);

\BANKREG~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~175_q\);

\BANKREG~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~191_q\);

\BANKREG~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~207_q\);

\BANKREG~329\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~329_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~207_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~191_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~175_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~159_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~159_q\,
	datab => \ALT_INV_BANKREG~175_q\,
	datac => \ALT_INV_BANKREG~191_q\,
	datad => \ALT_INV_BANKREG~207_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~329_combout\);

\BANKREG~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~223_q\);

\BANKREG~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~239_q\);

\BANKREG~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~255_q\);

\BANKREG~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~271_q\);

\BANKREG~330\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~330_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~271_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~255_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~239_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~223_q\,
	datab => \ALT_INV_BANKREG~239_q\,
	datac => \ALT_INV_BANKREG~255_q\,
	datad => \ALT_INV_BANKREG~271_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~330_combout\);

\BANKREG~331\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~331_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~330_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~329_combout\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( 
-- \BANKREG~328_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~327_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~327_combout\,
	datab => \ALT_INV_BANKREG~328_combout\,
	datac => \ALT_INV_BANKREG~329_combout\,
	datad => \ALT_INV_BANKREG~330_combout\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~331_combout\);

\WRITEBACKDATA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(11),
	o => \WRITEBACKDATA[11]~input_o\);

\BANKREG~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~32_q\);

\BANKREG~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~96_q\);

\BANKREG~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~160_q\);

\BANKREG~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~224_q\);

\BANKREG~332\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~332_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~224_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~160_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~96_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~32_q\,
	datab => \ALT_INV_BANKREG~96_q\,
	datac => \ALT_INV_BANKREG~160_q\,
	datad => \ALT_INV_BANKREG~224_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~332_combout\);

\BANKREG~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~48_q\);

\BANKREG~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~112_q\);

\BANKREG~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~176_q\);

\BANKREG~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~240_q\);

\BANKREG~333\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~333_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~240_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~176_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~112_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~48_q\,
	datab => \ALT_INV_BANKREG~112_q\,
	datac => \ALT_INV_BANKREG~176_q\,
	datad => \ALT_INV_BANKREG~240_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~333_combout\);

\BANKREG~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~64_q\);

\BANKREG~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~128_q\);

\BANKREG~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~192_q\);

\BANKREG~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~256_q\);

\BANKREG~334\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~334_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~256_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~192_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~128_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~64_q\,
	datab => \ALT_INV_BANKREG~128_q\,
	datac => \ALT_INV_BANKREG~192_q\,
	datad => \ALT_INV_BANKREG~256_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~334_combout\);

\BANKREG~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~80_q\);

\BANKREG~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~144_q\);

\BANKREG~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~208_q\);

\BANKREG~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~272_q\);

\BANKREG~335\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~335_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~272_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~208_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~144_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~80_q\,
	datab => \ALT_INV_BANKREG~144_q\,
	datac => \ALT_INV_BANKREG~208_q\,
	datad => \ALT_INV_BANKREG~272_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~335_combout\);

\BANKREG~336\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~336_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~335_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~334_combout\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( 
-- \BANKREG~333_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~332_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~332_combout\,
	datab => \ALT_INV_BANKREG~333_combout\,
	datac => \ALT_INV_BANKREG~334_combout\,
	datad => \ALT_INV_BANKREG~335_combout\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~336_combout\);

\WRITEBACKDATA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(12),
	o => \WRITEBACKDATA[12]~input_o\);

\BANKREG~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~33_q\);

\BANKREG~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~49_q\);

\BANKREG~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~65_q\);

\BANKREG~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~81_q\);

\BANKREG~337\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~337_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~81_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~65_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~49_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~33_q\,
	datab => \ALT_INV_BANKREG~49_q\,
	datac => \ALT_INV_BANKREG~65_q\,
	datad => \ALT_INV_BANKREG~81_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~337_combout\);

\BANKREG~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~97_q\);

\BANKREG~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~113_q\);

\BANKREG~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~129_q\);

\BANKREG~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~145_q\);

\BANKREG~338\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~338_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~145_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~129_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~113_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~97_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~97_q\,
	datab => \ALT_INV_BANKREG~113_q\,
	datac => \ALT_INV_BANKREG~129_q\,
	datad => \ALT_INV_BANKREG~145_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~338_combout\);

\BANKREG~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~161_q\);

\BANKREG~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~177_q\);

\BANKREG~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~193_q\);

\BANKREG~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~209_q\);

\BANKREG~339\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~339_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~209_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~193_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~177_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~161_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~161_q\,
	datab => \ALT_INV_BANKREG~177_q\,
	datac => \ALT_INV_BANKREG~193_q\,
	datad => \ALT_INV_BANKREG~209_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~339_combout\);

\BANKREG~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~225_q\);

\BANKREG~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~241_q\);

\BANKREG~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~257_q\);

\BANKREG~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~273_q\);

\BANKREG~340\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~340_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~273_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~257_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~241_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~225_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~225_q\,
	datab => \ALT_INV_BANKREG~241_q\,
	datac => \ALT_INV_BANKREG~257_q\,
	datad => \ALT_INV_BANKREG~273_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~340_combout\);

\BANKREG~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~341_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~340_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~339_combout\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( 
-- \BANKREG~338_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~337_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~337_combout\,
	datab => \ALT_INV_BANKREG~338_combout\,
	datac => \ALT_INV_BANKREG~339_combout\,
	datad => \ALT_INV_BANKREG~340_combout\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~341_combout\);

\WRITEBACKDATA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(13),
	o => \WRITEBACKDATA[13]~input_o\);

\BANKREG~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~34_q\);

\BANKREG~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~98_q\);

\BANKREG~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~162_q\);

\BANKREG~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~226_q\);

\BANKREG~342\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~342_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~226_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~162_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~98_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~34_q\,
	datab => \ALT_INV_BANKREG~98_q\,
	datac => \ALT_INV_BANKREG~162_q\,
	datad => \ALT_INV_BANKREG~226_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~342_combout\);

\BANKREG~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~50_q\);

\BANKREG~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~114_q\);

\BANKREG~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~178_q\);

\BANKREG~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~242_q\);

\BANKREG~343\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~343_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~242_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~178_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~114_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~50_q\,
	datab => \ALT_INV_BANKREG~114_q\,
	datac => \ALT_INV_BANKREG~178_q\,
	datad => \ALT_INV_BANKREG~242_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~343_combout\);

\BANKREG~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~66_q\);

\BANKREG~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~130_q\);

\BANKREG~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~194_q\);

\BANKREG~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~258_q\);

\BANKREG~344\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~344_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~258_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~194_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~130_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~66_q\,
	datab => \ALT_INV_BANKREG~130_q\,
	datac => \ALT_INV_BANKREG~194_q\,
	datad => \ALT_INV_BANKREG~258_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~344_combout\);

\BANKREG~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~82_q\);

\BANKREG~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~146_q\);

\BANKREG~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~210_q\);

\BANKREG~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~274_q\);

\BANKREG~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~345_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~274_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~210_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~146_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~82_q\,
	datab => \ALT_INV_BANKREG~146_q\,
	datac => \ALT_INV_BANKREG~210_q\,
	datad => \ALT_INV_BANKREG~274_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~345_combout\);

\BANKREG~346\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~346_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~345_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~344_combout\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( 
-- \BANKREG~343_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~342_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~342_combout\,
	datab => \ALT_INV_BANKREG~343_combout\,
	datac => \ALT_INV_BANKREG~344_combout\,
	datad => \ALT_INV_BANKREG~345_combout\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~346_combout\);

\WRITEBACKDATA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(14),
	o => \WRITEBACKDATA[14]~input_o\);

\BANKREG~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~35_q\);

\BANKREG~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~51_q\);

\BANKREG~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~67_q\);

\BANKREG~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~83_q\);

\BANKREG~347\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~347_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~83_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~67_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~51_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~35_q\,
	datab => \ALT_INV_BANKREG~51_q\,
	datac => \ALT_INV_BANKREG~67_q\,
	datad => \ALT_INV_BANKREG~83_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~347_combout\);

\BANKREG~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~99_q\);

\BANKREG~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~115_q\);

\BANKREG~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~131_q\);

\BANKREG~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~147_q\);

\BANKREG~348\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~348_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~147_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~131_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~115_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~99_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~99_q\,
	datab => \ALT_INV_BANKREG~115_q\,
	datac => \ALT_INV_BANKREG~131_q\,
	datad => \ALT_INV_BANKREG~147_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~348_combout\);

\BANKREG~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~163_q\);

\BANKREG~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~179_q\);

\BANKREG~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~195_q\);

\BANKREG~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~211_q\);

\BANKREG~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~349_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~211_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~195_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~179_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~163_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~163_q\,
	datab => \ALT_INV_BANKREG~179_q\,
	datac => \ALT_INV_BANKREG~195_q\,
	datad => \ALT_INV_BANKREG~211_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~349_combout\);

\BANKREG~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~227_q\);

\BANKREG~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~243_q\);

\BANKREG~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~259_q\);

\BANKREG~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~275_q\);

\BANKREG~350\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~350_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~275_q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~259_q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~243_q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~227_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~227_q\,
	datab => \ALT_INV_BANKREG~243_q\,
	datac => \ALT_INV_BANKREG~259_q\,
	datad => \ALT_INV_BANKREG~275_q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~350_combout\);

\BANKREG~351\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~351_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~350_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~349_combout\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( 
-- \BANKREG~348_combout\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~347_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~347_combout\,
	datab => \ALT_INV_BANKREG~348_combout\,
	datac => \ALT_INV_BANKREG~349_combout\,
	datad => \ALT_INV_BANKREG~350_combout\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~351_combout\);

\WRITEBACKDATA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(15),
	o => \WRITEBACKDATA[15]~input_o\);

\BANKREG~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~36_q\);

\BANKREG~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~100_q\);

\BANKREG~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~164_q\);

\BANKREG~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~228_q\);

\BANKREG~352\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~352_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~228_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~164_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~100_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~36_q\,
	datab => \ALT_INV_BANKREG~100_q\,
	datac => \ALT_INV_BANKREG~164_q\,
	datad => \ALT_INV_BANKREG~228_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~352_combout\);

\BANKREG~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~52_q\);

\BANKREG~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~116_q\);

\BANKREG~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~180_q\);

\BANKREG~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~244_q\);

\BANKREG~353\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~353_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~244_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~180_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~116_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~52_q\,
	datab => \ALT_INV_BANKREG~116_q\,
	datac => \ALT_INV_BANKREG~180_q\,
	datad => \ALT_INV_BANKREG~244_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~353_combout\);

\BANKREG~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~68_q\);

\BANKREG~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~132_q\);

\BANKREG~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~196_q\);

\BANKREG~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~260_q\);

\BANKREG~354\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~354_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~260_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~196_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~132_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~68_q\,
	datab => \ALT_INV_BANKREG~132_q\,
	datac => \ALT_INV_BANKREG~196_q\,
	datad => \ALT_INV_BANKREG~260_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~354_combout\);

\BANKREG~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~84_q\);

\BANKREG~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~148_q\);

\BANKREG~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~212_q\);

\BANKREG~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \BANKREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG~276_q\);

\BANKREG~355\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~355_combout\ = ( \INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~276_q\ ) ) ) # ( !\INSTR2[2]~input_o\ & ( \INSTR2[3]~input_o\ & ( \BANKREG~212_q\ ) ) ) # ( \INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~148_q\ ) ) ) # ( 
-- !\INSTR2[2]~input_o\ & ( !\INSTR2[3]~input_o\ & ( \BANKREG~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~84_q\,
	datab => \ALT_INV_BANKREG~148_q\,
	datac => \ALT_INV_BANKREG~212_q\,
	datad => \ALT_INV_BANKREG~276_q\,
	datae => \ALT_INV_INSTR2[2]~input_o\,
	dataf => \ALT_INV_INSTR2[3]~input_o\,
	combout => \BANKREG~355_combout\);

\BANKREG~356\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~356_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~355_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG~354_combout\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( 
-- \BANKREG~353_combout\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG~352_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~352_combout\,
	datab => \ALT_INV_BANKREG~353_combout\,
	datac => \ALT_INV_BANKREG~354_combout\,
	datad => \ALT_INV_BANKREG~355_combout\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \BANKREG~356_combout\);

\INSTR3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR3(0),
	o => \INSTR3[0]~input_o\);

\INSTR3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR3(1),
	o => \INSTR3[1]~input_o\);

\BANKREG~357\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~357_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~69_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~53_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~37_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~21_q\,
	datab => \ALT_INV_BANKREG~37_q\,
	datac => \ALT_INV_BANKREG~53_q\,
	datad => \ALT_INV_BANKREG~69_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~357_combout\);

\BANKREG~358\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~358_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~133_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~117_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~101_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~85_q\,
	datab => \ALT_INV_BANKREG~101_q\,
	datac => \ALT_INV_BANKREG~117_q\,
	datad => \ALT_INV_BANKREG~133_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~358_combout\);

\BANKREG~359\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~359_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~197_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~181_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~165_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~149_q\,
	datab => \ALT_INV_BANKREG~165_q\,
	datac => \ALT_INV_BANKREG~181_q\,
	datad => \ALT_INV_BANKREG~197_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~359_combout\);

\BANKREG~360\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~360_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~261_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~245_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~229_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~213_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~213_q\,
	datab => \ALT_INV_BANKREG~229_q\,
	datac => \ALT_INV_BANKREG~245_q\,
	datad => \ALT_INV_BANKREG~261_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~360_combout\);

\INSTR3[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR3(2),
	o => \INSTR3[2]~input_o\);

\INSTR3[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR3(3),
	o => \INSTR3[3]~input_o\);

\BANKREG~361\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~361_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~360_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~359_combout\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( 
-- \BANKREG~358_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~357_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~357_combout\,
	datab => \ALT_INV_BANKREG~358_combout\,
	datac => \ALT_INV_BANKREG~359_combout\,
	datad => \ALT_INV_BANKREG~360_combout\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~361_combout\);

\BANKREG~362\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~362_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~214_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~150_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~86_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~22_q\,
	datab => \ALT_INV_BANKREG~86_q\,
	datac => \ALT_INV_BANKREG~150_q\,
	datad => \ALT_INV_BANKREG~214_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~362_combout\);

\BANKREG~363\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~363_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~230_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~166_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~102_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~38_q\,
	datab => \ALT_INV_BANKREG~102_q\,
	datac => \ALT_INV_BANKREG~166_q\,
	datad => \ALT_INV_BANKREG~230_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~363_combout\);

\BANKREG~364\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~364_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~246_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~182_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~118_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~54_q\,
	datab => \ALT_INV_BANKREG~118_q\,
	datac => \ALT_INV_BANKREG~182_q\,
	datad => \ALT_INV_BANKREG~246_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~364_combout\);

\BANKREG~365\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~365_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~262_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~198_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~134_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~70_q\,
	datab => \ALT_INV_BANKREG~134_q\,
	datac => \ALT_INV_BANKREG~198_q\,
	datad => \ALT_INV_BANKREG~262_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~365_combout\);

\BANKREG~366\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~366_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~365_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~364_combout\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( 
-- \BANKREG~363_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~362_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~362_combout\,
	datab => \ALT_INV_BANKREG~363_combout\,
	datac => \ALT_INV_BANKREG~364_combout\,
	datad => \ALT_INV_BANKREG~365_combout\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~366_combout\);

\BANKREG~367\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~367_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~71_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~55_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~39_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~23_q\,
	datab => \ALT_INV_BANKREG~39_q\,
	datac => \ALT_INV_BANKREG~55_q\,
	datad => \ALT_INV_BANKREG~71_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~367_combout\);

\BANKREG~368\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~368_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~135_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~119_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~103_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~87_q\,
	datab => \ALT_INV_BANKREG~103_q\,
	datac => \ALT_INV_BANKREG~119_q\,
	datad => \ALT_INV_BANKREG~135_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~368_combout\);

\BANKREG~369\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~369_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~199_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~183_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~167_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~151_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~151_q\,
	datab => \ALT_INV_BANKREG~167_q\,
	datac => \ALT_INV_BANKREG~183_q\,
	datad => \ALT_INV_BANKREG~199_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~369_combout\);

\BANKREG~370\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~370_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~263_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~247_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~231_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~215_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~215_q\,
	datab => \ALT_INV_BANKREG~231_q\,
	datac => \ALT_INV_BANKREG~247_q\,
	datad => \ALT_INV_BANKREG~263_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~370_combout\);

\BANKREG~371\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~371_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~370_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~369_combout\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( 
-- \BANKREG~368_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~367_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~367_combout\,
	datab => \ALT_INV_BANKREG~368_combout\,
	datac => \ALT_INV_BANKREG~369_combout\,
	datad => \ALT_INV_BANKREG~370_combout\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~371_combout\);

\BANKREG~372\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~372_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~216_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~152_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~88_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~24_q\,
	datab => \ALT_INV_BANKREG~88_q\,
	datac => \ALT_INV_BANKREG~152_q\,
	datad => \ALT_INV_BANKREG~216_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~372_combout\);

\BANKREG~373\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~373_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~232_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~168_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~104_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~40_q\,
	datab => \ALT_INV_BANKREG~104_q\,
	datac => \ALT_INV_BANKREG~168_q\,
	datad => \ALT_INV_BANKREG~232_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~373_combout\);

\BANKREG~374\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~374_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~248_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~184_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~120_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~56_q\,
	datab => \ALT_INV_BANKREG~120_q\,
	datac => \ALT_INV_BANKREG~184_q\,
	datad => \ALT_INV_BANKREG~248_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~374_combout\);

\BANKREG~375\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~375_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~264_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~200_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~136_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~72_q\,
	datab => \ALT_INV_BANKREG~136_q\,
	datac => \ALT_INV_BANKREG~200_q\,
	datad => \ALT_INV_BANKREG~264_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~375_combout\);

\BANKREG~376\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~376_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~375_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~374_combout\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( 
-- \BANKREG~373_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~372_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~372_combout\,
	datab => \ALT_INV_BANKREG~373_combout\,
	datac => \ALT_INV_BANKREG~374_combout\,
	datad => \ALT_INV_BANKREG~375_combout\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~376_combout\);

\BANKREG~377\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~377_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~73_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~57_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~41_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~25_q\,
	datab => \ALT_INV_BANKREG~41_q\,
	datac => \ALT_INV_BANKREG~57_q\,
	datad => \ALT_INV_BANKREG~73_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~377_combout\);

\BANKREG~378\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~378_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~137_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~121_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~105_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~89_q\,
	datab => \ALT_INV_BANKREG~105_q\,
	datac => \ALT_INV_BANKREG~121_q\,
	datad => \ALT_INV_BANKREG~137_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~378_combout\);

\BANKREG~379\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~379_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~201_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~185_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~169_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~153_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~153_q\,
	datab => \ALT_INV_BANKREG~169_q\,
	datac => \ALT_INV_BANKREG~185_q\,
	datad => \ALT_INV_BANKREG~201_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~379_combout\);

\BANKREG~380\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~380_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~265_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~249_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~233_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~217_q\,
	datab => \ALT_INV_BANKREG~233_q\,
	datac => \ALT_INV_BANKREG~249_q\,
	datad => \ALT_INV_BANKREG~265_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~380_combout\);

\BANKREG~381\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~381_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~380_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~379_combout\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( 
-- \BANKREG~378_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~377_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~377_combout\,
	datab => \ALT_INV_BANKREG~378_combout\,
	datac => \ALT_INV_BANKREG~379_combout\,
	datad => \ALT_INV_BANKREG~380_combout\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~381_combout\);

\BANKREG~382\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~382_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~218_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~154_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~90_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~26_q\,
	datab => \ALT_INV_BANKREG~90_q\,
	datac => \ALT_INV_BANKREG~154_q\,
	datad => \ALT_INV_BANKREG~218_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~382_combout\);

\BANKREG~383\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~383_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~234_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~170_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~106_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~42_q\,
	datab => \ALT_INV_BANKREG~106_q\,
	datac => \ALT_INV_BANKREG~170_q\,
	datad => \ALT_INV_BANKREG~234_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~383_combout\);

\BANKREG~384\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~384_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~250_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~186_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~122_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~58_q\,
	datab => \ALT_INV_BANKREG~122_q\,
	datac => \ALT_INV_BANKREG~186_q\,
	datad => \ALT_INV_BANKREG~250_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~384_combout\);

\BANKREG~385\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~385_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~266_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~202_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~138_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~74_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~74_q\,
	datab => \ALT_INV_BANKREG~138_q\,
	datac => \ALT_INV_BANKREG~202_q\,
	datad => \ALT_INV_BANKREG~266_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~385_combout\);

\BANKREG~386\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~386_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~385_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~384_combout\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( 
-- \BANKREG~383_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~382_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~382_combout\,
	datab => \ALT_INV_BANKREG~383_combout\,
	datac => \ALT_INV_BANKREG~384_combout\,
	datad => \ALT_INV_BANKREG~385_combout\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~386_combout\);

\BANKREG~387\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~387_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~75_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~59_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~43_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~27_q\,
	datab => \ALT_INV_BANKREG~43_q\,
	datac => \ALT_INV_BANKREG~59_q\,
	datad => \ALT_INV_BANKREG~75_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~387_combout\);

\BANKREG~388\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~388_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~139_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~123_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~107_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~91_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~91_q\,
	datab => \ALT_INV_BANKREG~107_q\,
	datac => \ALT_INV_BANKREG~123_q\,
	datad => \ALT_INV_BANKREG~139_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~388_combout\);

\BANKREG~389\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~389_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~203_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~187_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~171_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~155_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~155_q\,
	datab => \ALT_INV_BANKREG~171_q\,
	datac => \ALT_INV_BANKREG~187_q\,
	datad => \ALT_INV_BANKREG~203_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~389_combout\);

\BANKREG~390\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~390_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~267_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~251_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~235_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~219_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~219_q\,
	datab => \ALT_INV_BANKREG~235_q\,
	datac => \ALT_INV_BANKREG~251_q\,
	datad => \ALT_INV_BANKREG~267_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~390_combout\);

\BANKREG~391\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~391_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~390_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~389_combout\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( 
-- \BANKREG~388_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~387_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~387_combout\,
	datab => \ALT_INV_BANKREG~388_combout\,
	datac => \ALT_INV_BANKREG~389_combout\,
	datad => \ALT_INV_BANKREG~390_combout\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~391_combout\);

\BANKREG~392\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~392_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~220_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~156_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~92_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~28_q\,
	datab => \ALT_INV_BANKREG~92_q\,
	datac => \ALT_INV_BANKREG~156_q\,
	datad => \ALT_INV_BANKREG~220_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~392_combout\);

\BANKREG~393\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~393_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~236_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~172_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~108_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~44_q\,
	datab => \ALT_INV_BANKREG~108_q\,
	datac => \ALT_INV_BANKREG~172_q\,
	datad => \ALT_INV_BANKREG~236_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~393_combout\);

\BANKREG~394\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~394_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~252_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~188_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~124_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~60_q\,
	datab => \ALT_INV_BANKREG~124_q\,
	datac => \ALT_INV_BANKREG~188_q\,
	datad => \ALT_INV_BANKREG~252_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~394_combout\);

\BANKREG~395\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~395_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~268_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~204_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~140_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~76_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~76_q\,
	datab => \ALT_INV_BANKREG~140_q\,
	datac => \ALT_INV_BANKREG~204_q\,
	datad => \ALT_INV_BANKREG~268_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~395_combout\);

\BANKREG~396\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~396_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~395_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~394_combout\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( 
-- \BANKREG~393_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~392_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~392_combout\,
	datab => \ALT_INV_BANKREG~393_combout\,
	datac => \ALT_INV_BANKREG~394_combout\,
	datad => \ALT_INV_BANKREG~395_combout\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~396_combout\);

\BANKREG~397\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~397_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~77_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~61_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~45_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~29_q\,
	datab => \ALT_INV_BANKREG~45_q\,
	datac => \ALT_INV_BANKREG~61_q\,
	datad => \ALT_INV_BANKREG~77_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~397_combout\);

\BANKREG~398\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~398_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~141_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~125_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~109_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~93_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~93_q\,
	datab => \ALT_INV_BANKREG~109_q\,
	datac => \ALT_INV_BANKREG~125_q\,
	datad => \ALT_INV_BANKREG~141_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~398_combout\);

\BANKREG~399\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~399_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~205_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~189_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~173_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~157_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~157_q\,
	datab => \ALT_INV_BANKREG~173_q\,
	datac => \ALT_INV_BANKREG~189_q\,
	datad => \ALT_INV_BANKREG~205_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~399_combout\);

\BANKREG~400\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~400_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~269_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~253_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~237_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~221_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~221_q\,
	datab => \ALT_INV_BANKREG~237_q\,
	datac => \ALT_INV_BANKREG~253_q\,
	datad => \ALT_INV_BANKREG~269_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~400_combout\);

\BANKREG~401\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~401_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~400_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~399_combout\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( 
-- \BANKREG~398_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~397_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~397_combout\,
	datab => \ALT_INV_BANKREG~398_combout\,
	datac => \ALT_INV_BANKREG~399_combout\,
	datad => \ALT_INV_BANKREG~400_combout\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~401_combout\);

\BANKREG~402\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~402_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~222_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~158_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~94_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~30_q\,
	datab => \ALT_INV_BANKREG~94_q\,
	datac => \ALT_INV_BANKREG~158_q\,
	datad => \ALT_INV_BANKREG~222_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~402_combout\);

\BANKREG~403\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~403_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~238_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~174_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~110_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~46_q\,
	datab => \ALT_INV_BANKREG~110_q\,
	datac => \ALT_INV_BANKREG~174_q\,
	datad => \ALT_INV_BANKREG~238_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~403_combout\);

\BANKREG~404\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~404_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~254_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~190_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~126_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~62_q\,
	datab => \ALT_INV_BANKREG~126_q\,
	datac => \ALT_INV_BANKREG~190_q\,
	datad => \ALT_INV_BANKREG~254_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~404_combout\);

\BANKREG~405\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~405_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~270_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~206_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~142_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~78_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~78_q\,
	datab => \ALT_INV_BANKREG~142_q\,
	datac => \ALT_INV_BANKREG~206_q\,
	datad => \ALT_INV_BANKREG~270_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~405_combout\);

\BANKREG~406\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~406_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~405_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~404_combout\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( 
-- \BANKREG~403_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~402_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~402_combout\,
	datab => \ALT_INV_BANKREG~403_combout\,
	datac => \ALT_INV_BANKREG~404_combout\,
	datad => \ALT_INV_BANKREG~405_combout\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~406_combout\);

\BANKREG~407\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~407_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~79_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~63_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~47_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~31_q\,
	datab => \ALT_INV_BANKREG~47_q\,
	datac => \ALT_INV_BANKREG~63_q\,
	datad => \ALT_INV_BANKREG~79_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~407_combout\);

\BANKREG~408\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~408_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~143_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~127_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~111_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~95_q\,
	datab => \ALT_INV_BANKREG~111_q\,
	datac => \ALT_INV_BANKREG~127_q\,
	datad => \ALT_INV_BANKREG~143_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~408_combout\);

\BANKREG~409\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~409_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~207_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~191_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~175_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~159_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~159_q\,
	datab => \ALT_INV_BANKREG~175_q\,
	datac => \ALT_INV_BANKREG~191_q\,
	datad => \ALT_INV_BANKREG~207_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~409_combout\);

\BANKREG~410\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~410_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~271_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~255_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~239_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~223_q\,
	datab => \ALT_INV_BANKREG~239_q\,
	datac => \ALT_INV_BANKREG~255_q\,
	datad => \ALT_INV_BANKREG~271_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~410_combout\);

\BANKREG~411\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~411_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~410_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~409_combout\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( 
-- \BANKREG~408_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~407_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~407_combout\,
	datab => \ALT_INV_BANKREG~408_combout\,
	datac => \ALT_INV_BANKREG~409_combout\,
	datad => \ALT_INV_BANKREG~410_combout\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~411_combout\);

\BANKREG~412\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~412_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~224_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~160_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~96_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~32_q\,
	datab => \ALT_INV_BANKREG~96_q\,
	datac => \ALT_INV_BANKREG~160_q\,
	datad => \ALT_INV_BANKREG~224_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~412_combout\);

\BANKREG~413\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~413_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~240_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~176_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~112_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~48_q\,
	datab => \ALT_INV_BANKREG~112_q\,
	datac => \ALT_INV_BANKREG~176_q\,
	datad => \ALT_INV_BANKREG~240_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~413_combout\);

\BANKREG~414\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~414_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~256_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~192_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~128_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~64_q\,
	datab => \ALT_INV_BANKREG~128_q\,
	datac => \ALT_INV_BANKREG~192_q\,
	datad => \ALT_INV_BANKREG~256_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~414_combout\);

\BANKREG~415\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~415_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~272_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~208_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~144_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~80_q\,
	datab => \ALT_INV_BANKREG~144_q\,
	datac => \ALT_INV_BANKREG~208_q\,
	datad => \ALT_INV_BANKREG~272_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~415_combout\);

\BANKREG~416\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~416_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~415_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~414_combout\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( 
-- \BANKREG~413_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~412_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~412_combout\,
	datab => \ALT_INV_BANKREG~413_combout\,
	datac => \ALT_INV_BANKREG~414_combout\,
	datad => \ALT_INV_BANKREG~415_combout\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~416_combout\);

\BANKREG~417\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~417_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~81_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~65_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~49_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~33_q\,
	datab => \ALT_INV_BANKREG~49_q\,
	datac => \ALT_INV_BANKREG~65_q\,
	datad => \ALT_INV_BANKREG~81_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~417_combout\);

\BANKREG~418\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~418_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~145_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~129_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~113_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~97_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~97_q\,
	datab => \ALT_INV_BANKREG~113_q\,
	datac => \ALT_INV_BANKREG~129_q\,
	datad => \ALT_INV_BANKREG~145_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~418_combout\);

\BANKREG~419\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~419_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~209_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~193_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~177_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~161_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~161_q\,
	datab => \ALT_INV_BANKREG~177_q\,
	datac => \ALT_INV_BANKREG~193_q\,
	datad => \ALT_INV_BANKREG~209_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~419_combout\);

\BANKREG~420\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~420_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~273_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~257_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~241_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~225_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~225_q\,
	datab => \ALT_INV_BANKREG~241_q\,
	datac => \ALT_INV_BANKREG~257_q\,
	datad => \ALT_INV_BANKREG~273_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~420_combout\);

\BANKREG~421\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~421_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~420_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~419_combout\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( 
-- \BANKREG~418_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~417_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~417_combout\,
	datab => \ALT_INV_BANKREG~418_combout\,
	datac => \ALT_INV_BANKREG~419_combout\,
	datad => \ALT_INV_BANKREG~420_combout\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~421_combout\);

\BANKREG~422\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~422_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~226_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~162_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~98_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~34_q\,
	datab => \ALT_INV_BANKREG~98_q\,
	datac => \ALT_INV_BANKREG~162_q\,
	datad => \ALT_INV_BANKREG~226_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~422_combout\);

\BANKREG~423\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~423_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~242_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~178_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~114_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~50_q\,
	datab => \ALT_INV_BANKREG~114_q\,
	datac => \ALT_INV_BANKREG~178_q\,
	datad => \ALT_INV_BANKREG~242_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~423_combout\);

\BANKREG~424\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~424_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~258_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~194_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~130_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~66_q\,
	datab => \ALT_INV_BANKREG~130_q\,
	datac => \ALT_INV_BANKREG~194_q\,
	datad => \ALT_INV_BANKREG~258_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~424_combout\);

\BANKREG~425\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~425_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~274_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~210_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~146_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~82_q\,
	datab => \ALT_INV_BANKREG~146_q\,
	datac => \ALT_INV_BANKREG~210_q\,
	datad => \ALT_INV_BANKREG~274_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~425_combout\);

\BANKREG~426\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~426_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~425_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~424_combout\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( 
-- \BANKREG~423_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~422_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~422_combout\,
	datab => \ALT_INV_BANKREG~423_combout\,
	datac => \ALT_INV_BANKREG~424_combout\,
	datad => \ALT_INV_BANKREG~425_combout\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~426_combout\);

\BANKREG~427\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~427_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~83_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~67_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~51_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~35_q\,
	datab => \ALT_INV_BANKREG~51_q\,
	datac => \ALT_INV_BANKREG~67_q\,
	datad => \ALT_INV_BANKREG~83_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~427_combout\);

\BANKREG~428\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~428_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~147_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~131_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~115_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~99_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~99_q\,
	datab => \ALT_INV_BANKREG~115_q\,
	datac => \ALT_INV_BANKREG~131_q\,
	datad => \ALT_INV_BANKREG~147_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~428_combout\);

\BANKREG~429\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~429_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~211_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~195_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~179_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~163_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~163_q\,
	datab => \ALT_INV_BANKREG~179_q\,
	datac => \ALT_INV_BANKREG~195_q\,
	datad => \ALT_INV_BANKREG~211_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~429_combout\);

\BANKREG~430\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~430_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~275_q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~259_q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~243_q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~227_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~227_q\,
	datab => \ALT_INV_BANKREG~243_q\,
	datac => \ALT_INV_BANKREG~259_q\,
	datad => \ALT_INV_BANKREG~275_q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~430_combout\);

\BANKREG~431\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~431_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~430_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~429_combout\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( 
-- \BANKREG~428_combout\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~427_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~427_combout\,
	datab => \ALT_INV_BANKREG~428_combout\,
	datac => \ALT_INV_BANKREG~429_combout\,
	datad => \ALT_INV_BANKREG~430_combout\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~431_combout\);

\BANKREG~432\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~432_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~228_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~164_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~100_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~36_q\,
	datab => \ALT_INV_BANKREG~100_q\,
	datac => \ALT_INV_BANKREG~164_q\,
	datad => \ALT_INV_BANKREG~228_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~432_combout\);

\BANKREG~433\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~433_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~244_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~180_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~116_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~52_q\,
	datab => \ALT_INV_BANKREG~116_q\,
	datac => \ALT_INV_BANKREG~180_q\,
	datad => \ALT_INV_BANKREG~244_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~433_combout\);

\BANKREG~434\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~434_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~260_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~196_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~132_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~68_q\,
	datab => \ALT_INV_BANKREG~132_q\,
	datac => \ALT_INV_BANKREG~196_q\,
	datad => \ALT_INV_BANKREG~260_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~434_combout\);

\BANKREG~435\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~435_combout\ = ( \INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~276_q\ ) ) ) # ( !\INSTR3[2]~input_o\ & ( \INSTR3[3]~input_o\ & ( \BANKREG~212_q\ ) ) ) # ( \INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~148_q\ ) ) ) # ( 
-- !\INSTR3[2]~input_o\ & ( !\INSTR3[3]~input_o\ & ( \BANKREG~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~84_q\,
	datab => \ALT_INV_BANKREG~148_q\,
	datac => \ALT_INV_BANKREG~212_q\,
	datad => \ALT_INV_BANKREG~276_q\,
	datae => \ALT_INV_INSTR3[2]~input_o\,
	dataf => \ALT_INV_INSTR3[3]~input_o\,
	combout => \BANKREG~435_combout\);

\BANKREG~436\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANKREG~436_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~435_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG~434_combout\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( 
-- \BANKREG~433_combout\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG~432_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG~432_combout\,
	datab => \ALT_INV_BANKREG~433_combout\,
	datac => \ALT_INV_BANKREG~434_combout\,
	datad => \ALT_INV_BANKREG~435_combout\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \BANKREG~436_combout\);

ww_OUTREG1(0) <= \OUTREG1[0]~output_o\;

ww_OUTREG1(1) <= \OUTREG1[1]~output_o\;

ww_OUTREG1(2) <= \OUTREG1[2]~output_o\;

ww_OUTREG1(3) <= \OUTREG1[3]~output_o\;

ww_OUTREG1(4) <= \OUTREG1[4]~output_o\;

ww_OUTREG1(5) <= \OUTREG1[5]~output_o\;

ww_OUTREG1(6) <= \OUTREG1[6]~output_o\;

ww_OUTREG1(7) <= \OUTREG1[7]~output_o\;

ww_OUTREG1(8) <= \OUTREG1[8]~output_o\;

ww_OUTREG1(9) <= \OUTREG1[9]~output_o\;

ww_OUTREG1(10) <= \OUTREG1[10]~output_o\;

ww_OUTREG1(11) <= \OUTREG1[11]~output_o\;

ww_OUTREG1(12) <= \OUTREG1[12]~output_o\;

ww_OUTREG1(13) <= \OUTREG1[13]~output_o\;

ww_OUTREG1(14) <= \OUTREG1[14]~output_o\;

ww_OUTREG1(15) <= \OUTREG1[15]~output_o\;

ww_OUTREG2(0) <= \OUTREG2[0]~output_o\;

ww_OUTREG2(1) <= \OUTREG2[1]~output_o\;

ww_OUTREG2(2) <= \OUTREG2[2]~output_o\;

ww_OUTREG2(3) <= \OUTREG2[3]~output_o\;

ww_OUTREG2(4) <= \OUTREG2[4]~output_o\;

ww_OUTREG2(5) <= \OUTREG2[5]~output_o\;

ww_OUTREG2(6) <= \OUTREG2[6]~output_o\;

ww_OUTREG2(7) <= \OUTREG2[7]~output_o\;

ww_OUTREG2(8) <= \OUTREG2[8]~output_o\;

ww_OUTREG2(9) <= \OUTREG2[9]~output_o\;

ww_OUTREG2(10) <= \OUTREG2[10]~output_o\;

ww_OUTREG2(11) <= \OUTREG2[11]~output_o\;

ww_OUTREG2(12) <= \OUTREG2[12]~output_o\;

ww_OUTREG2(13) <= \OUTREG2[13]~output_o\;

ww_OUTREG2(14) <= \OUTREG2[14]~output_o\;

ww_OUTREG2(15) <= \OUTREG2[15]~output_o\;
END structure;


