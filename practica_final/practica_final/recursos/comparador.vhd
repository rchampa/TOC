----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:16:35 01/21/2015 
-- Design Name: 
-- Module Name:    comparador - Behavioral 
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

entity comparador is
	port (
		x: in std_logic_vector (3 downto 0);
		y: in std_logic_vector (3 downto 0);
		c: in std_logic;
		s: out std_logic
	);
end comparador;

architecture Behavioral of comparador is

signal aux_z : std_logic;

begin

	aux_z <=	'1' when (x xor y)="0011" and unsigned(y)>unsigned(x) else
			'1' when (x xor y)="0101" and unsigned(y)>unsigned(x) else
			'1' when (x xor y)="0110" and unsigned(y)>unsigned(x) else
			'1' when (x xor y)="0111" and unsigned(y)>unsigned(x) else
			'1' when (x xor y)="1001" and unsigned(y)>unsigned(x) else
			'1' when (x xor y)="1010" and unsigned(y)>unsigned(x) else
			'1' when (x xor y)="1011" and unsigned(y)>unsigned(x) else
			'1' when (x xor y)="1100" and unsigned(y)>unsigned(x) else
			'1' when (x xor y)="1101" and unsigned(y)>unsigned(x) else
			'1' when (x xor y)="1110" and unsigned(y)>unsigned(x) else
			'1' when (x xor y)="1111" and unsigned(y)>unsigned(x) else
			--'1' when  else
			'0';
			
	s <= aux_z and c;


end Behavioral;

