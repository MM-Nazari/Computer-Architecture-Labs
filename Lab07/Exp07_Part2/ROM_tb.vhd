----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:34:20 05/05/2022 
-- Design Name: 
-- Module Name:    ROM_tb - Behavioral 
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

entity ROM_tb is
end ROM_tb;

architecture test of ROM_tb is
component ROM is
port(
    addr : in std_logic_vector(3 downto 0);
    data : out std_logic_vector(7 downto 0);
	 Clk :in std_logic
);
end component;

 signal addr :  std_logic_vector(3 downto 0) := "0000" ;
 signal data :  std_logic_vector(7 downto 0) ;
 signal clk : std_logic := '0';
 
begin

  clk_process :process
   begin
		clk <= '0';
		wait for 5 ns;
		clk <= '1';
		wait for 5 ns;
   end process;
	
rom_example : ROM port map (
addr => addr ,
data => data ,
clk => clk 
);

process
begin

addr <= "0000" ;

wait for 20 ns ;

addr <= "0001" ;

wait for 20 ns ;

addr <= "0010" ;

wait for 20 ns ;

addr <= "0100" ;

wait for 20 ns ;

addr <= "1000" ;

wait for 20 ns ;

end process ;

end test;

