library ieee;
use ieee.std_logic_1164.all;
entity fft is
port(clk: in std_logic;
sq0,sq1,sq2,sq3: out std_logic);
end entity; 

architecture arqfft of fft is
signal T0,T1,T2,T3,q0,q1,q2,q3 : std_logic;
begin
T0<='1';
T1<=q1 or  q0;
T2<=(q2 and not(q0)) or (q2 and not(q1)) or (not(q2) and q1 and q0);
T3<= q3;

u1: entity work.miflipT(arqmiflipT) port map(clk, T0,q0);
u2: entity work.miflipT(arqmiflipT) port map (clk,T1,q1);
u3: entity work.miflipT(arqmiflipT) port map (clk,T2,q2);
u4: entity work.miflipT(arqmiflipT) port map (clk,T3,q3);
sq3<=q3;
sq2<=q2;
sq1<=q1;
sq0<=q0;
end architecture; 