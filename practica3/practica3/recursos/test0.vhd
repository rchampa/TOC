----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:18:59 11/07/2014 
-- Design Name: 
-- Module Name:    test0 - Behavioral 
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

entity test0 is
end test0;

architecture Behavioral of test0 is

	component adder
	port( a 	: in std_logic_vector(7 downto 0);
			b 	: in std_logic_vector(7 downto 0);
			ci	: in std_logic;
			sum: out std_logic_vector(7 downto 0);
			co	: out std_logic);
	end component;
	
	
	--Inputs
   signal aux_a : std_logic_vector(7 downto 0);
	signal aux_b : std_logic_vector(7 downto 0);
	signal aux_ci : std_logic;

 	--Outputs
   signal aux_sum : std_logic_vector(7 downto 0);
	signal aux_co : std_logic;

begin

	-- Instantiate the Unit Under Test (UUT)
   uut: adder PORT MAP (aux_a,aux_b,aux_ci,aux_sum,aux_co);
 

   -- Stimulus process
   stim_proc: process
   begin		
      aux_a <= "00001000";
		aux_b <= "00000010";
		aux_ci <= '0';
		wait for 20 ns;	
		
		
      wait;
   end process;



end Behavioral;

