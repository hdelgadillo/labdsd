library ieee;
USE ieee.std_logic_1164.all;

entity ua is
port(a,b: in std_logic_vector(3 downto 0);
		s: in std_logic_vector(1 downto 0);
		cin: in std_logic;
		cout: out std_logic;
		f:out std_logic_vector(4 downto 0));
		
end entity ua;
architecture arqua of ua is
signal cable1: std_logic_vector(3 downto 0);
begin 
u1: entity work.mux4x1(arq_mux4x1) port map (b,s,cable1);
u2: entity work.sum2(arqsum2) port map (a,cable1,f,cin,cout);


end architecture arqua;
		
		