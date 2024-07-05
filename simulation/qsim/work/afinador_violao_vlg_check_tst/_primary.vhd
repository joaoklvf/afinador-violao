library verilog;
use verilog.vl_types.all;
entity afinador_violao_vlg_check_tst is
    port(
        afinado         : in     vl_logic;
        afrouxe_muito   : in     vl_logic;
        afrouxe_pouco   : in     vl_logic;
        aperte_muito    : in     vl_logic;
        aperte_pouco    : in     vl_logic;
        saida_oscilador : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end afinador_violao_vlg_check_tst;
