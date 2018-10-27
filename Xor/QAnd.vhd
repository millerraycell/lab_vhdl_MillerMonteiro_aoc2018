LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY QAnd is
port
	( a,b : in STD_LOGIC;
		s : out STD_LOGIC);
end QAnd;

ARCHITECTURE behavior of QAnd is
begin
	
	s <= a and b;
end behavior;