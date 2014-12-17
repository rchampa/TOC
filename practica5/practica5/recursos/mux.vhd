----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:31:06 12/16/2014 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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

entity mux is
	generic (n: natural := 6);
	port (
		x: in std_logic_vector (n-1 downto 0);
	   y: in std_logic_vector (n-1 downto 0);
		z: in std_logic;
		do: out std_logic_vector (n-1 downto 0)
	);
end mux;

architecture Behavioral of mux is

begin

	do <=	x when z='0' else
			y when z='1' else
			(others => '0');

end Behavioral;

