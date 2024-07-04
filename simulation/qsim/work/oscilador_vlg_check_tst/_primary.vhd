library verilog;
use verilog.vl_types.all;
entity oscilador_vlg_check_tst is
    port(
        counter0_saida  : in     vl_logic_vector(19 downto 0);
        counter2_saida  : in     vl_logic_vector(19 downto 0);
        ddd_q           : in     vl_logic;
        saida           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end oscilador_vlg_check_tst;
