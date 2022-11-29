library verilog;
use verilog.vl_types.all;
entity labfourthsecond is
    port(
        clock           : in     vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end labfourthsecond;
