----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:16:45 12/14/2014 
-- Design Name: 
-- Module Name:    registro - Behavioral 
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

entity registro is
	generic (N: natural:=5);
	port (
		clk,reset,load: in std_logic;
		din: in std_logic_vector (N-1 downto 0);
		dout: out std_logic_vector (N-1 downto 0)
	);
end registro;

architecture Behavioral of registro is

	signal data : std_logic_vector(N-1 downto 0);

begin

	SYNC: process(clk)
	begin
		if clk'event and clk='1' then 
			if reset = '1' then
				data <= (OTHERS =>'0');
			elsif	load='1'	then	
				data <= din;
			end if;
		end if;
		
	end process SYNC;

	dout <= data;

end Behavioral;

