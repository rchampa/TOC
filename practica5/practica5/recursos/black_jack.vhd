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


	component conv_7seg is
	Port ( 
		x : in  STD_LOGIC_VECTOR (3 downto 0);
      display : out  STD_LOGIC_VECTOR (6 downto 0)
	);
	end component;
	
	component rams is
	generic (M: natural:=6; N: natural:=4);
	port (
		clk,we: in std_logic;
	   addr: in std_logic_vector (M-1 downto 0);
		di: in std_logic_vector (N-1 downto 0);
		do: out std_logic_vector (N-1 downto 0)
	);
	end component;
	
	component reg_contador is
	generic (N: natural:=6);
	port (
		clk,enable,reset: in std_logic;
		data_out: out std_logic_vector (N-1 downto 0)
	);
	end component;
	
	component registro is
	generic (N: natural:=6);
	port (
		clk,load,reset: in std_logic;
		data_in: in std_logic_vector (N-1 downto 0);
		data_out: out std_logic_vector (N-1 downto 0)
	);
	end component;

	type STATES is (S1, S2, S3, S4, S5, S6, S7, S8); -- similar al enum de java
	signal STATE, NEXT_STATE: STATES;
	
	
	signal conv_x1 : std_logic(3 downto 0);
	signal conv_display1: std_logic_vector(6 downto 0);
	
	signal conv_x2 : std_logic(3 downto 0);
	signal conv_display2: std_logic_vector(6 downto 0);
	
	signal rams_we : std_logic(3 downto 0);
	signal rams_addr: std_logic_vector(5 downto 0);
	signal rams_di: std_logic_vector(3 downto 0);
	signal rams_do: std_logic_vector(3 downto 0);
	
	signal contador_enable: std_logic;
	--signal contador_reset: std_logic;
	signal contador_data_out: std_logic_vector(5 downto 0);
	
	signal registro_load: std_logic;
	--signal registro_reset: std_logic;
	signal registro_data_in: std_logic_vector(5 downto 0);
	signal registro_data_out: std_logic_vector(5 downto 0);
	
	signal registro_carta_load: std_logic;
	--signal registro_carta_reset: std_logic;
	signal registro_carta_data_in: std_logic_vector(5 downto 0);
	signal registro_carta_data_out: std_logic_vector(5 downto 0);
	
	signal boton_reset: std_logic;
	signal boton_comenzar: std_logic;
	signal boton_jugar: std_logic;
	signal boton_plantarse: std_logic;
	

begin

	-- cambiando botones a la alta
	boton_reset <= not reset;
	boton_comenzar <= not comenzar;
	boton_jugar <= not jugar;
	boton_plantarse <= not plantarse;
	

	u_conv1: conv_7seg 
	port map (conv_x1,conv_display1);
	
	u_conv2: conv_7seg 
	port map (conv_x2,conv_display2);
	
	u_rams: rams generic map (6,4) -- m=6, n=4 
	port map (clk,rams_we,rams_addr,rams_di,rams_do);
	
	u_contador: reg_contador generic map (6) 
	port map (clk,contador_enable,boton_reset,contador_data_out);
	
	u_registro_puntuacion: registro generic map (6) 
	port map (clk,registro_load,boton_reset,registro_data_in,registro_data_out);
	
	u_registro_carta: registro generic map (6) 
	port map (clk,registro_carta_load,boton_reset,registro_carta_data_in,registro_carta_data_out);
	
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
	
	
	--registro_data_out;
	
	COMB_MAIN: process(STATE,start)
	begin
		case STATE is
			when S1 =>
			
				if boton_comenzar = '1' then
					NEXT_STATE <= S2;
				else
					NEXT_STATE <= S1;
				end if;
			
				
			when S2 =>
				led_derrota <= '0';
				registro_load <= '1';
				registro_data_in <= (OTHERS => '0');
				
			when OTHERS =>
				NEXT_STATE <= S1;
				
		end case;
		
	end process COMB_MAIN;


end Behavioral;

