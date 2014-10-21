------------------------------------------------------------
-- registro de desplazamiento entrada-salida paralelo
------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity reg_paralelo is
    port (rst, clk_100MHz, load: in std_logic;
		E: in std_logic_vector(3 downto 0);
	       S: out std_logic_vector(3 downto 0));
end reg_paralelo;

architecture circuito of reg_paralelo is

-- A�adir las se�ales intermedias necesarias
signal clk_1Hz: std_logic;

-- Descomentar para implementaci�n
-- component divisor is
-- port (rst, clk_entrada: in STD_LOGIC;
--       clk_salida: out STD_LOGIC);
-- end component;


begin
-- Descomentar para implementaci�n
-- Nuevo_reloj: divisor port map (rst, clk_100MHz, clk_1Hz);

-- Comentar para la implementacion
clk_1Hz <= clk_100MHz;


--A�adimos el resto del codigo del registro paralelo
process(rst,clk_1Hz)
begin
	if rst='1' then
		S<="0000";
	elsif clk_1Hz'event and clk_1Hz='1' then
		if load='1' then
		S<=E;
		end if;
	end if;
end process;
end circuito;


