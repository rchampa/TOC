----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:50:29 12/01/2014 
-- Design Name: 
-- Module Name:    tb_cmp - Behavioral 
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

entity tb_cmp is
end tb_cmp;

architecture Behavioral of tb_cmp is

	COMPONENT cmp
    PORT(	a      : IN std_logic_vector(6 DOWNTO 0); 
				b      : IN std_logic_vector(6 DOWNTO 0); 
				salida : OUT std_logic_vector(1 DOWNTO 0)
	);
    END COMPONENT;
    

   --Inputs
	signal aux_clk : std_logic := '0';
   signal aux_a : std_logic_vector(6 downto 0);
   signal aux_b : std_logic_vector(6 downto 0);

 	--Outputs
   signal aux_salida : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cmp PORT MAP (
          a => aux_a,
          b => aux_b,
			 salida => aux_salida
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
      aux_a <= "0000111";
		aux_b <= "0011100";
		--       "0100011"
		wait for 20 ns;	
		aux_a <= "0100111";
		aux_b <= "0011100";
		--       "0001011"
		wait for 20 ns;	
		aux_a <= "0010111";
		aux_b <= "0011100";
		wait for 20 ns;	

		
      wait;
   end process;

END;