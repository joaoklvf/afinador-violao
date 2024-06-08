library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Definição da entidade
entity contador_sem_overflow is
    Port (
        clock   : in  std_logic;
        count   : out std_logic_vector(19 downto 0);
        sync_clear   : in  boolean
    );
end contador_sem_overflow;

-- Arquitetura
architecture Behavioral of contador_sem_overflow is
    signal internal_count : std_logic_vector(19 downto 0) := (others => '0');
begin
    process(clock)
    begin        
        if falling_edge(clock) then
          if(sync_clear) then
            internal_count <= "00000000000000000000";
          end if;
          if internal_count /= "1111111111111111111" then
               internal_count <= std_logic_vector(unsigned(internal_count) + 1);
          end if;
        end if ;
    end process;

    count <= internal_count;

end Behavioral;
