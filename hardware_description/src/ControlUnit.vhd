library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ControlUnit is
 Port (
    datins: in  std_logic_vector(31 downto 0);
    reg_write_en: out std_logic;
    reg_write_dest: out std_logic_vector(1 downto 0);
    reg_write_data: out std_logic_vector(15 downto 0);
    reg_read_addr_1: out std_logic_vector(1 downto 0);
    reg_read_addr_2: out std_logic_vector(1 downto 0);
	 op: out std_logic_vector(1 downto 0)
    );
end ControlUnit;

architecture Behavioral of ControlUnit is

begin
   reg_write_en <= datins(0) and datins(1);
	op <= datins(0) & datins(1);
	reg_write_dest <= datins(2) & datins(3);
	reg_write_data <= datins(8) & datins(9) & datins(10) & datins(11)
	& datins(12) & datins(13) & datins(14) & datins(15) & datins(16)
	& datins(17)& datins(18)& datins(19)& datins(20)& datins(21)& datins(22)& datins(23);
	
	reg_read_addr_1 <= datins(4) & datins(5);
	reg_read_addr_2 <= datins(6) & datins(7);

end Behavioral;
