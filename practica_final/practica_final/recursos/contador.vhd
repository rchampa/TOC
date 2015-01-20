----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:43:54 01/19/2015 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is
	generic (N: natural:=5);
	port (clk,contar,reset: in std_logic;
		   dout: out std_logic_vector (N-1 downto 0));
end contador;

architecture Behavioral of contador is

	signal data: std_logic_vector(N-1 downto 0) := "00000";

begin

	SYNC: process(clk)
	begin
		if clk'event and clk='1' then 
			if reset = '1' then
				data <= "00000";
			elsif contar = '1' then
				if data = "11111" then
					data <= "00000";
				else	
					data <= std_logic_vector(unsigned(data)+1);
				end if;
			end if;
		end if;
		
	end process SYNC;

	dout <= data;
	
	
end Behavioral;

