library ieee;
use ieee.std_logic_1164.all;

entity sum is 

port(a: in std_logic_vector(2 downto 0);
	  f: out std_logic_vector(1 downto 0));
	  
	  end sum;
	  
architecture arqsum of sum is 
begin
with a select

f<= "00" when "000",
	 "10" when "001",
	 "10" when "010",
	 "01" when "011",
	 "10" when "100",
	 "01" when "101",
	 "01" when "110",
	 "11" when "111",
	 "00" when others;
end architecture arqsum;