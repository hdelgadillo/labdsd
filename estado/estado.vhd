library ieee;
USE ieee.std_logic_1164.all;

entity estado is
port(clkl: in std_logic;
reset : in std_logic;
count : out std_logic_vector(1 downto 0));


		
		
end entity estado;
architecture arqestado of estado is

signal cable1: std_logic;
begin 
u1: entity work.relojlento(arqrelojlento) port map (clkl,cable1);
u2: entity work.conta(arqconta) port map (cable1,reset,count);



end architecture arqestado;
		