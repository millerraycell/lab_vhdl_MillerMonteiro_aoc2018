LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY QXor IS
PORT
(
	opxor1,opxor2 : in std_logic_vector(15 DOWNTO 0);
	resxor : out std_logic_vector(15 DOWNTO 0));
END QXor;

ARCHITECTURE behavior OF QXor IS
BEGIN
	resxor <= ((not opxor1) and opxor2) or ((not opxor2) and opxor1);
END behavior;