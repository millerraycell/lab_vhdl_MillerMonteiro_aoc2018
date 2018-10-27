LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity QXor is
port
	(l,m : in STD_LOGIC;
		i : out STD_LOGIC);
end QXor;

ARCHITECTURE behavior of QXor is

component QAnd is
port
	( a,b : in STD_LOGIC;
		s : out STD_LOGIC);
end component;

component QOr is
port
	( c,d : in STD_LOGIC;
		k : out STD_LOGIC);
end component;

component QNot is
port
	( v : in STD_LOGIC;
		g : out STD_LOGIC);
end component;

signal x1,x2,x3,x4 : STD_LOGIC;

begin
	
	G1: QNot port map(l,x1);
	G2: QNot port map(m,x2);
	G3: QAnd port map (x1,m,x3);
	G4: QAnd port map (l,x2,x4);
	G5: QOr port map (x3,x4,i);
end behavior;