----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:34:19 10/15/2014 
-- Design Name: 
-- Module Name:    practica1b - Behavioral 
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
use	IEEE.std_logic_1164.all;	

entity reg_paralelo is
	port	(rst,	clk_100MHz,	load:	in std_logic;	
			E:	in std_logic_vector(3	downto	0);	
			S:	out std_logic_vector(3	downto	0));	
end reg_paralelo;	


architecture	circuito	of reg_paralelo is

--	Añadir	las	señales	intermedias	necesarias	
signal	clk_1Hz:	std_logic;

begin
--	Descomentar	para	implementación	
--	Nuevo_reloj:	divisor	port map	(rst,	clk_100MHz,	clk_1Hz);	

--	Descomentar	para	implementacion	
--	component	divisor	is
--	port	(rst,	clk_entrada:	in	STD_LOGIC;	
--							clk_salida:	out	STD_LOGIC);	
--	end component;	

--	Comentar	para	la	implementacion
clk_1Hz	<=	clk_100MHz;	

--Añadimos	el	resto	del	codigo	del	registro	paralelo	
process(rst,clk_1Hz)
begin	
	if	rst='1'	then	
		S<="0000";	
	elsif clk_1Hz'event	and	clk_1Hz='1'	then	
	
		if	load='1'	then	
			S<=E;	
		end if;	
	end if;
end process;
end circuito;