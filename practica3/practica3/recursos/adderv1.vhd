----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:44:25 11/12/2014 
-- Design Name: 
-- Module Name:    adderv1 - Behavioral 
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


entity adderv1 is
	generic (n: natural := 4);
	port( a 	: in std_logic_vector(n-1 downto 0);
			b 	: in std_logic_vector(n-1 downto 0);
			ci	: in std_logic;
			sum: out std_logic_vector(n-1 downto 0);
			co	: out std_logic);
end adderv1;

architecture rtl of adderv1 is

	component sumador1bit
		port(
			x 	: in std_logic;
			y 	: in std_logic;
			ci	: in std_logic;
			g	: out std_logic;
			p	: out std_logic;
			s	: out std_logic
		);
	end component;
	
	component uaav1
		generic (n: natural := 4);
		port(
			ci	: in std_logic;
			g 	: in std_logic_vector(n-1 downto 0);
			p 	: in std_logic_vector(n-1 downto 0);
			cout	: out std_logic_vector(n-1 downto 0)
		);
	end component;
	
	signal cables_g: std_logic_vector(n-1 downto 0); 
	signal cables_p: std_logic_vector(n-1 downto 0); 
	signal cables_out: std_logic_vector(n downto 1);
	signal cables_cin: std_logic_vector(n downto 0);
	
begin

	cables_cin(0)<='0';
	
	ua: uaav1 generic map (n) PORT MAP ('0',cables_g,cables_p,cables_out);

	cables_cin(n downto 1) <= cables_out;
	
	gen1: for i in 0 to n-1 generate
		u: sumador1bit port map(a(i),b(i),cables_cin(i));
	end generate gen1;

end Behavioral;

