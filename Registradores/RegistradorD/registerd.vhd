Library ieee;
use ieee.std_logic_1164.all;

ENTITY registerd is 
PORT(
	clk, pin : IN STD_LOGIC;
	pout : OUT STD_LOGIC
);
END registerd;

ARCHITECTURE behavior OF registerd IS
BEGIN
	pout <= pin WHEN clk = '1';
END behavior;