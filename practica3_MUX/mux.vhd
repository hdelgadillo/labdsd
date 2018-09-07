library ieee;
use ieee.std_logic_1164.all;

entity mux is
	port ( SEL: in STD_LOGIC;
			 A: in STD_LOGIC;
			 B : in std_LOGIC;
			 F : out std_LOGIC);
end mux;

architecture arqmux of mux is 

begin 
	F<= A when (SEL = '1') else B;
	end arqmux;
	