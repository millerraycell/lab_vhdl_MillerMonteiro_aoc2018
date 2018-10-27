LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY QNand IS
PORT
(
	opnand1,opnand2 : in std_logic_vector(15 DOWNTO 0);
	resnand : out std_logic_vector(15 DOWNTO 0));
END QNand;

ARCHITECTURE behavior OF QNand IS
BEGIN
	resnand <= opnand1 nand opnand2;
END behavior;