
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity alu is
	generic (n: natural := 6);
	port(
		A: in std_logic_vector(n-1 downto 0);
		B: in std_logic_vector(n-1 downto 0);
		data_out: out std_logic_vector(n-1 downto 0)
	);
end alu;

architecture Behavioral of alu is

	
begin
	
	data_out <= std_logic_vector(unsigned(A)+unsigned(B));

end Behavioral;