

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_soma4 is
--  Port ( );
end tb_soma4;

architecture Behavioral of tb_soma4 is

component soma4 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           CIN : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           COUT : out STD_LOGIC);
end component;

signal s_A, s_B, s_S: STD_LOGIC_VECTOR(3 downto 0);
signal subtracao, overflow: STD_LOGIC;

begin

uuu: soma4 port map(A=> s_A, B=> s_B, cin => subtracao, s=>s_S, cout=>overflow);

stimulus: process
begin
s_A<="1111"; s_B<="1001"; subtracao<='0';
wait for 10ns;

s_A<="1111"; s_B<="1101"; subtracao<='1';
wait for 10ns;

end process;

end Behavioral;
