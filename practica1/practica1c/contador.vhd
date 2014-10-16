----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:09:44 10/15/2014 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is
	port(
			enable	: in	std_logic_vector;
			salida	: out	std_logic_vector(3 downto 0)
	);
end contador;


architecture Behavioral of contador is


	COMPONENT p1
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
	 --Inputs
   signal A1 : std_logic_vector(3 downto 0) := (others => '0');
   signal B1 : std_logic_vector(3 downto 0) := "0001";

 	--Outputs
   signal C1 : std_logic_vector(3 downto 0);
	 
	 COMPONENT reg_paralelo
    PORT(
         rst : IN  std_logic;
         clk_100MHz : IN  std_logic;
			load: IN std_logic;
         E : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
	 --Entradas
    signal rst : std_logic;
    signal clk_100MHz : std_logic;
    signal E : std_logic_vector(3 downto 0);
	 signal load: std_logic;
		
	--Salidas
    signal S : std_logic_vector(3 downto 0);
	 
	 
	--	Añadir	las	señales	intermedias	necesarias	
	signal	clk_1Hz:	std_logic;
	 

begin

	uut: reg_paralelo PORT MAP (
          rst => rst,
          clk_100MHz => clk_100MHz,
			 load => load,
          E => E,
          S => S
        );
		  
	-- Instantiate the Unit Under Test (UUT)
   uutsuma: p1 PORT MAP (
          A => A1,
          B => B1,
          C => S
        );
		  
		  
	--	Comentar	para	la	implementacion
	clk_1Hz	<=	clk_100MHz;

	--Añadimos	el	resto	del	codigo	del	registro	paralelo	
	process(rst,clk_1Hz)
	begin	
		if	rst='1'	then	
			S<="0000";	
		elsif rst="1111" then	
			S<="0000";
		elsif clk_1Hz'event	and	clk_1Hz='1'	then	
			if	load='1'	then	
				S<=E;	
			end if;	
		end if;
	end process;
		  
	

end Behavioral;

