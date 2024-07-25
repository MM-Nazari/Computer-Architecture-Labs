----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:35:56 03/20/2022 
-- Design Name: 
-- Module Name:    Both_tb - Behavioral 
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

entity Both_tb is
end Both_tb;

architecture test of Both_tb is
component Both_0101_or_0110_Detector is
port (
clk : in std_logic ;
input : in std_logic ;
output : out std_logic 
);
end component;

Signal clk :  std_logic := '0';
Signal input :  std_logic := '0';
Signal output :  std_logic ;


begin

both_detector01 : Both_0101_or_0110_Detector port map (
clk => clk ,
input => input ,
output => output 
);

-- clock process

process
begin

clk <= '0';
  wait for 5 ns;
  clk <= '1';
  wait for 5 ns;
end process ;

-- stimulus process

process
begin

input <= '0' ;
wait for 10 ns ;
 
input <= '1' ;
wait for 10 ns ;

input <= '1' ;
wait for 10 ns ;

input <= '0' ;
wait for 10 ns ;

input <= '1' ;
wait for 10 ns ;

input <= '0' ;
wait for 10 ns ;

input <= '1' ;
wait for 10 ns ;

input <= '1' ;
wait for 10 ns ;

input <= '0' ;
wait for 10 ns ;

input <= '1' ;
wait for 10 ns ;

input <= '1' ;
wait for 10 ns ;

input <= '0' ;
wait for 10 ns ;

input <= '1' ;
wait for 10 ns ;

input <= '1' ;
wait for 10 ns ;

input <= '1' ;
wait for 10 ns ;

input <= '1' ;
wait for 10 ns ;

input <= '0' ;
wait for 10 ns ;

input <= '0' ;
wait for 10 ns ;

end process ;

end test;

