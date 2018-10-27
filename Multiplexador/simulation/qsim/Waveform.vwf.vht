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
-- Generated on "10/26/2018 20:22:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          multiplex
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY multiplex_vhd_vec_tst IS
END multiplex_vhd_vec_tst;
ARCHITECTURE multiplex_arch OF multiplex_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL entrada1 : STD_LOGIC;
SIGNAL entrada2 : STD_LOGIC;
SIGNAL entrada3 : STD_LOGIC;
SIGNAL entrada4 : STD_LOGIC;
SIGNAL flag : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL saida : STD_LOGIC;
COMPONENT multiplex
	PORT (
	entrada1 : IN STD_LOGIC;
	entrada2 : IN STD_LOGIC;
	entrada3 : IN STD_LOGIC;
	entrada4 : IN STD_LOGIC;
	flag : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	saida : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : multiplex
	PORT MAP (
-- list connections between master ports and signals
	entrada1 => entrada1,
	entrada2 => entrada2,
	entrada3 => entrada3,
	entrada4 => entrada4,
	flag => flag,
	saida => saida
	);

-- entrada1
t_prcs_entrada1: PROCESS
BEGIN
LOOP
	entrada1 <= '0';
	WAIT FOR 10000 ps;
	entrada1 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_entrada1;

-- entrada2
t_prcs_entrada2: PROCESS
BEGIN
	entrada2 <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		entrada2 <= '0';
		WAIT FOR 10000 ps;
		entrada2 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	entrada2 <= '0';
WAIT;
END PROCESS t_prcs_entrada2;

-- entrada3
t_prcs_entrada3: PROCESS
BEGIN
LOOP
	entrada3 <= '0';
	WAIT FOR 5000 ps;
	entrada3 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_entrada3;

-- entrada4
t_prcs_entrada4: PROCESS
BEGIN
	entrada4 <= '1';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 99
	LOOP
		entrada4 <= '0';
		WAIT FOR 5000 ps;
		entrada4 <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	entrada4 <= '0';
WAIT;
END PROCESS t_prcs_entrada4;
-- flag[1]
t_prcs_flag_1: PROCESS
BEGIN
LOOP
	flag(1) <= '0';
	WAIT FOR 10000 ps;
	flag(1) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_flag_1;
-- flag[0]
t_prcs_flag_0: PROCESS
BEGIN
LOOP
	flag(0) <= '0';
	WAIT FOR 5000 ps;
	flag(0) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_flag_0;
END multiplex_arch;
