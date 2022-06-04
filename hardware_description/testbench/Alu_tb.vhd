LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.NUMERIC_STD.all;

 
ENTITY Alu_tb IS
END Alu_tb;
 
ARCHITECTURE behavior OF Alu_tb IS 
 

 
    COMPONENT Alu
    PORT(
   a, b     : in  STD_LOGIC_VECTOR(15 downto 0); 
    op  : in  STD_LOGIC_VECTOR(1 downto 0); 
    result   : out  STD_LOGIC_VECTOR(15 downto 0)
        );
    END COMPONENT;
    
 
 

   
  signal a : std_logic_vector(15 downto 0) := "0000000000000000";
  signal b : std_logic_vector(15 downto 0) := "0000000000000000";
  signal op : std_logic_vector(1 downto 0) :="00";
   signal result : std_logic_vector(15 downto 0) ;
BEGIN

  uut: Alu PORT MAP (
          a => a,
          b => b,
       op => op,
          result=> result
        );
  
 

   stim_proc: process
   begin    
 
    wait for 300 ns;
     a <= "0000000000010100";
     b <= "0000000001010111";
    op <= "01";

    wait for 40 ns; 
    a <= "0000100100100111";
     b <= "1011001101101100";
    op <= "10";

   wait for 40 ns;
   a <= "1111000011010011";
    b <= "1110100100100110";
   op <= "11";

  wait for 40 ns;
    a <= "0010011010010111";
    b <= "1111000011101110";
   op <= "00";
   
   wait for 40 ns;
     a <= "0000000000000000";
     b <= "0000111100001111";
    op <= "11";

   wait for 40 ns;
   a <= "0011010010010101";
    b <= "1110001011010001";
   op <= "00";
   
   wait for 40 ns;
   a <= "1111111111111111";
    b <= "0000101011010100";
   op <= "10";
 
 
    
   end process;

END;
