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
    pc: in std_logic_vector(15 downto 0);
	 res: out std_logic_vector(15 downto 0);
	 dati: out std_logic_vector(31 downto 0);
	 write_en: out std_logic;
	 write_dest: out std_logic_vector(1 downto 0);
	 write_data: out std_logic_vector(15 downto 0);
	 read_addr_1: out std_logic_vector(1 downto 0);
	 read_addr_2: out std_logic_vector(1 downto 0);
	 read_data_1: out std_logic_vector(15 downto 0);
	 read_data_2: out std_logic_vector(15 downto 0);
	 opo: out std_logic_vector(1 downto 0)
    );
    END COMPONENT;
        
	signal clk : std_logic := '0';
	signal rst : std_logic := '0';
   signal pc : std_logic_vector(15 downto 0) := x"0000";
	signal res : std_logic_vector(15 downto 0) ;
	signal dati: std_logic_vector(31 downto 0);
	signal write_en: std_logic;
	signal write_dest: std_logic_vector(1 downto 0);
	signal write_data: std_logic_vector(15 downto 0);
	signal read_addr_1: std_logic_vector(1 downto 0);
	signal read_addr_2: std_logic_vector(1 downto 0);
	signal read_data_1: std_logic_vector(15 downto 0);
	signal read_data_2:  std_logic_vector(15 downto 0);
	signal opo:  std_logic_vector(1 downto 0);

 
  BEGIN

         uut: Monkey PORT MAP (
          clk => clk,
			 rst => rst,
          pc => pc,
			 res => res,
			 dati => dati,
			 write_en => write_en,
			 write_dest => write_dest,
			 write_data => write_data,
			 read_addr_1 => read_addr_1 ,
			 read_addr_2 => read_addr_2,
			 read_data_1 => read_data_1,
			 read_data_2 => read_data_2,
			 opo => opo
        );


      stim_proc: process
   begin		

    wait for 40 ns;
	 clk <= '0' ;
	 rst <= '0' ;
    pc <= "0000000000000000";
 
   wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000000001";
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000000010";
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000000011";
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000000100";
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000000101";
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000000110";
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000000111";
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000001000";
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000001001";
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000001010";
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000001011";
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000001100";
    
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000001101";
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000001110";

   wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000001111";
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000010000";
	

	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000010001";
	
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000010010";
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000010011";
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000010100";
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000010101";
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000010110";
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000010111";
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000011000";
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000011001";
	
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000011010";
	
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000011011";
	
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000011100";
	
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000011101";
	
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000011110";
	
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000011111";
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000100000";
	
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000100001";
	
   wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000100010";
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000100011";
	
	wait for 40 ns;
	clk <= '0' ;
	rst <= '0' ;
   pc <=  "0000000000100100";
	
	wait for 40 ns;
	clk <= '1' ;
	rst <= '0' ;
   pc <=  "0000000000100101";
	
	
   end process;


  END;

