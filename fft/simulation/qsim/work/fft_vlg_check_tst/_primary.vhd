library verilog;
use verilog.vl_types.all;
entity fft_vlg_check_tst is
    port(
        sq0             : in     vl_logic;
        sq1             : in     vl_logic;
        sq2             : in     vl_logic;
        sq3             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end fft_vlg_check_tst;