LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

ENTITY ula is
PORT
(
	flag : in std_logic_vector (3 DOWNTO 0);
	entrada1 : in std_logic_vector (15 DOWNTO 0);
	entrada2 : in std_logic_vector (15 DOWNTO 0);
	saida : out std_logic_vector (15 DOWNTO 0));
end ula;

ARCHITECTURE behavior of ula IS
COMPONENT QAnd
PORT
(
	opand1,opand2 : in std_logic_vector(15 DOWNTO 0);
	resaand : out std_logic_vector(15 DOWNTO 0));
END COMPONENT;

COMPONENT QOr
PORT
(
	opor1,opor2 : in std_logic_vector(15 DOWNTO 0);
	resor : out std_logic_vector(15 DOWNTO 0));
END COMPONENT;

COMPONENT QNot
PORT
(
	opnot: in std_logic_vector(15 DOWNTO 0);
	resnot : out std_logic_vector(15 DOWNTO 0));
END COMPONENT;

COMPONENT QNor
PORT
(
	opnor1,opnor2 : in std_logic_vector(15 DOWNTO 0);
	resnor : out std_logic_vector(15 DOWNTO 0));
END COMPONENT;

COMPONENT QNand IS
PORT
(
	opnand1,opnand2 : in std_logic_vector(15 DOWNTO 0);
	resnand : out std_logic_vector(15 DOWNTO 0));
END COMPONENT;

COMPONENT QXor
PORT
(
	opxor1,opxor2 : in std_logic_vector(15 DOWNTO 0);
	resxor : out std_logic_vector(15 DOWNTO 0));
END COMPONENT;

COMPONENT Sum
PORT
(
	opsum1,opsum2 : in std_logic_vector(15 DOWNTO 0);
	ressum : out std_logic_vector(15 DOWNTO 0));
END COMPONENT;

COMPONENT Sub
PORT
(
	opsub1,opsub2 : in std_logic_vector(15 DOWNTO 0);
	ressub : out std_logic_vector(15 DOWNTO 0));
END COMPONENT;

COMPONENT QShiftd
PORT
(
	opshiftd : in std_logic_vector(15 downto 0);
	resshiftd : out std_logic_vector(15 downto 0));
END COMPONENT;

COMPONENT QShifte
PORT
(
	opshifte : in std_logic_vector(15 downto 0);
	resshifte : out std_logic_vector(15 downto 0));
END COMPONENT;

COMPONENT  Multiplexador9x1
	PORT( 
	SIGNAL A,B,C,D,E,F,G,H,I: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL SEL : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	SIGNAL SAIDA: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)) ;
	
END COMPONENT;

signal auxand : std_logic_vector(15 DOWNTO 0);
signal auxor : std_logic_vector(15 DOWNTO 0);
signal auxnot : std_logic_vector(15 DOWNTO 0);
signal auxnor : std_logic_vector(15 DOWNTO 0);
signal auxnand : std_logic_vector(15 DOWNTO 0);
signal auxxor : std_logic_vector(15 DOWNTO 0);
signal auxsum : std_logic_vector(15 DOWNTO 0);
signal auxsub : std_logic_vector(15 DOWNTO 0);
signal auxshiftd : std_logic_vector(15 DOWNTO 0);
signal auxshifte : std_logic_vector(15 DOWNTO 0);

BEGIN

	G1: QAnd PORT MAP(entrada1,entrada2, auxand);
	G2: QOr PORT MAP(entrada1,entrada2,auxor);
	G3: QNot PORT MAP(entrada1,auxnot);
	G4: QXor PORT MAP(entrada1,entrada2,auxxor);
	G5: QNand PORT MAP(entrada1,entrada2,auxnand);
	G6: QShiftd PORT MAP(entrada1,auxshiftd);
	G7: QShifte PORT MAP(entrada1,auxshifte);
	G8: Sum PORT MAP(entrada1,entrada2,auxsum);
	G9: Sub PORT MAP (entrada1,entrada2,auxsub);
	G10: Multiplexador9x1 PORT MAP(auxand, auxor, auxnot, auxxor,auxnand, auxshiftd, auxshifte ,auxsum, auxsub,flag,saida);
	
	
	
END behavior;