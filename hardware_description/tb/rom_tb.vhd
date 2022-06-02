
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.NUMERIC_STD.all;
 
ENTITY rom_tb IS
END rom_tb;
 
ARCHITECTURE behavior OF rom_tb IS 
 
 
    COMPONENT Rom
    PORT(
         pc : IN  std_logic_vector(15 downto 0);
			result   : in  STD_LOGIC_VECTOR(15 downto 0);
         datins : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   signal pc : std_logic_vector(15 downto 0) := x"0001";
	signal result: STD_LOGIC_VECTOR(15 downto 0):=x"0000";
   signal datins : std_logic_vector(31 downto 0);
 
 
BEGIN
 
   uut: Rom PORT MAP (
          pc => pc,
			 result => result,
          datins => datins
        );

   stim_proc: process
   begin		

       wait for 40 ns;
    pc <= "0000000000000001";
	 result <= "0000000000000111";
 
   wait for 40 ns;
   pc <= "0000000000000011";
	result <= "0000000000000101";
    

   end process;

END;


