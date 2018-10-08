library ieee;
use ieee.std_logic_1164.all;

entity miflipT is
port( clk: in std_logic;
		T: in std_logic;
		q: inout std_logic);
end entity;
architecture arqmiflipT of miflipT is

begin

u1: entity work.miflipjk(arqmiflipjk) port map (clk, T,T,Q,'0');
end architecture;
