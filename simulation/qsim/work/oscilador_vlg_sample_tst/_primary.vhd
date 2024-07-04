library verilog;
use verilog.vl_types.all;
entity oscilador_vlg_sample_tst is
    port(
        afinar          : in     vl_logic;
        clock           : in     vl_logic;
        enable          : in     vl_logic;
        up_down         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end oscilador_vlg_sample_tst;
