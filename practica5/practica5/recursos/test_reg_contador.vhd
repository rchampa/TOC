----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:59:48 12/14/2014 
-- Design Name: 
-- Module Name:    test_reg_contador - Behavioral 
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

entity test_reg_contador is
end test_reg_contador;

architecture Behavioral of test_reg_contador is
	COMPONENT reg_contador
   generic (N: natural:=6);
	port (clk,enable,reset: in std_logic;
		   data_out: out std_logic_vector (N-1 downto 0));
   END COMPONENT;
    

   --Inputs
	signal aux_clk : std_logic := '0';
   signal aux_enable : std_logic;
	signal aux_reset : std_logic;

 	--Outputs
   signal aux_data_out : std_logic_vector(6-1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg_contador PORT MAP (
          clk => aux_clk,
          enable => aux_enable,
			 reset => aux_reset,
			 data_out => aux_data_out
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
		aux_enable <= '0';
		wait for 20 ns;	
		aux_reset <= '0';
		aux_enable <= '1';
		
      wait;
   end process;

END;