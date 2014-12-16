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


--	component conv_7seg is
--	Port ( 
--		x : in  STD_LOGIC_VECTOR (3 downto 0);
--      display : out  STD_LOGIC_VECTOR (6 downto 0)
--	);
--	end component;
	
	component alu is
	generic (n: natural:=6);
	port (
		A: in std_logic_vector(n-1 downto 0);
		B: in std_logic_vector(n-1 downto 0);
		data_out: out std_logic_vector(n-1 downto 0)
	);
	end component;
	
	component mux is
	generic (n: natural:=6);
	port (
		x: in std_logic_vector (n-1 downto 0);
	   y: in std_logic_vector (n-1 downto 0);
		z: in std_logic;
		do: out std_logic_vector (n-1 downto 0)
	);
	end component;
	
	component flipflop is
	port(
		clk : in std_logic;
		reset: in std_logic;
		load: in std_logic;
		data_out: out std_logic
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

	type STATES is (S1, S2, S3, S4, S5, S6, S7, S8, S9); -- similar al enum de java
	signal STATE, NEXT_STATE: STATES;
	
	
--	signal conv_x : std_logic(3 downto 0);
--	signal conv_display: std_logic_vector(6 downto 0);

	signal mux_x: std_logic_vector(5 downto 0);
	signal mux_y: std_logic_vector(5 downto 0);
	signal mux_z: std_logic;
	signal mux_data_out: std_logic_vector(5 downto 0);

	signal flip_derrota_load : std_logic;
	signal flip_derrota_reset : std_logic;
	signal flip_derrota_out : std_logic;
	
	signal flip_carta_load : std_logic;
	signal flip_carta_reset : std_logic;
	signal flip_carta_out : std_logic;

	signal alu_a: std_logic_vector(5 downto 0);
	signal alu_b: std_logic_vector(5 downto 0);
	signal alu_out: std_logic_vector(5 downto 0);
	
	signal rams_we : std_logic(3 downto 0);
	signal rams_addr: std_logic_vector(5 downto 0);
	signal rams_di: std_logic_vector(3 downto 0);
	signal rams_do: std_logic_vector(3 downto 0);
	
	signal contador_enable: std_logic;
	--signal contador_reset: std_logic;
	signal contador_data_out: std_logic_vector(5 downto 0);
	
	signal registro_puntuacion_load: std_logic;
	--signal registro_reset: std_logic;
	signal registro_puntuacion_data_in: std_logic_vector(5 downto 0);
	signal registro_puntuacion_data_out: std_logic_vector(5 downto 0);
	
	signal registro_carta_load: std_logic;
	--signal registro_carta_reset: std_logic;
	signal registro_carta_data_in: std_logic_vector(5 downto 0);
	signal registro_carta_data_out: std_logic_vector(5 downto 0);
	
	signal boton_reset: std_logic;
	signal boton_comenzar: std_logic;
	signal boton_jugar: std_logic;
	signal boton_plantarse: std_logic;
	
	signal registro_carta_data_out: std_logic_vector(1 downto 0);
	
	signal veinte_y_uno: std_logic_vector(5 downto 0);
	

begin

	veinte_y_uno <= "10101"; -- 21

	-- cambiando botones a la alta
	boton_reset <= not reset;
	boton_comenzar <= not comenzar;
	boton_jugar <= not jugar;
	boton_plantarse <= not plantarse;
	
	cable_jugada(1) <= boton_plantarse;
	cable_jugada(0) <= boton_jugar;
	

--	u_conv1: conv_7seg 
--	port map (conv_x,conv_display);

	u_mux: mux
	port map (mux_x,mux_y,mux_z,mux_data_out);
	
	u_flip1: flipflop
	port map (clk,flip_derrota_reset,flip_derrota_load,flip_derrota_out);
	
	u_flip2: flipflop
	port map (clk,flip_carta_reset,flip_carta_load,flip_carta_out);
	
	u_alu: alu generic map (6) -- m=6, n=4 
	port map (clk,rams_we,rams_addr,rams_di,rams_do);
	
	u_rams: rams generic map (6,4) -- m=6, n=4 
	port map (clk,rams_we,rams_addr,rams_di,rams_do);
	
	u_contador: reg_contador generic map (6) 
	port map (clk,contador_enable,boton_reset,contador_data_out);
	
	u_registro_puntuacion: registro generic map (6) 
	port map (clk,registro_puntuacion_load,boton_reset,registro_puntuacion_data_in,registro_puntuacion_data_out);
	
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
	
	
	--ruta de datos
	
	carta_incorrecta <= flip_carta_out;
	led_derrota <= flip_derrota_out;
	
	rams_addr <= contador_data_out;
	rams_data_in <= (Others=>'0');
	mux_x <= (Others=>'0');
	mux_y <= alu_out;
	registro_carta_data_in <= rams_do;
	alu_a <= registro_carta_data_out;
	alu_b <= registro_puntuacion_data_out;
	registro_puntuacion_data_in <= mux_data_out;
	
	
	COMB_MAIN: process(STATE,boton_comenzar)
	begin
		case STATE is
			when S1 =>
			
				if boton_comenzar = '1' then
					NEXT_STATE <= S2;
				else
					NEXT_STATE <= S1;
				end if;
			
				
			when S2 =>
				rams_we <= '0';
				flip_derrota_reset <= '1';
				flip_carta_reset <= '1';
				mux_z <= '0'; -- puntuacion carga 0
				registro_puntuacion_load <= '1';
				contador_enable <= '1';
				
			when S3 =>
				if cable_jugada = "01" then --jugar
					NEXT_STATE <= S5;
				elsif cable_jugada = "10" then --plantarse
					NEXT_STATE <= S4;
				else
					NEXT_STATE <= S3;
				end if;
				
			when S4 => --Se planta
				contador_enable <= '0';
				NEXT_STATE <= S1;
				
			when S5 =>
				if cable_jugada = "01" then -- sigue pulsando jugar
					NEXT_STATE <= S5;
				else
					NEXT_STATE <= S6; -- ha soltado el boton
				end if;
				
			when S6 =>
				rams_we <= '0';
				flip_carta_load <= '1';
				contador_enable <= '0'; -- paro el contador
				registro_carta_load <= '1'; -- cargo la carta para el sgte estado
				NEXT_STATE <= S7;
			
			when S7 =>
				mux_z <= '1';
				registro_puntuacion_load <= '1';
				
				if unsigned(registro_puntuacion_data_out) <= unsigned(veinte_y_uno) then
					NEXT_STATE <= S3; -- sigue jugando
				elsif unsigned(registro_puntuacion_data_out) > unsigned(veinte_y_uno) then
					NEXT_STATE <= S8; -- derrota
				elsif unsigned(registro_puntuacion_data_out) = 0 then
					NEXT_STATE <= S9; -- carta error
				else
					NEXT_STATE <= S7; -- nada
				end if;
				
			when S8 =>
				flip_derrota_load <= '1';
				NEXT_STATE <= S1;
				
			when S9 =>
				flip_error_load <= '1';
				NEXT_STATE <= S3;
				
				
			when OTHERS =>
				NEXT_STATE <= S1;
				
		end case;
		
	end process COMB_MAIN;


end Behavioral;

