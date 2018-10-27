LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY  Multiplexador9x1 IS
	PORT( 
	SIGNAL A,B,C,D,E,F,G,H,I: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL SEL : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	SIGNAL SAIDA: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	
	) ;
	
END Multiplexador9x1;

ARCHITECTURE Multiplexador9x1 OF Multiplexador9x1 IS
BEGIN 
	PROCESS (A,B,C,D,E,F,G,H,I,SEL)
		BEGIN
			CASE SEL IS
			WHEN "0000" => SAIDA <= A;
			WHEN "0001" => SAIDA <= B;
			WHEN "0010" => SAIDA <= C;
			WHEN "0011" => SAIDA <= D;
			WHEN "0100" => SAIDA <= E;
			WHEN "0101" => SAIDA <= F;
			WHEN "0110" => SAIDA <= G;
			WHEN "0111" => SAIDA <= H;
			WHEN "1000" => SAIDA <= I;
			WHEN OTHERS => SAIDA <= "ZZZZZZZZZZZZZZZZ";
			
				
			END CASE;
			
	END PROCESS;
		
END Multiplexador9x1;