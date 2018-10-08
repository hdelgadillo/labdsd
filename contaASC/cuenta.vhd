library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity cuenta is
Port( divi: in std_logic;
		reset : in std_logic;
		salida : out std_logic_vector(1 downto 0);
		x : in std_logic);
end cuenta;
architecture arqcuenta of cuenta is 
signal cuenta: std_logic_vector( 1 downto 0):= "00";
begin 
process(reset, divi)

begin 
if rising_edge (divi) then

if x = '1' then
cuenta<= cuenta-1;
else 
cuenta<= cuenta+1;
end if;
end if;
if reset='1' then 
cuenta<="00";
end if;
SALIDA <= cuenta;
end process;
end arqcuenta; 