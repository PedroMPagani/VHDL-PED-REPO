library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity soma4 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           CIN : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           COUT : out STD_LOGIC);
end soma4;

architecture Behavioral of soma4 is

signal c0, c1, c2, b1,b2,b3,b4: STD_LOGIC;

component sum1 is
    Port ( a : in STD_LOGIC;
           b : buffer STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;

begin

b1 <= B(0) xor Cin;
b2 <= B(1) xor Cin;
b3 <= B(2) xor Cin;
b4 <= B(3) xor Cin;

soma1: sum1 port map (a=>A(0), b=>b1, cin=>Cin, s=>S(0), cout =>c0);
soma2: sum1 port map (a=>A(1), b=>b2, cin=>c0, s=>S(1), cout =>c1);
soma3: sum1 port map (a=>A(2), b=>b3, cin=>c1, s=>S(2), cout =>c2);
soma4: sum1 port map (a=>A(3), b=>b4, cin=>c2, s=>S(3), cout =>Cout);

end Behavioral;
