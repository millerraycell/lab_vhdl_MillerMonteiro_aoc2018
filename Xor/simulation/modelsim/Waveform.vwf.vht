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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/24/2018 14:03:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          QXor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY QXor_vhd_vec_tst IS
END QXor_vhd_vec_tst;
ARCHITECTURE QXor_arch OF QXor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL i : STD_LOGIC;
SIGNAL l : STD_LOGIC;
SIGNAL m : STD_LOGIC;
COMPONENT QXor
	PORT (
	i : BUFFER STD_LOGIC;
	l : IN STD_LOGIC;
	m : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : QXor
	PORT MAP (
-- list connections between master ports and signals
	i => i,
	l => l,
	m => m
	);

-- l
t_prcs_l: PROCESS
BEGIN
LOOP
	l <= '0';
	WAIT FOR 10000 ps;
	l <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_l;

-- m
t_prcs_m: PROCESS
BEGIN
	m <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		m <= '0';
		WAIT FOR 10000 ps;
		m <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	m <= '0';
WAIT;
END PROCESS t_prcs_m;
END QXor_arch;
