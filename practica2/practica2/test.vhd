
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reflejo
    port(
		clk,rst,boton,switch: in std_logic;
		luces: out std_logic_vector(4 downto 0)
	 );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal boton : std_logic := '0';
	signal switch : std_logic := '0';

 	--Outputs
   signal O : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reflejo PORT MAP (
          clk => clk,
          rst => rst,
			 boton => boton,
          switch => switch,
          luces => O
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
      rst <= '1';	
		boton <= '1';
		switch <='0';
		wait for 20 ns;	
		rst <= '0';
		wait for 20 ns;
		
		wait for 140 ns;
		switch <='1';
		
		wait for 20 ns;
		switch <='0';
		wait for 60 ns;
		boton <= '0';
		
		wait for 40 ns;
		switch <='1';
		
      wait;
   end process;

END;
