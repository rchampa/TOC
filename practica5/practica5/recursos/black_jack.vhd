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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity black_jack is
	port (
		clk,reset,comenzar,jugar,plantarse: in std_logic;
		carta_incorrecta,led_derrota: out std_logic;
		carta : out std_logic_vector (3 downto 0);--4 leds
		puntuacion: out std_logic_vector (5 downto 0);
		display : out  STD_LOGIC_VECTOR (6 downto 0);
		estado_seg : out  STD_LOGIC_VECTOR (6 downto 0);
		reset_pulsado,boton_pulsado: out std_logic
	);
end black_jack;

architecture Behavioral of black_jack is

	component clk_divider is
	port(
		rst,clk_in: in std_logic;
		clk_out: out std_logic
	);
	end component;


	component conv_7seg is
	Port ( 
		x : in  STD_LOGIC_VECTOR (3 downto 0);
      display : out  STD_LOGIC_VECTOR (6 downto 0)
	);
	end component;
	
	
	component alu is
	generic (n: natural := 6; m: natural:= 6);
	port(
		A: in std_logic_vector(n-1 downto 0);
		B: in std_logic_vector(m-1 downto 0);
		data_out: out std_logic_vector(m-1 downto 0)
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
	
	component reg_puntuacion is
	generic (N: natural:=6);
	port (
		clk,load,reset: in std_logic;
		data_in: in std_logic_vector (N-1 downto 0);
		data_out: out std_logic_vector (N-1 downto 0);
		menos: in std_logic;
		mas: in std_logic
	);
	end component;

	type STATES is (S1, S2, S3, S4, S5, S6, S7, S77,S777, DUMMY,S8, S9); -- similar al enum de java
	signal STATE, NEXT_STATE: STATES;
	
	
	signal conv_x : std_logic_vector(3 downto 0);
	signal conv_display: std_logic_vector(6 downto 0);
	
	signal conv_x_estado : std_logic_vector(3 downto 0);
	signal conv_display_estado: std_logic_vector(6 downto 0);

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

	signal alu_a: std_logic_vector(3 downto 0);
	signal alu_b: std_logic_vector(5 downto 0);
	signal alu_out: std_logic_vector(5 downto 0);
	
	signal rams_we : std_logic;
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
	signal registro_carta_data_in: std_logic_vector(3 downto 0);
	signal registro_carta_data_out: std_logic_vector(3 downto 0);
	
	signal boton_reset: std_logic;
	signal boton_comenzar: std_logic;
	signal boton_jugar: std_logic;
	signal boton_plantarse: std_logic;
	
	signal cable_jugada: std_logic_vector(1 downto 0);
	
	signal veinte_y_uno: std_logic_vector(5 downto 0);
	signal diez_y_ocho: std_logic_vector(5 downto 0);
	
	signal cable_flip_carta: std_logic;
	signal cable_flip_derrota: std_logic;
	
	
	signal puntuacion_menos: std_logic;
	signal puntuacion_mas: std_logic;
	
	signal clk_1Hz : std_logic;
begin

	veinte_y_uno <= "010101"; -- 21
	diez_y_ocho <= "010010"; -- 18

	-- cambiando botones a la alta
	boton_reset <= not reset;
	boton_comenzar <= not comenzar;
	boton_jugar <= not jugar;
	boton_plantarse <= not plantarse;
	
	cable_jugada(1) <= boton_plantarse;
	cable_jugada(0) <= boton_jugar;
	
	cable_flip_derrota <= flip_derrota_reset or boton_reset;
	cable_flip_carta <= flip_carta_reset or boton_reset;
	
	nuevo_rejoj: clk_divider port map (boton_reset,clk,clk_1Hz);
	--clk_1Hz <= clk;
	
	u_conv1: conv_7seg 
	port map (conv_x,conv_display);
	
	u_conv_estado: conv_7seg 
	port map (conv_x_estado,conv_display_estado);

	u_mux: mux
	port map (mux_x,mux_y,mux_z,mux_data_out);
	
	u_flip1: flipflop
	port map (clk_1Hz,cable_flip_derrota,flip_derrota_load,flip_derrota_out);
	
	u_flip2: flipflop
	port map (clk_1Hz,cable_flip_carta,flip_carta_load,flip_carta_out);
	
	u_alu: alu generic map (4,6) -- n=4,m=6 
	port map (alu_a,alu_b,alu_out);
	
	u_rams: rams generic map (6,4) -- m=6, n=4 
	port map (clk_1Hz,rams_we,rams_addr,rams_di,rams_do);
	
	u_contador: reg_contador generic map (6) 
	port map (clk_1Hz,contador_enable,boton_reset,contador_data_out);
	
--	u_registro_puntuacion: registro generic map (6) 
--	port map (clk_1Hz,registro_puntuacion_load,boton_reset,registro_puntuacion_data_in,registro_puntuacion_data_out);

	u_registro_puntuacion: reg_puntuacion generic map (6) 
	port map (clk_1Hz,registro_puntuacion_load,boton_reset,registro_puntuacion_data_in,registro_puntuacion_data_out,puntuacion_menos,puntuacion_mas);
	
	u_registro_carta: registro generic map (4) 
	port map (clk_1Hz,registro_carta_load,boton_reset,registro_carta_data_in,registro_carta_data_out);
	
	SYNC: process(boton_reset,clk_1Hz)
	begin
		if clk_1Hz'event and clk_1Hz='1' then 
			if boton_reset ='1' then
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
	rams_di <= (Others=>'0');
	mux_x <= "001010"; --empieza con 10 en vez de cero
	mux_y <= alu_out;
	registro_carta_data_in <= rams_do;
	alu_a <= registro_carta_data_out;
	alu_b <= registro_puntuacion_data_out;
	registro_puntuacion_data_in <= mux_data_out;
	carta <= registro_carta_data_out;
	puntuacion <= registro_puntuacion_data_out;
	
	
	conv_x <= registro_carta_data_out;
	display <= conv_display;
	estado_seg <= conv_display_estado;
	
	reset_pulsado <= boton_reset;
	boton_pulsado <= boton_comenzar;
	
	
	COMB_MAIN: process(STATE,boton_comenzar,cable_jugada,registro_puntuacion_data_out)
	begin
		case STATE is
			when S1 =>
				conv_x_estado <= "0001";
				puntuacion_menos <= '0';
				puntuacion_mas <= '0';
				rams_we <= '0';
	
				flip_derrota_reset <= '0';
				flip_derrota_load <= '0';
				flip_carta_reset <= '0';
				flip_carta_load <= '0';
				mux_z <= '0';
				contador_enable <= '0';			
			
				registro_carta_load <= '0'; 
				registro_puntuacion_load <= '0';
				if boton_comenzar = '1' then
					NEXT_STATE <= S2;
				else
					NEXT_STATE <= S1;
				end if;
			
				
			when S2 =>
				conv_x_estado <= "0010";
				puntuacion_menos <= '0';
				puntuacion_mas <= '0';
				
				rams_we <= '0';
				flip_derrota_reset <= '1';
				flip_derrota_load <= '0';
				flip_carta_reset <= '1';
				flip_carta_load <= '0';
				mux_z <= '0'; -- puntuacion carga 0
				registro_puntuacion_load <= '1';
				registro_carta_load <= '0';
				contador_enable <= '1';
				NEXT_STATE <= S3;
				
			when S3 =>
				conv_x_estado <= "0011";
				puntuacion_menos <= '0';
				puntuacion_mas <= '0';
				
				rams_we <= '0';
				contador_enable <= '1';
				
				flip_derrota_reset <= '0';
				flip_derrota_load <= '0';
				flip_carta_reset <= '0';
				flip_carta_load <= '0';
				mux_z <= '0';
				
				registro_puntuacion_load <= '0';
				registro_carta_load <= '0';
				if cable_jugada = "01" then --jugar
					NEXT_STATE <= S6;--s5-------------------------
				elsif cable_jugada = "10" then --plantarse
					NEXT_STATE <= S4;
				else
					NEXT_STATE <= S3;
				end if;
				
			when S4 => --Se planta
				conv_x_estado <= "0100";
				puntuacion_menos <= '0';
				puntuacion_mas <= '0';
				
				rams_we <= '0';
				contador_enable <= '0';
				
				flip_derrota_reset <= '0';
				flip_derrota_load <= '0';
				flip_carta_reset <= '0';
				flip_carta_load <= '0';
				mux_z <= '0';
				
				registro_puntuacion_load <= '0';
				registro_carta_load <= '0';
				
				if unsigned(registro_puntuacion_data_out) < unsigned(diez_y_ocho) then
					puntuacion_menos <= '1';
					puntuacion_mas <= '0';
				else
					puntuacion_menos <= '0';
					puntuacion_mas <= '1';
				end if;
				NEXT_STATE <= S1;
				
--			when S5 =>
--				conv_x_estado <= "0101";
--				rams_we <= '0';
--				flip_derrota_reset <= '0';
--				flip_derrota_load <= '0';
--				flip_carta_reset <= '0';
--				flip_carta_load <= '0';
--				mux_z <= '0';
--				contador_enable <= '0'; -- paro el contador
--				
--				registro_carta_load <= '0';
--				registro_puntuacion_load <= '0';
--				if cable_jugada = "01" then -- sigue pulsando jugar
--					NEXT_STATE <= S5;
--				else
--					NEXT_STATE <= S6; -- ha soltado el boton
--				end if;
				
			when S6 =>
				conv_x_estado <= "0110";
				puntuacion_menos <= '0';
				puntuacion_mas <= '0';
				
				rams_we <= '0';
				
				flip_derrota_reset <= '0';
				flip_derrota_load <= '0';
				flip_carta_reset <= '1';
				flip_carta_load <= '0';
				mux_z <= '0';
				
				contador_enable <= '0'; -- paro el contador
				registro_carta_load <= '0';
				registro_puntuacion_load <= '0';
				NEXT_STATE <= S7;
			
			when S7 =>
				conv_x_estado <= "0111";
				puntuacion_menos <= '0';
				puntuacion_mas <= '0';
				
				rams_we <= '1';
				
				flip_derrota_reset <= '0';
				flip_derrota_load <= '0';
				flip_carta_load <= '0';
				flip_carta_reset <= '0';
				mux_z <= '0';
				contador_enable <= '0';
			
				registro_carta_load <= '1'; -- cargo la carta para el sgte estado
				registro_puntuacion_load <= '0';
				
				NEXT_STATE <= S77;
				
--				if unsigned(registro_puntuacion_data_out) <= unsigned(veinte_y_uno) then
--					NEXT_STATE <= S77; -- sigue jugando
--				elsif unsigned(registro_puntuacion_data_out) > unsigned(veinte_y_uno) then
--					NEXT_STATE <= S8; -- derrota
--				elsif unsigned(registro_puntuacion_data_out) = 0 then
--					NEXT_STATE <= S9; -- carta error
--				else
--					NEXT_STATE <= S7; -- nada
--				end if;
				
			when S77 =>
				conv_x_estado <= "1010";--A
				puntuacion_menos <= '0';
				puntuacion_mas <= '0';
				
				rams_we <= '0';
				flip_derrota_reset <= '0';
				flip_derrota_load <= '0';
				flip_carta_load <= '0';
				flip_carta_reset <= '0';
				
				registro_carta_load <= '0'; 
				registro_puntuacion_load <= '1';
				mux_z <= '1';
				
				contador_enable <= '0';
				-- NEXT_STATE <= S3;
				NEXT_STATE <= S777;
				
			when S777 =>
				conv_x_estado <= "1011";--B
				puntuacion_menos <= '0';
				puntuacion_mas <= '0';
				
				rams_we <= '0';
				flip_derrota_reset <= '0';
				flip_derrota_load <= '0';
				flip_carta_load <= '0';
				flip_carta_reset <= '0';
				
				registro_carta_load <= '0'; 
				registro_puntuacion_load <= '0';
				mux_z <= '0';
				
				contador_enable <= '0';
				NEXT_STATE <= DUMMY; -- nada
				
			when DUMMY =>
				conv_x_estado <= "1100";--C
				puntuacion_menos <= '0';
				puntuacion_mas <= '0';
				
				rams_we <= '0';
				flip_derrota_reset <= '0';
				flip_derrota_load <= '0';
				flip_carta_load <= '0';
				flip_carta_reset <= '0';
				
				registro_carta_load <= '0'; 
				registro_puntuacion_load <= '0';
				mux_z <= '0';
				
				contador_enable <= '0';
				if unsigned(registro_puntuacion_data_out) <= unsigned(veinte_y_uno) then
					NEXT_STATE <= S3; -- sigue jugando
				elsif unsigned(registro_puntuacion_data_out) > unsigned(veinte_y_uno) then
					NEXT_STATE <= S8; -- derrota
				elsif unsigned(registro_puntuacion_data_out) = 0 then
					NEXT_STATE <= S9; -- carta error
				else
					NEXT_STATE <= DUMMY; -- nada
				end if;
				
				
			when S8 =>
				conv_x_estado <= "1000";
				puntuacion_menos <= '1';
				puntuacion_mas <= '0';
				
				rams_we <= '0';
				flip_derrota_reset <= '0';
				flip_derrota_load <= '1';
				flip_carta_load <= '0';
				flip_carta_reset <= '0';
				registro_carta_load <= '0'; 
				registro_puntuacion_load <= '0';
				mux_z <= '0';
				contador_enable <= '0';
				NEXT_STATE <= S1;
				
			when S9 =>
				conv_x_estado <= "1001";
				puntuacion_menos <= '0';
				puntuacion_mas <= '0';
				rams_we <= '0';
			
				flip_derrota_reset <= '0';
				flip_derrota_load <= '0';
				flip_carta_reset <= '0';
				flip_carta_load <= '1';
				registro_carta_load <= '0'; 
				registro_puntuacion_load <= '0';
				mux_z <= '0';
				contador_enable <= '0';
				
				NEXT_STATE <= S3;
				
				
			when OTHERS =>
				conv_x_estado <= "1111";--F
				puntuacion_menos <= '0';
				puntuacion_mas <= '0';
				rams_we <= '0';
				flip_derrota_reset <= '0';
				flip_derrota_load <= '0';
				flip_carta_reset <= '0';
				flip_carta_load <= '0';
				registro_carta_load <= '0'; 
				registro_puntuacion_load <= '0';
				mux_z <= '0';
				contador_enable <= '0';
				NEXT_STATE <= S1;
				
		end case;
		
	end process COMB_MAIN;


end Behavioral;

