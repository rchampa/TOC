----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:32:13 12/01/2014 
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
	PORT(	a      : IN std_logic_vector(n DOWNTO 0); 
			b      : IN std_logic_vector(n DOWNTO 0); 
			sel    : IN std_logic; 
			salida : OUT std_logic_vector(n DOWNTO 0));
end mux;

architecture Behavioral of mux is

begin

	salida <=	a when sel='0' else
					b when sel='1' else
					(others => '0');
end Behavioral;

