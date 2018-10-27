LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY QShiftd IS
PORT
(
	opshiftd : in std_logic_vector(15 downto 0);
	resshiftd : out std_logic_vector(15 downto 0));
END QShiftd;

ARCHITECTURE behavior of QShiftd is
	signal vet : std_logic_vector(13 downto 0);
	BEGIN
		vet <= opshiftd(13 DOWNTO 0);
		resshiftd <= "00" & vet;
end behavior;
	