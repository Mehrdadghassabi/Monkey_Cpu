LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

    COMPONENT Monkey
    Port (
    clk: in  std_logic;
    rst: in std_logic;
    pc: in std_logic_vector(15 downto 0)
    );
    END COMPONENT;
        
	signal clk : std_logic := '0';
	signal rst : std_logic := '0';
   signal pc : std_logic_vector(15 downto 0) := x"0000";

 
  BEGIN

         uut: Monkey PORT MAP (
          clk => clk,
			 rst => rst,
          pc => pc
        );


      stim_proc: process
   begin		

    wait for 40 ns;
	 clk <= '0' ;
	 rst <= '0' ;
    pc <= "0000000000000001";
 
   wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <= "0000000000000011";
    

   end process;


  END;

