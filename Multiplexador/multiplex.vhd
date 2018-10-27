LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY multiplex IS
PORT
	( entrada1,entrada2,entrada3,entrada4 : in STD_LOGIC;
		flag : in BIT_VECTOR (1 DOWNTO 0);
		saida : out STD_LOGIC);
END multiplex;

ARCHITECTURE behavior OF multiplex IS
BEGIN
abc: PROCESS (entrada1,entrada2,entrada3,entrada4,flag)
begin
	CASE flag IS
		WHEN "00" =>  saida <= entrada1;
		WHEN "01" =>  saida <= entrada2;
		WHEN "10" =>  saida <= entrada3;
		WHEN "11" =>  saida <= entrada4;
	END CASE;
end PROCESS abc;
END behavior;