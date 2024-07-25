----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:46:16 03/21/2022 
-- Design Name: 
-- Module Name:    ripple_carry_adder - Behavioral 
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

entity ripple_carry_adder is
	port(
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		sum: out STD_LOGIC_VECTOR(3 downto 0);
		cout : out STD_LOGIC
	);
end entity ;

architecture Behavioral of ripple_carry_adder is

	component full_adder is
	  Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           Cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
	end component ;

	signal c : STD_LOGIC_VECTOR(2 downto 0);

begin
	
	FullAdder1 : full_adder port map (
		a => a(0), 
		b => b(0), 
		Cin => cin, 
		sum => sum(0), 
		Cout => c(0)
	);

	FullAdder2 : full_adder port map (
		a => a(1), 
		b => b(1), 
		Cin => c(0), 
		sum => sum(1), 
		Cout => c(1)
	);

	FullAdder3 : full_adder port map (
		a => a(2), 
		b => b(2), 
		Cin => c(1), 
		sum => sum(2), 
		Cout => c(2)
	);

	FullAdder4 : full_adder port map (
		a => a(3), 
		b => b(3), 
		Cin => c(2), 
		sum => sum(3), 
		Cout => cout
	);


end Behavioral ;

