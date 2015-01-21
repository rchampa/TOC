----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:23:22 01/20/2015 
-- Design Name: 
-- Module Name:    asm - Behavioral 
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

entity asm is
	port (
		clk,rst_n,ini,escribir: in std_logic;
		clave: in std_logic_vector (3 downto 0);
		nueva_clave: in std_logic_vector (3 downto 0);
		fin: out std_logic;
		dir: out std_logic_vector (4 downto 0);
		error_o: out std_logic
	);
end asm;

architecture Behavioral of asm is
		
	component flipflop is
	port(
		clk : in std_logic;
		reset: in std_logic;
		load: in std_logic;
		dout: out std_logic
	);
	end component;
	
	component registro is
	generic (N: natural:=5);
	port (
		clk,reset,load: in std_logic;
		din: in std_logic_vector (N-1 downto 0);
		dout: out std_logic_vector (N-1 downto 0)
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


	type STATES is (S1, S2, S3, S4, S5, S6, S7, S8, S9); -- similar al enum de java
	signal STATE, NEXT_STATE: STATES;
	
	-- uso 6 bits a posta porque en sino no podría hacer la pregunta i<32
	signal i: std_logic_vector(5 downto 0); 
	
	signal ff_fin_clk : std_logic;
	signal ff_fin_reset : std_logic;
	signal ff_fin_load : std_logic;
	signal ff_fin_dout : std_logic;
	
	signal ff_error_clk : std_logic;
	signal ff_error_reset : std_logic;
	signal ff_error_load : std_logic;
	signal ff_error_dout : std_logic;
	
	signal reg_dir_clk : std_logic;
	signal reg_dir_reset : std_logic;
	signal reg_dir_load : std_logic;
	signal reg_dir_din : std_logic_vector(4 downto 0);
	signal reg_dir_dout : std_logic_vector(4 downto 0);
	
	signal rams_we : std_logic;
	signal rams_addr: std_logic_vector(4 downto 0);
	signal rams_di: std_logic_vector(3 downto 0);
	signal rams_do: std_logic_vector(3 downto 0);
	
	signal treinta_y_uno: std_logic_vector(5 downto 0);
	
	signal cable_fin : std_logic;
	signal cable_error : std_logic;
	
begin

	treinta_y_uno <= "100000";
	fin <= ff_fin_dout;
	dir <= reg_dir_dout;
	error_o <= ff_error_dout;
	
	cable_fin <= ff_fin_reset or rst_n;
	cable_error <= ff_error_reset or rst_n;

	u_flip1: flipflop
	port map (clk,cable_fin,ff_fin_load,ff_fin_dout);
	
	u_flip2: flipflop
	port map (clk,cable_error,ff_error_load,ff_error_dout);
	
	u_reg : registro
	port map (clk,rst_n,reg_dir_load,reg_dir_din,reg_dir_dout);
	
	u_rams: rams generic map (5,4) -- m=5bits, n=4bits
	port map (clk,rams_we,rams_addr,rams_di,rams_do);
	
	
	SYNC: process(rst_n,clk)
	begin
		if clk'event and clk='1' then 
			if rst_n ='1' then
				STATE <= S1;
			else
				STATE <= NEXT_STATE;
			end if;
		end if;
		
	end process SYNC;
	
	COMB_MAIN: process(STATE,ini)
	begin
		ff_error_load <= '0';
		rams_we <= '0';
		reg_dir_load <= '0';
		
		case STATE is
			when S1 =>
				ff_fin_load <= '1';
				NEXT_STATE <= S2;
				
			when S2 =>
				i <= (OTHERS=>'0');
				ff_error_load <= '1'; 				
				NEXT_STATE <= S3;
			
			when S3 =>
				if unsigned(i) < unsigned(treinta_y_uno) then
					NEXT_STATE <= S4;
				else
					NEXT_STATE <= S1;
				end if;
			
			when S4 =>
				rams_addr <= i(4 downto 0); -- se prepara mem(i)
				NEXT_STATE <= S5;
				
			when S5 =>
				if rams_do = clave then  -- se está en mem(i) y se puede consultar su salida
					NEXT_STATE <= S6;
				else
					NEXT_STATE <= S8;
				end if;
			
			when S6 =>
				ff_error_reset <= '1';
				reg_dir_load <= '1';
				reg_dir_din <= i(4 downto 0);
				
				if escribir = '1' then
					NEXT_STATE <= S7;
				else 
					NEXT_STATE <= S8;
				end if;
			
			when S7 =>
				rams_we <= '1';
				rams_di <= nueva_clave;
				NEXT_STATE <= S8;
				
			when S8 =>
				i <= std_logic_vector(unsigned(i) + 1);
				NEXT_STATE <= S3;
			when OTHERS =>
				NEXT_STATE <= S1;
				
		end case;
		
	end process COMB_MAIN;
	
end Behavioral;

