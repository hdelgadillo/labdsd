library ieee;
use ieee.std_logic_1164.all;

entity tecla16 is 
port( 
row: in std_logic_vector(3 downto 0);
co10,co11,co12,co13: buffer std_logic;
led: out std_logic_vector(2 downto 0));

end tecla16;

architecture atecla of tecla16 is begin 

co10<='0'; co11<= '1'; co12<='1'; co13<='1';

with row select
Led <= "001" when "1110",
"010" when "1101",
"100" when "1011",
"000" when "0111",
"111" when others;

end atecla;
