----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:02:48 10/21/2014 
-- Design Name: 
-- Module Name:    reflejo - Behavioral 
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

entity reflejo is
	port(
		clk_100MHZ,rst,boton,switch: in std_logic;
		luces: out std_logic_vector(4 downto 0)
	);
end reflejo;

architecture Behavioral of reflejo is

component divider is
	port(
		rst,clk_in: in std_logic;
		clk_out: out std_logic
	);
end component;

signal clk_1Hz : std_logic;

type STATES is (ESPERA, COORDINACION, RAPIDO, MEDIO, LENTO, ERROR, LED_RAPIDO, LED_MEDIO, LED_LENTO, LED_ERROR); -- similar al enum de java
signal STATE, NEXT_STATE: STATES;

begin

	nuevo_rejoj: divider port map (rst,clk_100MHZ,clk_1Hz);

	SYNC: process(clk_1Hz,rst)
	begin
		if rst ='1' then
			STATE <= ESPERA;
		elsif clk_1Hz'event and clk_1Hz='1' then 
			STATE <= NEXT_STATE;
		end if;
		
	end process SYNC;
	
	COMB: process(STATE,boton, switch)
	begin
		case STATE is
			when ESPERA =>
				NEXT_STATE <= COORDINACION;
				luces <= (OTHERS =>'0');
				
			when COORDINACION =>
				NEXT_STATE <= RAPIDO;
				luces(4) <= '1';
				luces(3 downto 0) <= (OTHERS =>'0');

			when RAPIDO =>
				if (boton='0') then NEXT_STATE <= LED_RAPIDO;
				else NEXT_STATE <= MEDIO;
				end if;
				luces(3 downto 0) <= "0001";
			when MEDIO => 		
				if (boton='0') then NEXT_STATE <= LED_MEDIO;
				else NEXT_STATE <= LENTO;
				end if;
				luces(3 downto 0) <= "0010";
			when LENTO => 		
				if (boton='0') then NEXT_STATE <= LED_LENTO;
				else NEXT_STATE <= ERROR;
				end if;
				luces(3 downto 0) <= "0100";
			when ERROR => 		
				NEXT_STATE <= LED_ERROR;
				luces(3 downto 0) <= "1000";
			when LED_RAPIDO => 		
				if (switch='1') then 
					NEXT_STATE <= ESPERA;
				end if;
				
			when LED_MEDIO => 		
				if (switch='1') then 
					NEXT_STATE <= ESPERA;
				end if;
				
			when LED_LENTO => 		
				if (switch='1') then 
					NEXT_STATE <= ESPERA;
				end if;
				
			when LED_ERROR => 		
				if (switch='1') then 
					NEXT_STATE <= ESPERA;
				end if;
				
			when OTHERS =>
				NEXT_STATE <= ESPERA;
		end case;
		
	end process COMB;

end Behavioral;

