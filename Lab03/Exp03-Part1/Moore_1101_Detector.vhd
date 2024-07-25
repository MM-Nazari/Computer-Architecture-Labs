----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:02:39 03/19/2022 
-- Design Name: 
-- Module Name:    Moore_1101_Detector - Behavioral 
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

-- OVERLAP nadarad 
entity Moore_1101_Detector is
port (
clk : in std_logic ;
input : in std_logic ;
output : out std_logic 
);
end Moore_1101_Detector;

architecture Behavioral of Moore_1101_Detector is
type fsm is (S0,S1,S2,S3,S4);
Signal current_state,next_state : fsm := S0 ;

begin
-- clock process

process( clk )
begin
if ( rising_edge(clk) ) then 
  current_state <= next_state ; 
end if ;
end process ;

-- state process

process(input,current_state)
begin
case current_state is

when S0 =>
if (input ='1' ) then
next_state <= S1 ;
else
next_state <= S0 ;
end if ;

when S1 =>
if (input ='1' ) then
next_state <= S2 ;
else
next_state <= S0 ;
end if ;

when S2 =>
if (input ='1' ) then
next_state <= S2 ;
else
next_state <= S3 ;
end if ;

when S3 =>
if (input ='1' ) then
next_state <= S4 ;
else
next_state <= S0 ;
end if ;

when S4 =>
if (input ='1' ) then
next_state <= S1 ;
else
next_state <= S0 ;
end if ;

when others =>
next_state <= S0 ;

end case ;
end process ;

-- output process

process( current_state)
begin
case current_state is

when S0 =>
output <= '0' ;

when S1 =>
output <= '0' ;

when S2 =>
output <= '0' ;

when S3 =>
output <= '0' ;

when S4 =>
output <= '1' ;

end case ;
end process ;

end Behavioral;

