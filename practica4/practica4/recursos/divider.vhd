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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
		clk,rst,load: in std_logic;
		data_in: in std_logic;
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

component cmp is
	generic (n: natural := 6);
	PORT(	a      : IN std_logic_vector(n DOWNTO 0); 
			b      : IN std_logic_vector(n DOWNTO 0); 
			salida : OUT std_logic_vector(1 DOWNTO 0)
	);
end component;

signal clk_1Hz : std_logic;

signal dividendo_load : std_logic;
signal dividendo_in : std_logic_vector(n downto 0);
signal dividendo_out : std_logic_vector(n downto 0);
signal dividendo_msb : std_logic;

signal divisor_load : std_logic;
signal divisor_shift: std_logic;
signal divisor_in: std_logic_vector(n downto 0);
signal divisor_out: std_logic_vector(n downto 0);

signal c_load : std_logic;
signal c_in: std_logic_vector(n downto 0);
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

type STATES is (S1, S2, S3, S4, S5, S6, S7, S8, S9); -- similar al enum de java
signal STATE, NEXT_STATE: STATES;
begin

	nuevo_rejoj: clk_divider port map (rst,clk,clk_1Hz);
	
	u_reg_dividendo: reg_dividendo generic map (n) 
	port map (clk_1Hz,reset,dividendo_load,dividendo_in,dividendo_out,dividendo_msb);
	
	u_reg_divisor: reg_divisor generic map (n) 
	port map (clk_1Hz,reset,divisor_load,divisor_shift,divisor_in,divisor_out);
	
	u_reg_c: reg_c	generic map (n)
	port map(clk_1Hz,reset,c_load,c_in,c_out);
	
	u_reg: reg generic map (n)
	port map(clk_1Hz,reset,r_load,r_in,r_out);
	
	u_mux: mux generic map(n)
	PORT map(mux_a,mux_b,mux_sel,mux_salida);
	
	u_alu: alu generic map(n)
	PORT map(alu_A,alu_B,alu_operation,alu_out);
	
	u_cmp: cmp generic map(n)
	PORT map(cmp_A,cmp_B,cmp_salida);
	
	
	SYNC: process(clk_1Hz,rst)
	begin
		if rst ='1' then
			STATE <= ESPERA;
		elsif clk_1Hz'event and clk_1Hz='1' then 
			STATE <= NEXT_STATE;
		end if;
		
	end process SYNC;
	
	
	COMB: process(STATE,boton, switch)
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
				dividendo_in <= '0' & dividend;
				NEXT_STATE <= S3;
		
			when OTHERS =>
				NEXT_STATE <= ESPERA;
		end case;
		
	end process COMB;



end Behavioral;

