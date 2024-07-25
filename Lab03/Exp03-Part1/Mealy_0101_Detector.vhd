----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:59:06 03/20/2022 
-- Design Name: 
-- Module Name:    Mealy_0101_Detector - Behavioral 
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

-- overlap darad

entity Mealy_0101_Detector is
port (
clk : in std_logic ;
input : in std_logic ;
output : out std_logic 
);
end Mealy_0101_Detector;

architecture Behavioral of Mealy_0101_Detector is
type fsm is (S0,S1,S2,S3);
Signal current_state,next_state : fsm := S0 ;

begin
-- clock process

process( clk )
begin
if ( rising_edge(clk) ) then 
  current_state <= next_state ; 
end if ;
end process ;

-- state and output process

process(input,current_state)
begin
--output <= '0' ;
case current_state is

when S0 =>
if (input ='1' ) then
next_state <= S0 ;
output <= '0' ;
else
next_state <= S1 ;
output <= '0' ;
end if ;

when S1 =>
if (input ='1' ) then
next_state <= S2 ;
output <= '0' ;
else
next_state <= S1 ;
output <= '0' ;
end if ;

when S2 =>
if (input ='1' ) then
next_state <= S0 ;
output <= '0' ;
else
next_state <= S3 ;
output <= '0' ;
end if ;

when S3 =>
if (input ='1' ) then
next_state <= S2 ;
output <= '1' ;
else
next_state <= S1 ;
output <= '0' ;
end if ;

when others =>
next_state <= S0 ;
output <= '0' ;

end case ;
end process ;

end Behavioral;

