----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2022 11:21:01 AM
-- Design Name: 
-- Module Name: ripple_counter_TB - Behavioral
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

entity ripple_counter_TB is
end ripple_counter_TB;

architecture Behavioral of ripple_counter_TB is
    signal clk      : STD_LOGIC;
    signal rst      : STD_LOGIC := '0';
    signal enable   : STD_LOGIC;
    signal Q        : STD_LOGIC_VECTOR (3 downto 0);
    component ripple_counter is
    port(
        clk     : in STD_LOGIC;
        rst     : in STD_LOGIC;
        enable  : in STD_LOGIC;
        Q       : inout STD_LOGIC_VECTOR (3 downto 0));
    end component;
begin
    uut: ripple_counter port map(
    clk     => clk,
    rst     => rst,
    enable  => enable,
    Q       => Q);
    
    Clock : process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;
    
    stim : process
    begin
        rst     <= '1';
        enable  <= '1';
        wait for 150ns;
    end process;
    
end Behavioral;
