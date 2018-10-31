library ieee;
use ieee.std_logic_1164.all;

entity PLL25MHz is
port(input_clock : in std_logic;
		reset : in std_logic;
		output_clock : out std_logic);
end entity;

architecture rtl of PLL25MHz is
signal temporal: STD_LOGIC;
begin
    frequency_divider: process (reset, input_clock) begin
        if (reset = '1') then
            temporal <= '0';
        elsif rising_edge(input_clock) then
                temporal <= NOT(temporal);
        end if;
    end process;    
    output_clock <= temporal;
end architecture;
