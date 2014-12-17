----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:03:32 12/17/2014 
-- Design Name: 
-- Module Name:    test_black_jack - Behavioral 
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

entity test_black_jack is
end test_black_jack;

architecture Behavioral of test_black_jack is


	component black_jack is
	port (
		clk,reset,comenzar,jugar,plantarse: in std_logic;
		carta_incorrecta,led_derrota: out std_logic;
		carta : out std_logic_vector (3 downto 0);--4 leds
		puntuacion: out std_logic_vector (5 downto 0)
	);
	end component;
	
	signal aux_reset,aux_comenzar,aux_jugar,aux_plantarse: std_logic;
	signal aux_led_carta,aux_led_derrota: std_logic;
	signal aux_carta: std_logic_vector(3 downto 0);
	signal aux_puntuacion: std_logic_vector(5 downto 0);
	
	-- Clock period definitions
	signal clk : std_logic := '0';
   constant clk_period : time := 80 ns;
	
begin

	-- Instantiate the Unit Under Test (UUT)
   uut: black_jack
		PORT MAP (
			 clk => clk,
          reset => aux_reset,
			 comenzar => aux_comenzar,
          jugar => aux_jugar,
			 carta_incorrecta => aux_led_carta,
			 led_derrota => aux_led_derrota,
          plantarse => aux_plantarse,
          carta => aux_carta,
			 puntuacion => aux_puntuacion
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      aux_reset<='0';
		aux_comenzar<='1';
		aux_jugar<='1';
		aux_plantarse<='1';
		wait for 2*clk_period;
		aux_reset<='1';
		aux_comenzar<='0';
		aux_jugar<='1';
		aux_plantarse<='1';
		wait for 5*clk_period;
		aux_comenzar<='0';
		aux_jugar<='0';
		aux_plantarse<='1';
		wait for 5*clk_period;
		aux_comenzar<='1';
		aux_jugar<='1';
		aux_plantarse<='1';
		wait for 5*clk_period;
		aux_jugar<='1';
		aux_plantarse<='1';
		wait for 5*clk_period;
		aux_jugar<='1';
		aux_plantarse<='1';
		wait for 5*clk_period;
		aux_jugar<='0';
		aux_plantarse<='1';
		wait for 3*clk_period;
		aux_jugar<='1';
		aux_plantarse<='1';
		wait for 2*clk_period;
		aux_jugar<='0';
		aux_plantarse<='1';
		wait for 3*clk_period;
		aux_jugar<='1';
		aux_plantarse<='1';
		wait for 2*clk_period;
		aux_jugar<='0';
		aux_plantarse<='1';
		wait for 3*clk_period;
		aux_jugar<='1';
		aux_plantarse<='1';
		wait for 8*clk_period;
		aux_jugar<='0';
		aux_plantarse<='1';
		wait for 3*clk_period;
		aux_jugar<='1';
		aux_plantarse<='1';
		wait for 2*clk_period;
		aux_jugar<='0';
		aux_plantarse<='1';
		wait for 3*clk_period;
		aux_jugar<='1';
		aux_plantarse<='1';
		wait for 2*clk_period;
		aux_jugar<='0';
		aux_plantarse<='1';
		wait for 3*clk_period;
		aux_jugar<='1';
		aux_plantarse<='1';
		
		wait;


   end process;

end Behavioral;

