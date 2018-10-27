LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY QOr is
port
	( c,d : in STD_LOGIC;
		k : out STD_LOGIC);
END QOr;

ARCHITECTURE behavior OF QOr IS
BEGIN
	
	k <= c or d;
END behavior;