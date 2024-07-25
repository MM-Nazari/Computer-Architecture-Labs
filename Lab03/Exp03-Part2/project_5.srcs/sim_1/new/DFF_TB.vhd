----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2022 11:21:01 AM
-- Design Name: 
-- Module Name: DFF_TB - Behavioral
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

entity DFF_TB is
end DFF_TB;

architecture Behavioral of DFF_TB is
    signal d   : STD_LOGIC;
    signal clk : STD_LOGIC;
    signal rst : STD_LOGIC := '0';
    signal q   : STD_LOGIC;
    component DFF is 
    port(
        d   : in STD_LOGIC;
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        q   : inout STD_LOGIC);
    end component;
begin
    uut : DFF port map(
    d => d,
    clk => clk,
    rst => rst,
    q => q);
    
    Clock : process
    begin
    CLK <= '0';
    wait for 10 ns;
    CLK <= '1';
    wait for 10 ns;
    end process;
    
    stim : process
    begin
        rst <= '1';
        d <= '1';
        wait for 20 ns;
        d <= '0';
        wait for 20 ns;
        rst <= '0';
        d <= '1';
        wait for 20 ns;
        d <= '0';
        wait for 20 ns;
    end process;
end Behavioral;
