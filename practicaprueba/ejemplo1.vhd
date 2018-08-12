library ieee;
use ieee.std_logic_1164.all;


entity ejemplo1 is
port (a: in std_logic;
		b: out std_logic);

end ejemplo1;

architecture arqejemplo1 of ejemplo1 is
begin

b<= not a;

end architecture arqejemplo1;