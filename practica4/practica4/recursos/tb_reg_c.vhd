----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:05:34 12/01/2014 
-- Design Name: 
-- Module Name:    tb_reg_c - Behavioral 
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

entity tb_reg_c is
end tb_reg_c;

architecture Behavioral of tb_reg_c is

	COMPONENT reg_c
    port(
		clk,rst,load: in std_logic;
		data_in: in std_logic;
		data_out: inout std_logic_vector(6 downto 0)
	 );
    END COMPONENT;
    

   --Inputs
   signal aux_clk : std_logic := '0';
   signal aux_rst : std_logic := '0';
   signal aux_load : std_logic := '0';
	signal aux_data_in : std_logic;

 	--Outputs
   signal aux_data_out : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg_c PORT MAP (
          clk => aux_clk,
          rst => aux_rst,
			 load => aux_load,
          data_in => aux_data_in,
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
      aux_rst <= '1';	
		wait for 20 ns;	
		aux_rst <= '0';
		aux_data_in <= '0';
		aux_load <= '1';
		wait for 20 ns;
		aux_data_in <= '0';
		wait for 20 ns;
		aux_data_in <= '1';
		wait for 20 ns;
		aux_data_in <= '1';
		wait for 20 ns;
		aux_data_in <= '0';
		wait for 20 ns;
		aux_load <= '0';
		wait for 20 ns;
		aux_data_in <= '1';
		wait for 20 ns;
		aux_data_in <= '0';
		wait for 20 ns;
		aux_load <= '1';
		wait for 20 ns;
		aux_data_in <= '0';		
		wait for 20 ns;
		aux_data_in <= '1';
		
      wait;
   end process;

END;