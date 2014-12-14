----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:29:27 12/14/2014 
-- Design Name: 
-- Module Name:    black_jack - Behavioral 
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

entity black_jack is
	port (
		clk,reset,comenzar,jugar,plantarse: in std_logic;
		carta_incorrecta,led_derrota: out std_logic;
		carta : out std_logic_vector (3 downto 0);--4 leds
		puntuacion: out std_logic_vector (6 downto 0)
	);
end black_jack;

architecture Behavioral of black_jack is

	type STATES is (S1, S2, S3, S4, S5, S6, S7, S8); -- similar al enum de java
	signal STATE, NEXT_STATE: STATES;

begin

	SYNC: process(clk_1Hz)
	begin
		if clk_1Hz'event and clk_1Hz='1' then 
			if reset ='1' then
				STATE <= S1;
			else
				STATE <= NEXT_STATE;
			end if;
		end if;
		
	end process SYNC;
	
	COMB_MAIN: process(STATE,start)
	begin
		case STATE is
			when S1 =>
			
				
			when S2 =>
				
			when OTHERS =>
				NEXT_STATE <= S1;
				
		end case;
		
	end process COMB_MAIN;


end Behavioral;

