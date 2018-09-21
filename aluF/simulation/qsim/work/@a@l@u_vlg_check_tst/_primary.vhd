library verilog;
use verilog.vl_types.all;
entity ALU_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        f               : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALU_vlg_check_tst;
