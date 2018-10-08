library verilog;
use verilog.vl_types.all;
entity contador3bits is
    port(
        relog           : in     vl_logic;
        reset           : in     vl_logic;
        salcuenta       : out    vl_logic_vector(3 downto 0)
    );
end contador3bits;
