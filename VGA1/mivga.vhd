library ieee;
use ieee.std_logic_1164.all;

entity mivga is
port(
 input_clk		:  in std_logic;  --for this example is 50MHz
 pixel_clk		: out std_logic;  --monitor del reloj a 25MHz
 red			: out std_logic_vector (3 downto 0);
 green			: out std_logic_vector (3 downto 0);
 blue			: out std_logic_vector (3 downto 0);
 n_sync			: out std_logic;
 --n_blank		: out std_logic;
 --h_sync			: out std_logic;
  h_sync : out std_logic;
 v_sync			: out std_logic);

end entity mivga;

architecture behavioral of mivga is
signal pix_clock : STD_LOGIC;
signal disp_ena  : STD_LOGIC;  --display enable ('1' = display time, '0' = blanking time)
signal column    : INTEGER;    --horizontal pixel coordinate
signal row       : INTEGER;    --vertical pixel coordinate

begin

pixel_clk<=pix_clock;

u1: entity work.PLL25MHz(rtl)  port map(input_clk,'0',  pix_clock);
												
u2: entity work.vga_controller (behavior) port map (	pix_clock,'1',h_sync,v_sync,disp_ena,column,row);									
u3: entity work.hw_image_generator (behavior) port map (	disp_ena,row,column,	red,green,blue);
end architecture behavioral;