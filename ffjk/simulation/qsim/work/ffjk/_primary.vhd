library verilog;
use verilog.vl_types.all;
entity ffjk is
    port(
        clk             : in     vl_logic;
        sq3             : out    vl_logic;
        sq2             : out    vl_logic;
        sq1             : out    vl_logic;
        sq0             : out    vl_logic
    );
end ffjk;
