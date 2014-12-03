--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:01:06 11/26/2012
-- Design Name:   
-- Module Name:   C:/Users/Marcos/Documents/Docencia/toc/divisor/simu4b_4_10.vhd
-- Project Name:  divisor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: maquina_divisor
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY simu4b_4_10 IS
END simu4b_4_10;
 
ARCHITECTURE behavior OF simu4b_4_10 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divider
	 generic (n: natural := 10; m: natural := 4);
    PORT(
          clk,reset: in std_logic;
		dividend: in std_logic_vector(n-1 downto 0); 
		divisor: in std_logic_vector(m-1 downto 0); 
		start: in std_logic;
		ready: out std_logic;
		quotient: out std_logic_vector(n-1 downto 0)

        );
    END COMPONENT;
    

   --Inputs
   signal dividendo : std_logic_vector(9 downto 0) := (others => '0');
   signal divisor : std_logic_vector(3 downto 0) := (others => '0');
   signal inicio : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal cociente : std_logic_vector(9 downto 0);
   signal ready: std_logic;

   -- Clock period definitions
   constant clk_period : time := 80 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divider generic map (10,4)
		PORT MAP (
	     clk => clk,
          reset => reset,
			 dividend => dividendo,
          divisor => divisor,
          start => inicio,
          ready => ready,
	     quotient => cociente
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
      reset<='1';
      wait for 100 ns;
		reset<='0';	
		inicio<='1';
		divisor<="1011"; -- 1+2+8 = 11
		dividendo<="1010101001"; -- 1+8+32+128+512 = 681 -> 681/11 = 61
      wait for 2*clk_period;
		inicio<='0';
		wait for 35*clk_period;
		inicio<='1';
		divisor<="0110";
		dividendo<="1000011101";
		wait for 2*clk_period;
		inicio<='0';
		wait for 35*clk_period;
		inicio<='1';
		divisor<="0111";
		dividendo<="1000011101";
		wait for 2*clk_period;
		inicio<='0';
		wait for 35*clk_period;
		inicio<='1';
		divisor<="0111";
		dividendo<="1011011101";
		wait for 2*clk_period;
		inicio<='0';
		wait for 35*clk_period;
		inicio<='1';
		divisor<="0101";
		dividendo<="1011011101";
		wait for 2*clk_period;
		inicio<='0';
		wait for 35*clk_period;
		inicio<='1';
		divisor<="0100";
		dividendo<="1011011101";
		wait for 2*clk_period;
		inicio<='0';
		wait;


   end process;

END;