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
-- Generated on "10/26/2018 22:10:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          uc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY uc_vhd_vec_tst IS
END uc_vhd_vec_tst;
ARCHITECTURE uc_arch OF uc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aluop0 : STD_LOGIC;
SIGNAL aluop1 : STD_LOGIC;
SIGNAL branch : STD_LOGIC;
SIGNAL entrada : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL escrevemem : STD_LOGIC;
SIGNAL escrevereg : STD_LOGIC;
SIGNAL lemem : STD_LOGIC;
SIGNAL memparareg : STD_LOGIC;
SIGNAL origalu : STD_LOGIC;
SIGNAL regdest : STD_LOGIC;
COMPONENT uc
	PORT (
	aluop0 : BUFFER STD_LOGIC;
	aluop1 : BUFFER STD_LOGIC;
	branch : BUFFER STD_LOGIC;
	entrada : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	escrevemem : BUFFER STD_LOGIC;
	escrevereg : BUFFER STD_LOGIC;
	lemem : BUFFER STD_LOGIC;
	memparareg : BUFFER STD_LOGIC;
	origalu : BUFFER STD_LOGIC;
	regdest : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : uc
	PORT MAP (
-- list connections between master ports and signals
	aluop0 => aluop0,
	aluop1 => aluop1,
	branch => branch,
	entrada => entrada,
	escrevemem => escrevemem,
	escrevereg => escrevereg,
	lemem => lemem,
	memparareg => memparareg,
	origalu => origalu,
	regdest => regdest
	);
-- entrada[4]
t_prcs_entrada_4: PROCESS
BEGIN
	entrada(4) <= '0';
	WAIT FOR 130000 ps;
	FOR i IN 1 TO 2
	LOOP
		entrada(4) <= '1';
		WAIT FOR 160000 ps;
		entrada(4) <= '0';
		WAIT FOR 160000 ps;
	END LOOP;
	entrada(4) <= '1';
	WAIT FOR 160000 ps;
	entrada(4) <= '0';
WAIT;
END PROCESS t_prcs_entrada_4;
-- entrada[3]
t_prcs_entrada_3: PROCESS
BEGIN
	entrada(3) <= '0';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 5
	LOOP
		entrada(3) <= '1';
		WAIT FOR 80000 ps;
		entrada(3) <= '0';
		WAIT FOR 80000 ps;
	END LOOP;
	entrada(3) <= '1';
	WAIT FOR 80000 ps;
	entrada(3) <= '0';
WAIT;
END PROCESS t_prcs_entrada_3;
-- entrada[2]
t_prcs_entrada_2: PROCESS
BEGIN
	entrada(2) <= '0';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 12
	LOOP
		entrada(2) <= '1';
		WAIT FOR 40000 ps;
		entrada(2) <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	entrada(2) <= '1';
WAIT;
END PROCESS t_prcs_entrada_2;
-- entrada[1]
t_prcs_entrada_1: PROCESS
BEGIN
	entrada(1) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 24
	LOOP
		entrada(1) <= '0';
		WAIT FOR 20000 ps;
		entrada(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	entrada(1) <= '0';
	WAIT FOR 20000 ps;
	entrada(1) <= '1';
WAIT;
END PROCESS t_prcs_entrada_1;
-- entrada[0]
t_prcs_entrada_0: PROCESS
BEGIN
LOOP
	entrada(0) <= '1';
	WAIT FOR 10000 ps;
	entrada(0) <= '0';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_entrada_0;
END uc_arch;
