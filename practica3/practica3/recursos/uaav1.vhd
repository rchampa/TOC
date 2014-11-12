----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:49:05 11/12/2014 
-- Design Name: 
-- Module Name:    uaav1 - rtl 
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

entity uaav1 is
		generic (n: natural := 4);
		port( ci	: in std_logic;
				g 	: in std_logic_vector(n-1 downto 0);
				p 	: in std_logic_vector(n-1 downto 0);
				cout	: out std_logic_vector(n downto 1)
		);
end uaav1;

architecture rtl of uaav1 is

begin

	genuaav1: for i in 0 to n-1 generate
 		u: cout(i+1) <= g(i) or p(i) and ci;
	end generate genuaav1;
	
end rtl;

