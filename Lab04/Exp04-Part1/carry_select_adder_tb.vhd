----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:00:46 03/21/2022 
-- Design Name: 
-- Module Name:    carry_select_adder_tb - Behavioral 
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

entity carry_select_adder_tb is
end carry_select_adder_tb;

architecture test of carry_select_adder_tb is

component carry_select_adder is
	port(
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		sum: out STD_LOGIC_VECTOR(3 downto 0);
		cout : out STD_LOGIC
	);
end component ;

signal  a, b :  STD_LOGIC_VECTOR(3 downto 0);
signal	cin :  STD_LOGIC;
signal	sum:  STD_LOGIC_VECTOR(3 downto 0);
signal	cout :  STD_LOGIC ;

begin

select_adder : carry_select_adder port map (
a => a,
b => b,
cin => cin,
sum => sum,
cout => cout);

process
begin
a <= "1010";
b <= "1110";
cin <= '1' ;
wait for 15 ns ;

a <= "1110";
b <= "0010";
cin <= '1' ;
wait for 15 ns ;

a <= "0000";
b <= "1111";
cin <= '0' ;
wait for 15 ns ;

a <= "1000";
b <= "0110";
cin <= '0' ;
wait for 15 ns ;

a <= "1010";
b <= "1000";
cin <= '1' ;
wait for 15 ns ;

end process ;

end test;

