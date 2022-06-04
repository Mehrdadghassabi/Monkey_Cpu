
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY cu_tb IS
END cu_tb;
 
ARCHITECTURE behavior OF cu_tb IS 
 
 
    COMPONENT ControlUnit
    Port (
    datins: in  std_logic_vector(31 downto 0);
    reg_write_en: out std_logic;
    reg_write_dest: out std_logic_vector(1 downto 0);
    reg_write_data: out std_logic_vector(15 downto 0);
    reg_read_addr_1: out std_logic_vector(1 downto 0);
    reg_read_addr_2: out std_logic_vector(1 downto 0);
	 op: out std_logic_vector(1 downto 0)
    );
    END COMPONENT;
    

   signal datins : std_logic_vector(31 downto 0) := "00001111000011110000111100001111";

   signal reg_write_en : std_logic;
   signal reg_write_dest : std_logic_vector(1 downto 0);
   signal reg_write_data : std_logic_vector(15 downto 0);
   signal reg_read_addr_1 : std_logic_vector(1 downto 0);
   signal reg_read_addr_2 : std_logic_vector(1 downto 0);
	signal op : std_logic_vector(1 downto 0);

 
BEGIN
 
   uut: ControlUnit PORT MAP (
          datins => datins,
          reg_write_en => reg_write_en,
          reg_write_dest => reg_write_dest,
          reg_write_data => reg_write_data,
          reg_read_addr_1 => reg_read_addr_1,
          reg_read_addr_2 => reg_read_addr_2,
			 op => op
        );


 

   stim_proc: process
   begin    
 
    wait for 300 ns;
     datins <= "00001111000011110000111100001111";


    wait for 40 ns; 
    datins <=  "00001111000011110000111101101111";


   wait for 40 ns;
  datins <=  "00001111000011110000111100101111";

 
 
    
   end process;

END;

