----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:58:01 12/01/2014 
-- Design Name: 
-- Module Name:    reg_c - Behavioral 
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

entity reg_c is
	generic (n: natural := 6);
	port(
		clk,rst,load,shift: in std_logic;
		data_in: in std_logic;
		data_in_paralel: in std_logic_vector(n downto 0);
		data_out: inout std_logic_vector(n downto 0)
	);
end reg_c;

architecture Behavioral of reg_c is

begin

	SYNC: process(clk)
	begin
		if clk'event and clk='1' then 
			if rst = '1' then
				data_out <= (OTHERS =>'0');
			elsif	load='1'	then	
				data_out <= data_in_paralel;	
			elsif	shift='1'	then	
				data_out <= (data_out(n-1 downto 0) & data_in);	
			else
				data_out <= data_out;
			end if;
		end if;
		
	end process SYNC;


end Behavioral;

