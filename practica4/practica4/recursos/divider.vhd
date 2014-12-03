----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:52:25 12/01/2014 
-- Design Name: 
-- Module Name:    divider - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity divider is
	generic (n: natural := 6; m: natural := 3);
	port(
		clk,reset: in std_logic;
		dividend: in std_logic_vector(n-1 downto 0); 
		divisor: in std_logic_vector(m-1 downto 0); 
		start: in std_logic;
		ready: out std_logic;
		quotient: out std_logic_vector(n-1 downto 0)
	);
	
end divider;

architecture Behavioral of divider is


component clk_divider is
	port(
		rst,clk_in: in std_logic;
		clk_out: out std_logic
	);
end component;

component reg_dividendo is
	generic (n: natural := 6);
	port(
		clk,rst,load: in std_logic;
		data_in: in std_logic_vector(n downto 0);
		data_out: inout std_logic_vector(n downto 0);
		msb_negated : out std_logic
	);
end component;

component reg_divisor is
	generic (n: natural := 6);
	port(
		clk,rst,load,right_shift: in std_logic;
		data_in: in std_logic_vector(n downto 0);
		data_out: inout std_logic_vector(n downto 0)
	);
end component;

component reg_c is
	generic (n: natural := 6);
	port(
		clk,rst,load,shift: in std_logic;
		data_in: in std_logic;
		data_in_paralel: in std_logic_vector(n downto 0);
		data_out: inout std_logic_vector(n downto 0)
	);
end component;

component reg is
	generic (n: natural := 6);
	port(
		clk,rst,load: in std_logic;
		data_in: in std_logic_vector(n downto 0);
		data_out: inout std_logic_vector(n downto 0)
	);
end component;

component mux is
	generic (n: natural := 6);
	PORT(	a      : IN std_logic_vector(n DOWNTO 0); 
			b      : IN std_logic_vector(n DOWNTO 0); 
			sel    : IN std_logic; 
			salida : OUT std_logic_vector(n DOWNTO 0)
	);
end component;

component alu is
	generic (n: natural := 6);
	port(
		A: in std_logic_vector(n downto 0);
		B: in std_logic_vector(n downto 0);
		operation: in std_logic;
		data_out: out std_logic_vector(n downto 0)
	);
end component;

--component cmp is
--	generic (n: natural := 6);
--	PORT(	a      : IN std_logic_vector(n DOWNTO 0); 
--			b      : IN std_logic_vector(n DOWNTO 0); 
--			salida : OUT std_logic_vector(1 DOWNTO 0)
--	);
--end component;

signal clk_1Hz : std_logic;

signal dividendo_load : std_logic;
signal dividendo_in : std_logic_vector(n downto 0);
signal dividendo_out : std_logic_vector(n downto 0);
signal dividendo_msb : std_logic;

signal divisor_load : std_logic;
signal divisor_shift: std_logic;
signal divisor_in: std_logic_vector(n downto 0);
signal divisor_out: std_logic_vector(n downto 0);
signal divisor_aux: std_logic_vector(n-m-1 downto 0);

signal c_load : std_logic;
signal c_shift : std_logic;
signal c_in: std_logic;
signal c_in_paralel: std_logic_vector(n downto 0);
signal c_out: std_logic_vector(n downto 0);

signal r_load : std_logic;
signal r_in: std_logic_vector(n downto 0);
signal r_out: std_logic_vector(n downto 0);

signal mux_sel : std_logic;
signal mux_a: std_logic_vector(n downto 0);
signal mux_b: std_logic_vector(n downto 0);
signal mux_salida: std_logic_vector(n downto 0);

signal alu_operation : std_logic;
signal alu_A: std_logic_vector(n downto 0);
signal alu_B: std_logic_vector(n downto 0);
signal alu_out: std_logic_vector(n downto 0);

signal cmp_A: std_logic_vector(n downto 0);
signal cmp_B: std_logic_vector(n downto 0);
signal cmp_salida: std_logic_vector(1 downto 0);

type STATES is (S1, S2, S3, S4, S5, S6, S7, S8); -- similar al enum de java
signal STATE, NEXT_STATE: STATES;
begin

	nuevo_rejoj: clk_divider port map (reset,clk,clk_1Hz);
	--clk_1Hz <= clk;
	
	u_reg_dividendo: reg_dividendo generic map (n) 
	port map (clk_1Hz,reset,dividendo_load,dividendo_in,dividendo_out,dividendo_msb);
	
	u_reg_divisor: reg_divisor generic map (n) 
	port map (clk_1Hz,reset,divisor_load,divisor_shift,divisor_in,divisor_out);
	
	u_reg_c: reg_c	generic map (n)
	port map(clk_1Hz,reset,c_load,c_shift,c_in,c_in_paralel,c_out);
	
	u_reg: reg generic map (n)
	port map(clk_1Hz,reset,r_load,r_in,r_out);
	
	u_mux: mux generic map(n)
	PORT map(mux_a,mux_b,mux_sel,mux_salida);
	
	u_alu: alu generic map(n)
	PORT map(alu_A,alu_B,alu_operation,alu_out);
	
--	u_cmp: cmp generic map(n)
--	PORT map(cmp_A,cmp_B,cmp_salida);
	
	
	alu_A <= dividendo_out;
	alu_B <= divisor_out;
	
	mux_a <= alu_out;
	mux_b <= '0' & dividend;
	
	dividendo_in <= mux_salida;
	
	quotient <= c_out(n-1 downto 0);
	
	divisor_aux <= (others => '0');
	
	
	SYNC: process(clk_1Hz)
	begin
		if clk_1Hz'event and clk_1Hz='1' then 
			if reset ='1' then
				STATE <= S1;
			else
				STATE <= NEXT_STATE;
			end if;
		end if;
		
	end process SYNC;
	
	
	COMB_MAIN: process(STATE,start)
	begin
		case STATE is
			when S1 =>
				ready <= '1';
				if start = '0' then
					NEXT_STATE <= S1;
				else
					NEXT_STATE <= S2;
				end if;
				
			when S2 =>
				dividendo_load <= '1';
				mux_sel <= '1'; --dividendo_in <= '0' & dividend;
				
				divisor_load <= '1';
				-- divisor_in <= '0' & divisor & "000";
				divisor_in <= '0' & divisor & divisor_aux;
				c_load <= '1';
				c_in_paralel <= (others => '0');
				c_shift <= '0';
				r_load <= '1';
				r_in <= (others => '0');
				ready <= '0';
				divisor_shift <= '0'; -- RICARDO
				NEXT_STATE <= S3;
				
			when S3 =>
				alu_operation <= '1'; --la resta es '1': dividendo - divisor
				mux_sel <= '0';
				dividendo_load <= '1';
				divisor_load <= '0';
				c_load <= '0';
				r_load <= '0';
				NEXT_STATE <= S4;
			
			when S4 =>
				dividendo_load <= '0';
				if dividendo_msb = '1' then
					NEXT_STATE <= S5;
				else
					NEXT_STATE <= S6;
				end if;
				
			when S5 =>
				c_shift <= '1';
				c_in <= '0';
				mux_sel <= '0';
				dividendo_load <= '1';
				alu_operation <= '0'; --la suma es '0': dividendo + divisor
				NEXT_STATE <= S7;
			
			when S6 =>
				c_shift <= '1';
				c_in <= '1';
				alu_operation <= '0'; --la suma es '0': dividendo + divisor
				NEXT_STATE <= S7;
				
			when S7 =>
				dividendo_load <= '0';
				divisor_load <= '0';
				c_load <= '0';
				c_shift <= '0';
				divisor_shift <= '1';
				r_load <= '1';
				r_in <= std_logic_vector(unsigned(r_out)+ 1);
				NEXT_STATE <= S8;
			
			when S8 =>
				divisor_shift <= '0';
				dividendo_load <= '0';
				divisor_load <= '0';
				c_load <= '0';
				r_load <= '0';
				
				if unsigned(r_out)<=(n-m) then
					NEXT_STATE <= S3;
				else
					NEXT_STATE <= S1;
				end if;
			
			when OTHERS =>
				NEXT_STATE <= S1;
		end case;
		
	end process COMB_MAIN;



end Behavioral;

