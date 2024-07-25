----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2022 11:21:01 AM
-- Design Name: 
-- Module Name: ripple_counter - Behavioral
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

entity ripple_counter is
    Port ( clk      : in STD_LOGIC;
           rst      : in STD_LOGIC;
           enable   : in STD_LOGIC;
           Q        : inout STD_LOGIC_VECTOR (3 downto 0));
end ripple_counter;

architecture Behavioral of ripple_counter is
    component TFF is
        port(
            t : in STD_LOGIC;
            clk : in STD_LOGIC;
            rst : in STD_LOGIC;
            q : inout STD_LOGIC
            );
    end component;
begin
tff_instance1: TFF port 
map(
t   => enable,
clk => clk,
rst => rst,
q   => Q(0));

tff_instance2: TFF port 
map(
t   => enable,
clk => Q(0),
rst => rst,
q   => Q(1));

tff_instance3: TFF port 
map(
t   => enable,
clk => Q(1),
rst => rst,
q   => Q(2));

tff_instance4: TFF port 
map(
t   => enable,
clk => Q(2),
rst => rst,
q   => Q(3));

end Behavioral;
