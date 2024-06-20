library ieee;
use ieee.std_logic_1164.all;

entity SaidasLed is
    port (
        A : in std_logic; -- menor 30
        B : in std_logic; -- menor 40
        C : in std_logic; -- maior 50
        D : in std_logic; -- maior 60
        LED1 : out std_logic;
        LED2 : out std_logic;
        LED3 : out std_logic;
        LED4 : out std_logic;
        LED5 : out std_logic
    );
end entity SaidasLed;

architecture behavioral of SaidasLed is
begin
    process (A, B, C, D)
    begin
        LED1 <= '0'; -- aperte muito
        LED2 <= '0'; -- aperte pouco
        LED3 <= '0'; -- afinado
        LED4 <= '0'; -- afrouxe pouco
        LED5 <= '0'; -- afrouxe muito

        if A = '0' and B = '0' and C = '0' and D = '0' then
            LED1 <= '0';
				LED2 <= '0';
				LED3 <= '0';
				LED4 <= '0';
				LED5 <= '0';
        end if;

        if D = '1' then
            LED1 <= '0';
				LED2 <= '0';
				LED3 <= '0';
				LED4 <= '0';
				LED5 <= '1';
        end if;
		  
		  
        if A = '1' then
            LED1 <= '1';
				LED2 <= '0';
				LED3 <= '0';
				LED4 <= '0';
				LED5 <= '0';
        end if;

        if A = '0' and B = '1' then
            LED1 <= '0';
				LED2 <= '1';
				LED3 <= '0';
				LED4 <= '0';
				LED5 <= '0';
        end if;

        if C = '1' and D = '0' then
            LED1 <= '0';
				LED2 <= '0';
				LED3 <= '0';
				LED4 <= '1';
				LED5 <= '0';
        end if;

        if B = '1' and C = '0' then
            LED1 <= '0';
				LED2 <= '0';
				LED3 <= '1';
				LED4 <= '0';
				LED5 <= '0';
        end if;
    end process;
end architecture behavioral;
