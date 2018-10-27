LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

ENTITY sum IS
PORT
(
	entrada1,entrada2: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	saida : out STD_LOGIC_VECTOR(15 DOWNTO 0));
END sum;

ARCHITECTURE behavior OF sum IS
BEGIN
	saida <= entrada1 + entrada2;
END behavior;