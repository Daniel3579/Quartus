library verilog;
use verilog.vl_types.all;
entity labthirdfirst_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        A1              : in     vl_logic;
        B               : in     vl_logic;
        B1              : in     vl_logic;
        K               : in     vl_logic;
        Z               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end labthirdfirst_vlg_sample_tst;
