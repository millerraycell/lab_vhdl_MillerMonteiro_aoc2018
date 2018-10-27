LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY QNor IS
PORT
(
	opnor1,opnor2 : in std_logic_vector(15 DOWNTO 0);
	resnor : out std_logic_vector(15 DOWNTO 0));
END QNor;

ARCHITECTURE behavior OF QNor IS
BEGIN
	resnor <= opnor1 nor opnor2;
END behavior;