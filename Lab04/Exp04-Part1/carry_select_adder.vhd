----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:08:21 03/21/2022 
-- Design Name: 
-- Module Name:    carry_select_adder - Behavioral 
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

entity carry_select_adder is
	port(
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		sum: out STD_LOGIC_VECTOR(3 downto 0);
		cout : out STD_LOGIC
	);
end carry_select_adder;

architecture Behavioral of carry_select_adder is

component ripple_carry_adder is
	port(
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		sum: out STD_LOGIC_VECTOR(3 downto 0);
		cout : out STD_LOGIC
	);
end component ;

component mux_2to1 is
port ( 
a , b : in std_logic ;
s : in std_logic ;
output : out std_logic );
end component ;

signal sum0,sum1 : std_logic_vector( 3 downto 0 );
signal cout0,cout1 : std_logic ;

begin

ripple_0 : ripple_carry_adder port map (
a => a ,
b => b ,
cin => '0' ,
sum => sum0 ,
cout => cout0 );

ripple_1 : ripple_carry_adder port map (
a => a ,
b => b ,
cin => '1' ,
sum => sum1 ,
cout => cout1 );

mux_cout : mux_2to1 port map (
a => cout0 ,
b => cout1 ,
s => cin ,
output => cout );

mux_sum0 : mux_2to1 port map (
a => sum0(0) ,
b => sum1(0) ,
s => cin ,
output => sum(0) );

mux_sum1 : mux_2to1 port map (
a => sum0(1) ,
b => sum1(1) ,
s => cin ,
output => sum(1) );

mux_sum2 : mux_2to1 port map (
a => sum0(2) ,
b => sum1(2) ,
s => cin ,
output => sum(2) );

mux_sum3 : mux_2to1 port map (
a => sum0(3) ,
b => sum1(3) ,
s => cin ,
output => sum(3) );

end Behavioral;

