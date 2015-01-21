--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:27:04 01/18/2015
-- Design Name:   
-- Module Name:   C:/CORREGIR2/test.vhd
-- Project Name:  CORREGIR2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparador
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
 
ENTITY test_ej1 IS
END test_ej1;
 
ARCHITECTURE behavior OF test_ej1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparador
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         y : IN  std_logic_vector(3 downto 0);
         c : IN  std_logic;
         s : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');
   signal y : std_logic_vector(3 downto 0) := (others => '0');
   signal c : std_logic := '0';

 	--Outputs
   signal s : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparador PORT MAP (
          x => x,
          y => y,
          c => c,
          s => s
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
		c <= '1';
      x <= "1110";
		y <= "0000";
		wait for 100 ns;
		assert (s = '0') report "ERROR EN TESTBENCH (1)" severity error;
      x <= "1001";
		y <= "1110";		
		wait for 100 ns;
		assert (s = '1') report "ERROR EN TESTBENCH (2)" severity error;
      x <= "0000";
		y <= "0001";				
      wait for 100 ns;
		assert (s = '0') report "ERROR EN TESTBENCH (3)" severity error;
		x <= "0000";
		y <= "0111";
		wait for 100 ns;
		assert (s = '1') report "ERROR EN TESTBENCH (4)" severity error;
		
		c <= '0';
      x <= "1110";
		y <= "0000";
		wait for 100 ns;
		assert (s = '0') report "ERROR EN TESTBENCH (5)" severity error;
      x <= "1001";
		y <= "1110";
		wait for 100 ns;
		assert (s = '0') report "ERROR EN TESTBENCH (6)" severity error;
      x <= "0000";
		y <= "0001";				
      wait for 100 ns;
		assert (s = '0') report "ERROR EN TESTBENCH (7)" severity error;
		x <= "0000";
		y <= "0111";
		wait for 100 ns;
		assert (s = '0') report "ERROR EN TESTBENCH (8)" severity error;
		
		wait;
   end process;

END;

