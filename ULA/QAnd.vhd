LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY QAnd IS
PORT
(
	opand1,opand2 : in std_logic_vector(15 DOWNTO 0);
	resaand : out std_logic_vector(15 DOWNTO 0));
END QAnd;

ARCHITECTURE behavior OF QAnd IS
BEGIN
	resaand <= opand1 and opand2;
END behavior;