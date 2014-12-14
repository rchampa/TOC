----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:12:05 12/14/2014 
-- Design Name: 
-- Module Name:    reg_contador - Behavioral 
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
use IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.ALL;

entity reg_contador is
	generic (N: natural:=6);
	port (clk,enable,reset: in std_logic;
		   data_out: out std_logic_vector (N-1 downto 0));
end reg_contador;

architecture Behavioral of reg_contador is

	signal data : std_logic_vector(N-1 downto 0);
	
begin

	SYNC: process(clk)
	begin
		if clk'event and clk='1' then 
			if reset = '1' then
				data <= (OTHERS =>'0');
			elsif	enable='1'	then	
				if data = "110011" then
					data <= (OTHERS => '0');
				else
					data <= data+1;
				end if;
			end if;
		end if;
		
	end process SYNC;

	data_out <= data;
end Behavioral;

