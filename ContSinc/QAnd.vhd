LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY QAnd IS
PORT
(
	entrada1,entrada2 : in std_logic;
	saida : out std_logic);
end QAnd;

ARCHITECTURE behavior OF QAnd IS
BEGIN

	saida <= entrada1 and entrada2;
	
END behavior;