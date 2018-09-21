library ieee;
use ieee.std_logic_1164.all;
entity mux2x1 is
port(a: in std_logic_vector(4 downto 0);
		b: in std_logic_vector(4 downto 0);
s: in std_logic;
salmux :  out std_logic_vector(4 downto 0));

end mux2x1;

architecture arq_mux2x1 of mux2x1 is

begin 
with s select
salmux<= a  when '0',
			b when '1',
			a when others;
end arq_mux2x1;