library verilog;
use verilog.vl_types.all;
entity labthirdfirst is
    port(
        P               : out    vl_logic;
        Z               : in     vl_logic;
        K               : in     vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        A1              : in     vl_logic;
        B1              : in     vl_logic;
        S1              : out    vl_logic;
        S               : out    vl_logic
    );
end labthirdfirst;
