library verilog;
use verilog.vl_types.all;
entity miflip is
    port(
        clk             : in     vl_logic;
        s0              : out    vl_logic;
        s1              : out    vl_logic;
        s2              : out    vl_logic;
        s3              : out    vl_logic
    );
end miflip;
