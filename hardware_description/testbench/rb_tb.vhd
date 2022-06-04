LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.NUMERIC_STD.all;
 
ENTITY rb_tb IS
END rb_tb;
 
ARCHITECTURE behavior OF rb_tb IS 
 
 
    COMPONENT Register_Bank
    PORT(
         clk:  IN  std_logic;
			rst:  IN  std_logic;
         reg_write_en : IN  std_logic;
         reg_write_dest : IN  std_logic_vector(1 downto 0);
         reg_write_data : IN  std_logic_vector(15 downto 0);
         reg_read_addr_1 : IN  std_logic_vector(1 downto 0);
         reg_read_data_1 : OUT  std_logic_vector(15 downto 0);
         reg_read_addr_2 : IN  std_logic_vector(1 downto 0);
         reg_read_data_2 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    
   signal clk : std_logic := '0';
	signal rst : std_logic := '0';
   signal reg_write_en : std_logic := '0';
   signal reg_write_dest : std_logic_vector(1 downto 0) := "00";
   signal reg_write_data : std_logic_vector(15 downto 0) := "0000000000000000" ;
   signal reg_read_addr_1 : std_logic_vector(1 downto 0) := "00";
   signal reg_read_addr_2 : std_logic_vector(1 downto 0) := "00";
   signal reg_read_data_1 : std_logic_vector(15 downto 0);
   signal reg_read_data_2 : std_logic_vector(15 downto 0);
  

 
 
BEGIN
 
   uut: Register_Bank PORT MAP (
          clk => clk,
			 rst => rst,
          reg_write_en => reg_write_en,
          reg_write_dest => reg_write_dest,
          reg_write_data => reg_write_data,
          reg_read_addr_1 => reg_read_addr_1,
          reg_read_data_1 => reg_read_data_1,
          reg_read_addr_2 => reg_read_addr_2,
          reg_read_data_2 => reg_read_data_2
        );



   stim_proc: process
   begin    
 
    wait for 300 ns;
    clk <= '0';
	 rst <= '1';
    reg_write_en <= '0';
    reg_write_dest <= "01";
    reg_write_data <= "0000000000010100";
    reg_read_addr_1 <= "00";
    reg_read_addr_2 <= "01";


    wait for 40 ns; 
    clk <= '1';
	 rst <= '0';
    reg_write_en <= '0';
    reg_write_dest <= "01";
    reg_write_data <= "0000000000010100";
    reg_read_addr_1 <= "00";
    reg_read_addr_2 <= "01";

   wait for 40 ns;
    clk <= '0';
	 rst <= '0';
    reg_write_en <= '0';
    reg_write_dest <= "11";
    reg_write_data <= "0000000000010111";
    reg_read_addr_1 <= "10";
    reg_read_addr_2 <= "01";

  wait for 40 ns;
    clk <= '1';
	 rst <= '0';
    reg_write_en <= '0';
    reg_write_dest <= "01";
    reg_write_data <= "0000000000011100";
    reg_read_addr_1 <= "00";
    reg_read_addr_2 <= "11";
   
   wait for 40 ns;
    clk <= '0';
	 rst <= '0';
    reg_write_en <= '0';
    reg_write_dest <= "01";
    reg_write_data <= "0000000000010111";
    reg_read_addr_1 <= "10";
    reg_read_addr_2 <= "01";
 
 
    
   end process;

END;
