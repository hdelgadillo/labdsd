library ieee;
use ieee.std_logic_1164.all;

entity crom is  
port(clk, reset, cs: in std_logic;
bus_datos: out std_logic_vector(6 downto 0));
end entity;

architecture arqcrom of crom is

signal cable_bus_dir: std_logic_vector(1 downto 0);
signal cableclk: std_logic;
begin 

u1: entity work.relojlento(arqrelojlento) port map (clk,cableclk);
u2: entity work.conta(arqconta) port map (cableclk, reset, cable_bus_dir);
u3: entity work.romlcd(arqromlcd) port map (cable_bus_dir,cs,bus_datos);
end arqcrom;
