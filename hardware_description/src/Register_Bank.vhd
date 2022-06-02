library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity Register_Bank is
port (
 clk : in std_logic;
 rst : in std_logic;
 reg_write_en: in std_logic;
 reg_write_dest: in std_logic_vector(1 downto 0);
 reg_write_data: in std_logic_vector(15 downto 0);
 reg_read_addr_1: in std_logic_vector(1 downto 0);
 reg_read_data_1: out std_logic_vector(15 downto 0);
 reg_read_addr_2: in std_logic_vector(1 downto 0);
 reg_read_data_2: out std_logic_vector(15 downto 0)
);
end Register_Bank;

architecture Behavioral of Register_Bank is
type reg_type is array (0 to 3 ) of std_logic_vector (15 downto 0);
signal regs : reg_type;

begin

 process(clk,rst) 
 begin
 if(rst='1') then
   regs(0) <= x"0001";
   regs(1) <= x"0002";
   regs(2) <= x"0003";
   regs(3) <= x"0004";
  elsif(rising_edge(clk)) then
   if(reg_write_en='1') then
    regs(to_integer(unsigned(reg_write_dest))) <= reg_write_data;
   end if;
 end if;
 end process;
 
 reg_read_data_1 <= regs(to_integer(unsigned(reg_read_addr_1)));
 reg_read_data_2 <= regs(to_integer(unsigned(reg_read_addr_2)));

end Behavioral;
