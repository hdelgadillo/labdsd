library ieee;
use ieee.std_logic_1164.all;
entity ffjk is

port(clk: in std_logic;
sq3,sq2,sq1,sq0: out std_logic);
end entity;

architecture arqffk of ffjk is
signal k0,j0,k1,j1,k2,j2,j3,k3,q0,q1,q2,q3: std_logic;
begin 
j0<='1';
k0<='1';
j1<=q0;
k1<=q0;
j2<=q1 and q0;
k2<= q1 and q0;
j3<= q2 and q1 and q0;
k3<= q2 and q1;
u1: entity work.miflipjk(arqmiflipjk) port map(clk,j0,k0,q0,'0');
u2: entity work.miflipjk(arqmiflipjk) port map(clk,j1,k1,q1,'0');
u3: entity work.miflipjk(arqmiflipjk) port map(clk,j2,k2,q2,'0');
u4: entity work.miflipjk(arqmiflipjk) port map(clk,j3,k3,q3,'0');
sq3<=q3;
sq2<=q2;
sq1<=q1;
sq0<=q0;

end architecture;