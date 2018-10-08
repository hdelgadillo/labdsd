library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity contadorASC is

Port( clkl: in std_logic;
		reset : in std_logic;
		salida : out std_logic_vector( 6 downto 0);
		x : in std_logic);
end contadorASC;

architecture arqcontadorASC of contadorASC is

signal conector: std_logic;
signal cable1: std_logic_vector(1 downto 0);

begin 

u1: entity work.RELOJLENTO(ARQRELOJLENTO) port map (clkl, conector);
u2: entity work.cuenta(arqcuenta) port map (conector,reset, cable1,x);
u3: entity work.bdc7seg(arcbdc7seg) port map (cable1, salida);

end arqcontadorASC;