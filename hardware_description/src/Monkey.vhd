library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Monkey is
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
end Monkey;

architecture Behavioral of Monkey is
component Rom
port (
 pc: in std_logic_vector(15 downto 0);
 result   : in  STD_LOGIC_VECTOR(15 downto 0);
 datins: out  std_logic_vector(31 downto 0)
);
end component;
component ControlUnit
port (
    datins: in  std_logic_vector(31 downto 0);
    reg_write_en: out std_logic;
    reg_write_dest: out std_logic_vector(1 downto 0);
    reg_write_data: out std_logic_vector(15 downto 0);
    reg_read_addr_1: out std_logic_vector(1 downto 0);
    reg_read_addr_2: out std_logic_vector(1 downto 0);
	 op: out std_logic_vector(1 downto 0)
    );
end component;

component Alu
Port (
    a, b     : in  STD_LOGIC_VECTOR(15 downto 0); 
    op  : in  STD_LOGIC_VECTOR(1 downto 0); 
    result   : out  STD_LOGIC_VECTOR(15 downto 0)
    );
end component;

component Register_Bank
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
end component;

signal result : STD_LOGIC_VECTOR(15 downto 0);
signal datins : STD_LOGIC_VECTOR(31 downto 0);
signal reg_write_en : STD_LOGIC;
signal reg_write_dest : STD_LOGIC_VECTOR(1 downto 0);
signal reg_write_data : STD_LOGIC_VECTOR(15 downto 0);
signal reg_read_addr_1 : STD_LOGIC_VECTOR(1 downto 0);
signal reg_read_addr_2 : STD_LOGIC_VECTOR(1 downto 0);
signal reg_read_data_1 : STD_LOGIC_VECTOR(15 downto 0);
signal reg_read_data_2 : STD_LOGIC_VECTOR(15 downto 0);
signal op : STD_LOGIC_VECTOR(1 downto 0);


begin

a0 : Rom port map(pc,result,datins);

a1 : ControlUnit port map(datins,reg_write_en,reg_write_dest,reg_write_data,reg_read_addr_1,reg_read_addr_2,op);

a2 : Alu port map(reg_read_data_1,reg_read_data_2,op,result);

a3 : Register_Bank port map(clk,rst,reg_write_en,reg_write_dest,reg_write_data,reg_read_addr_1,reg_read_data_1,reg_read_addr_2,reg_read_data_2);

res <= result ;
dati <= datins;
write_en <= reg_write_en;
write_dest <= reg_write_dest;
write_data <= reg_write_data;
read_addr_1 <= reg_read_addr_1;
read_addr_2 <= reg_read_addr_2;
read_data_1 <= reg_read_data_1;
read_data_2 <= reg_read_data_1;
opo <= op ;

end Behavioral;


