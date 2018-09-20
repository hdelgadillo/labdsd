library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.All;
use ieee.std_logic_unsigned.all;
entity sum2 is 
	port(A,B: in std_logic_vector(1 downto 0);
		  S:out std_logic_vector(2 downto 0);
		  Cin: in std_logic;
		  Cout: out std_logic);
end sum2;
architecture arqsum2 of sum2 is
signal C: std_logic_vector(2 downto 0);
begin

c<=('0' & a)+('0'&B)+cin;
cout<=c(1);
s<=c(2 downto 0);
end arqsum2;