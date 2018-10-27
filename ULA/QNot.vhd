LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY QNot IS
PORT
(
	opnot: in std_logic_vector(15 DOWNTO 0);
	resnot : out std_logic_vector(15 DOWNTO 0));
END QNot;

ARCHITECTURE behavior OF QNot IS
BEGIN
	resnot <= not opnot;
END behavior;