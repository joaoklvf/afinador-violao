library verilog;
use verilog.vl_types.all;
entity afinador_violao_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        entrada         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end afinador_violao_vlg_sample_tst;
