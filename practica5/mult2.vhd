library ieee;
use ieee.std_logic_1164.all;

entity mult2 is
port( a0,a1,b0,b1: in std_logic_vector(1 downto 0);
		pr1,pr2,pr3: out std_logic_vector(1 downto 0);

		cout: out std_logic);
end entity mult2;

architecture arq_mult2 of mult2 is

signal a0b0, a1b0, a0b1, a1b1 : std_logic_vector(1 downto 0);
signal cint: std_logic;
begin 
a0b0 <=a0 and b0;
a1b0 <= a1 and b0;
a0b1 <= a0 and b1;
a1b1 <= a1  and b1;

pr1<= a0b0;

u1: entity work. sum2(arqsum2) port map (a1b0,a0b1,'0',pr2,cint);
u2: entity work. sum2(arqsum2) port map (a1b1,"00",cint,pr3,cout);

end architecture arq_mult2;