library ieee;
USE ieee.std_logic_1164.all;

entity ALU is
port(a,b: in std_logic_vector(3 downto 0);
		s: in std_logic_vector(1 downto 0);
		s1: in std_logic;
		cin: in std_logic;
		cout: out std_logic;
		f:out std_logic_vector(4 downto 0));
		
end entity ALU;
architecture arqALU of ALU is

signal cable2: std_logic_vector(4 downto 0);
signal cable3: std_logic_vector(4 downto 0);
begin 
u1: entity work.ua(arqua) port map (a,b,s,cin,cout,cable2);
u2: entity work.ul(ul_behavior) port map (a,b,cable3,s);
u3: entity work.mux2x1(arq_mux2x1) port map (cable2,cable3,s1,f);


end architecture arqALU;
		