LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY QOr IS
PORT
(
	opor1,opor2 : in std_logic_vector(15 DOWNTO 0);
	resor : out std_logic_vector(15 DOWNTO 0));
END QOr;

ARCHITECTURE behavior OF QOr IS
BEGIN
	resor <= opor1 or opor2;
END behavior;