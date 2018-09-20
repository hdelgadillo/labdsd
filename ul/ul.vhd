library ieee;
use ieee.std_logic_1164.all;

entity ul is 

port(a,b: in std_logic_vector(3 downto 0);
		f1: out std_logic_vector(4 downto 0);
		s: in bit_vector(1 downto 0));
	
END UL;

architecture ul_behavior of ul is

signal SAND, SOR, SXOR, SNOT: std_logic_vector(3 downto 0);
begin

	SAND <= A and B;
	SOR <= a or b;
	SXOR <= A xor B;
	SNOT <= NOT A;
with s select F1 <=
	
	('0' & SAND) when "00",
	('0' & SOR) when "01",
	('0' & SXOR) when "10",
	('0' & SNOT) when "11";
	--'0' when others;
	
end UL_behavior;