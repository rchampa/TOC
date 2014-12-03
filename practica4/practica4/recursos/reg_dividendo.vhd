----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:17:55 12/01/2014 
-- Design Name: 
-- Module Name:    reg_dividendo - Behavioral 
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

entity reg_dividendo is
	generic (n: natural := 6);
	port(
		clk,rst,load: in std_logic;
		data_in: in std_logic_vector(n downto 0);
		data_out: inout std_logic_vector(n downto 0);
		msb_negated : out std_logic
	);
end reg_dividendo;

architecture Behavioral of reg_dividendo is

begin

	SYNC: process(clk)
	begin
		if clk'event and clk='1' then 
			if rst = '1' then
				data_out <= (OTHERS =>'0');
				msb_negated <= '1';
			elsif	load='1'	then	
				data_out <= data_in;	
				msb_negated <= data_in(n);
			else
				data_out <= data_out;
				msb_negated <= data_out(n);
			end if;
			
		end if;
		
	end process SYNC;

end Behavioral;

