library ieee;
use ieee.std_logic_1164.all;
entity bdc7seg is
port(
bcd: in std_logic_vector(1 downto 0);
led: out std_logic_vector(6 downto 0)
);

end bdc7seg;
architecture arcbdc7seg of bdc7seg is

begin

with bcd select 

LED <= "0000001" when "00",
		 "1001111" when "01",
		 "0010010" when "10",
		 "0000110" when "11",
		 "1111111" when others;

		 end arcbdc7seg;
		 
