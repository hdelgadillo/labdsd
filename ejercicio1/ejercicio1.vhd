library ieee;
use ieee.std_logic_1164.all;

entity ejercicio1 is 

port(a: in std_logic_vector(4 downto 0);
	  f: out std_logic);
	  
	  end ejercicio1;
	  
architecture arqejercicio1 of ejercicio1 is 
begin
with a select

f<= '1' when "11000",
	 '0' when "11100",
	 '1' when "11110",
	 '0' when "11111",
	 '0' when others;
end architecture arqejercicio1;