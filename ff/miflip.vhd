library ieee;
use ieee.std_logic_1164.all;
entity miflip is
port( 
clk: in std_logic;
s0,s1,s2,s3: out std_logic);

end entity;
architecture arqmiflip of miflip is
signal d0, d1,d2,d3, q0, q1,q2,q3: std_logic;
begin 
d0<=not(q0);
d1<= (q1 AND not(q0)) or (not(q1) AND q0);
d2<= (q2 and not (q0)) or (q2 AND not(q1) )or (not(q2) and q1 and q0);
d3<=(q3 and not(q2)) or(q3 and not(q1)) or (q3 and q1 and not (q0)) or (not (q3) and q2 and q1 and q0);
u1: entity work.miflipd(arqmiflipd) port map (clk,d0,q0);
u2: entity work.miflipd(arqmiflipd) port map (clk,d1,q1);
u3: entity work.miflipd(arqmiflipd) port map (clk,d2,q2);
u4: entity work.miflipd(arqmiflipd) port map (clk,d3,q3);
s3<=q3;
s2<=q2;
s1<=q1;
s0<=q0;


end architecture;