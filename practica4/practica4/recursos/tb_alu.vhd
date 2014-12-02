----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:54:18 12/01/2014 
-- Design Name: 
-- Module Name:    tb_alu - Behavioral 
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

entity tb_alu is
end tb_alu;

architecture Behavioral of tb_alu is
COMPONENT alu
    port(
		A: in std_logic_vector(6 downto 0);
		B: in std_logic_vector(6 downto 0);
		operation: in std_logic;
		data_out: out std_logic_vector(6 downto 0)
	 );
    END COMPONENT;
    

   --Inputs
	signal aux_clk : std_logic := '0';
   signal aux_A : std_logic_vector(6 downto 0);
   signal aux_B : std_logic_vector(6 downto 0);
   signal aux_operation : std_logic := '0';

 	--Outputs
   signal aux_data_out : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu PORT MAP (
          A => aux_A,
          B => aux_B,
			 operation => aux_operation,
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
      aux_A <= "0000111";
		aux_B <= "0011100";
		aux_operation <= '0';
		--       "0100011"
		wait for 20 ns;	
		aux_A <= "0100111";
		aux_B <= "0011100";
		aux_operation <= '1';
		--       "0001011"
		wait for 20 ns;	
		aux_A <= "0010111";
		aux_B <= "0011100";
		aux_operation <= '0';
		wait for 20 ns;	

		
      wait;
   end process;

END;