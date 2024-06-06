library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Definição da entidade
entity contador_sem_overflow is
    Port (
        clock   : in  std_logic;
        reset   : in  std_logic;
        enable  : in  std_logic;
        count   : out std_logic_vector(19 downto 0)
    );
end contador_sem_overflow;

-- Arquitetura
architecture Behavioral of contador_sem_overflow is
    signal internal_count : std_logic_vector(19 downto 0) := (others => '0');
begin
    process(clock, reset)
    begin
        if reset = '1' then
            internal_count <= (others => '0');
        elsif rising_edge(clock) then
            if enable = '1' then
                if internal_count = "1111111111111111111" then
                    internal_count <= (others => '1'); -- Evita overflow
                else
                    internal_count <= std_logic_vector(unsigned(internal_count) + 1);
                end if;
            end if;
        end if;
    end process;

    count <= internal_count;

end Behavioral;
