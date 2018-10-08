library ieee;
use ieee.std_logic_1164.all;
entity miflipjk is 
port( clk: in std_logic;
		j,k: in std_logic;
		q: inout std_logic;
		notq: inout std_logic);
end entity;

architecture arqmiflipjk of miflipjk is
begin
process(clk)
begin 
if rising_edge(clk)then
q<= (q and (not k)) or (not(q) and j);
notq<= not q;
end if;
end process;
end architecture;