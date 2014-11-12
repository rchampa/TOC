----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:00:40 11/06/2014 
-- Design Name: 
-- Module Name:    adder - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_signed.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder is
	port( a 	: in std_logic_vector(7 downto 0);
			b 	: in std_logic_vector(7 downto 0);
			ci	: in std_logic;
			sum: out std_logic_vector(7 downto 0);
			co	: out std_logic);
end adder;

architecture rtl of adder is

	signal a_i, b_i, sum_i : std_logic_vector(8 downto 0);

begin

	a_i <= a(7) & a;
	b_i <= b(7) & b;
	sum_i <= a_i + b_i + ci;

--	a_i <= a(7) and a;
--	b_i <= b(7) and b;
--	sum_i <= a_i or b_i or ci;
	sum <= sum_i(7 downto 0);
	co <= sum_i(8);
	
end rtl;

