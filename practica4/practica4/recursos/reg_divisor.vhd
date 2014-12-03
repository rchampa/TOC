----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:39:09 12/01/2014 
-- Design Name: 
-- Module Name:    reg_divisor - Behavioral 
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

entity reg_divisor is
	generic (n: natural := 6);
	port(
		clk,rst,load,right_shift: in std_logic;
		data_in: in std_logic_vector(n downto 0);
		data_out: inout std_logic_vector(n downto 0)
	);
end reg_divisor;

architecture Behavioral of reg_divisor is

--signal store : std_logic_vector(n downto 0); 

begin

	SYNC: process(clk)
	begin
		if clk'event and clk='1' then 
			--aux <= data_out;
			if rst = '1' then
				data_out <= (OTHERS =>'0');
			elsif	load='1'	then	
				data_out <= data_in;	
				--store <= data_in;
			elsif	right_shift='1'	then	
				data_out <= ('0' & data_out(n downto 1));
			else
				data_out <= data_out;
			end if;
		end if;
		
	end process SYNC;


end Behavioral;

