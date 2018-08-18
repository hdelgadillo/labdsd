library ieee;
use ieee.std_logic_1164.all;

entity tabla is 

port(a: in std_logic_vector(1 downto 0);
	  f: out std_logic);
	  
	  end tabla;
	  
architecture arq_tabla of tabla is 
begin
with a select

f<= '0' when "00",
	 '0' when "11",
	 '1' when others;
end architecture arq_tabla;