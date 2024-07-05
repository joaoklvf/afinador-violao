library verilog;
use verilog.vl_types.all;
entity afinador_violao_vlg_sample_tst is
    port(
        afinar          : in     vl_logic;
        clock           : in     vl_logic;
        clock9          : in     vl_logic;
        down            : in     vl_logic;
        up              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end afinador_violao_vlg_sample_tst;
