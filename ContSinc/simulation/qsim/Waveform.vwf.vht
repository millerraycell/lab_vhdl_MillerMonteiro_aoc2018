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
-- Generated on "10/26/2018 22:48:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          contsinc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contsinc_vhd_vec_tst IS
END contsinc_vhd_vec_tst;
ARCHITECTURE contsinc_arch OF contsinc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL j : STD_LOGIC;
SIGNAL k : STD_LOGIC;
SIGNAL z1 : STD_LOGIC;
SIGNAL z2 : STD_LOGIC;
SIGNAL z3 : STD_LOGIC;
COMPONENT contsinc
	PORT (
	clock : IN STD_LOGIC;
	j : IN STD_LOGIC;
	k : IN STD_LOGIC;
	z1 : BUFFER STD_LOGIC;
	z2 : BUFFER STD_LOGIC;
	z3 : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : contsinc
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	j => j,
	k => k,
	z1 => z1,
	z2 => z2,
	z3 => z3
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- j
t_prcs_j: PROCESS
BEGIN
	j <= '1';
WAIT;
END PROCESS t_prcs_j;

-- k
t_prcs_k: PROCESS
BEGIN
	k <= '1';
WAIT;
END PROCESS t_prcs_k;
END contsinc_arch;
