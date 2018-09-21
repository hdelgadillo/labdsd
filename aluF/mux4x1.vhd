library ieee;
use ieee.std_logic_1164.all;
entity mux4x1 is
port(b: in std_logic_vector(3 downto 0);
s: in std_logic_vector(1 downto 0);
salmux :  out std_logic_vector(3 downto 0));

end mux4x1;

architecture arq_mux4x1 of mux4x1 is

begin 
with s select
salmux<= "0000"  when "00",
			      b when "01",
			(not b) when "10",
			 "1111" when "11",
			 "0000" when others;
end arq_mux4x1;