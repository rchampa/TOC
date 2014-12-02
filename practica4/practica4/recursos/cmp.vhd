----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:46:38 12/01/2014 
-- Design Name: 
-- Module Name:    cmp - Behavioral 
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

entity cmp is
	generic (n: natural := 6);
	PORT(	a      : IN std_logic_vector(n DOWNTO 0); 
			b      : IN std_logic_vector(n DOWNTO 0); 
			salida : OUT std_logic_vector(1 DOWNTO 0)
	);
end cmp;

architecture Behavioral of cmp is

begin

	salida <=	"01" when (unsigned(a)>unsigned(b)) else
					"10" when (unsigned(a)<unsigned(b)) else
					"00";

end Behavioral;

