library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity top is

Port( clkl: in std_logic;
		reset : in std_logic;
		rx : in std_logic;

		rx_done_tick : out std_logic;
		dout : out std_logic_vector( 7 downto 0)
		);
end top;

architecture arqtop of top is

signal conector: std_logic;


begin 

u1: entity work.RELOJLENTO(ARQRELOJLENTO) port map (clkl, conector);
u2: entity work.uart_rx(arch) port map (clkl,reset,rx, conector,rx_done_tick,dout);


end arqtop;