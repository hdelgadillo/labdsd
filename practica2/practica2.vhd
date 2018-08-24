library IEEE;
use ieee.std_logic_1164.all;

entity practica2 is
	port (a,b,c: in std_logic; f: OUT std_logic);
END entity practica2;

architecture arqpractica2 of practica2 is
signal cable1,cable2 : std_logic;

begin

u1: entity work.cor(arqcor) port map (a,b,cable1);
u2: entity work.cor(arqcor) port map (a,b,cable2);
u3: entity work.cand(arqcand) port map (cable1,cable2,f);
end architecture arqpractica2;