library verilog;
use verilog.vl_types.all;
entity contador3bits_vlg_sample_tst is
    port(
        relog           : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contador3bits_vlg_sample_tst;
