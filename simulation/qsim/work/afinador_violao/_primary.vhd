library verilog;
use verilog.vl_types.all;
entity afinador_violao is
    port(
        afinado         : out    vl_logic;
        clock           : in     vl_logic;
        clock9          : in     vl_logic;
        up              : in     vl_logic;
        down            : in     vl_logic;
        afinar          : in     vl_logic;
        afrouxe_muito   : out    vl_logic;
        afrouxe_pouco   : out    vl_logic;
        aperte_pouco    : out    vl_logic;
        aperte_muito    : out    vl_logic;
        saida_oscilador : out    vl_logic
    );
end afinador_violao;
