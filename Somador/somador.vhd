LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

ENTITY somador IS
PORT
	(entrada : in STD_LOGIC_VECTOR (15 DOWNTO 0);
	saida: out STD_LOGIC_VECTOR (15 DOWNTO 0));
END somador;

ARCHITECTURE behavior OF somador IS
BEGIN
	saida <= entrada + "0000000000000100";
END behavior;