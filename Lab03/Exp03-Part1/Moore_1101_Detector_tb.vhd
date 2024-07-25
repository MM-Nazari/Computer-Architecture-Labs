----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:32:40 03/19/2022 
-- Design Name: 
-- Module Name:    Moore_1101_Detector_tb - Behavioral 
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

entity Moore_1101_Detector_tb is
end Moore_1101_Detector_tb;

architecture test of Moore_1101_Detector_tb is
component Moore_1101_Detector is
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

detector : Moore_1101_Detector port map (
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

input <= '0' ;
wait for 10 ns ;

end process ;

end test;

