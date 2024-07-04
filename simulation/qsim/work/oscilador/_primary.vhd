library verilog;
use verilog.vl_types.all;
entity oscilador is
    port(
        saida           : out    vl_logic;
        clock           : in     vl_logic;
        afinar          : in     vl_logic;
        up_down         : in     vl_logic;
        enable          : in     vl_logic;
        ddd_q           : out    vl_logic;
        counter0_saida  : out    vl_logic_vector(19 downto 0);
        counter2_saida  : out    vl_logic_vector(19 downto 0)
    );
end oscilador;
