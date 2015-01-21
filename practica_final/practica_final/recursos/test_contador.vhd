----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:58:55 01/19/2015 
-- Design Name: 
-- Module Name:    test_contador - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_contador is
end test_contador;

architecture Behavioral of test_contador is
COMPONENT contador
   generic (N: natural:=5);
	port (clk,reset,ce,load,ud: in std_logic;
			din : in std_logic_vector (N-1 downto 0);
		   dout: out std_logic_vector (N-1 downto 0));
   END COMPONENT;
    

   --Inputs
	signal aux_clk : std_logic := '0';
	signal aux_reset : std_logic;
	signal aux_ce : std_logic;
	signal aux_load : std_logic;	
	signal aux_ud : std_logic;
	signal aux_din : std_logic_vector(4 downto 0);
	

 	--Outputs
   signal aux_dout : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: contador generic map (5) PORT MAP (
          clk => aux_clk,
			 reset => aux_reset,
			 ce => aux_ce,
			 load => aux_load,
			 ud => aux_ud,
			 din => aux_din,
			 dout => aux_dout
        );

   -- Clock process definitions
   clk_process :process
   begin
		aux_clk <= '0';
		wait for clk_period/2;
		aux_clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      aux_reset <= '1';
		aux_ud <= '0';
		wait for 10 ns;	
		aux_reset <= '0';
		aux_ud <= '1';
		aux_ce <= '1';
		wait for 60 ns;	
		aux_ud <= '0';
		wait for 80 ns;	
		aux_load <= '1';
		aux_din <= "01010";
		wait for 30 ns;	
		aux_load <= '0';
		aux_ud <= '1';
		wait for 20 ns;	
		aux_ce <= '0';
		wait for 30 ns;
		aux_reset <= '1';
		
      wait;
   end process;

END;