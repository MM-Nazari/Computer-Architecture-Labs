----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2022 11:21:01 AM
-- Design Name: 
-- Module Name: TFF - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

entity TFF is
    Port ( t : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst: in STD_LOGIC;
           q : inout STD_LOGIC);
end TFF;

architecture Behavioral of TFF is
begin
    process(clk ,rst)
    begin
        if (rst = '0') then
            q <= '0';
        elsif (falling_edge(clk)) then
            q <= t xor q;
        end if;
    end process;
end Behavioral;
