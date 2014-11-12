----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:12:19 11/07/2014 
-- Design Name: 
-- Module Name:    sumador1bit - Behavioral 
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

entity sumador1bit is
	port( x 	: in std_logic;
			y 	: in std_logic;
			ci	: in std_logic;
			g	: out std_logic;
			p	: out std_logic;
			s	: out std_logic
	);
end sumador1bit;

architecture rtl of sumador1bit is

begin

	g <= x and y;
	p <= x xor y;
	s <= p xor ci;

end Behavioral;

