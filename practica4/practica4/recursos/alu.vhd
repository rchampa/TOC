----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:43:08 12/01/2014 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity alu is
	generic (n: natural := 6);
	port(
		A: in std_logic_vector(n downto 0);
		B: in std_logic_vector(n downto 0);
		operation: in std_logic;
		data_out: out std_logic_vector(n downto 0)
	);
end alu;

architecture Behavioral of alu is

	
begin
	
	data_out <= std_logic_vector(unsigned(A)+unsigned(B)) when operation='0' else
					std_logic_vector(unsigned(A)-unsigned(B)) when operation='1' else
					(others => '0');

end Behavioral;

