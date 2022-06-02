library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.NUMERIC_STD.all;

entity Alu is
 Port (
    a, b     : in  STD_LOGIC_VECTOR(15 downto 0); 
    op  : in  STD_LOGIC_VECTOR(1 downto 0); 
    result   : out  STD_LOGIC_VECTOR(15 downto 0)
    );
end Alu;

architecture Behavioral of Alu is

begin

 with op select
             result <= a+b when "00",
                       std_logic_vector(to_unsigned((to_integer(unsigned(a)) * to_integer(unsigned(b))),16)) when "01",
                 "1111111111111111" when "10",
                "1111111111111111"  when "11";

end Behavioral;
