library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        s               : in     vl_logic_vector(1 downto 0);
        s1              : in     vl_logic;
        cin             : in     vl_logic;
        cout            : out    vl_logic;
        f               : out    vl_logic_vector(4 downto 0)
    );
end ALU;
