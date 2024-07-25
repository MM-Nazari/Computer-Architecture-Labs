----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/24/2022 10:08:51 AM
-- Design Name: 
-- Module Name: computer_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity computer_tb is
--  Port ( );
end computer_tb;

architecture Behavioral of computer_tb is
    component computer 
    port(
        rst: in std_logic;
		clk: in std_logic
    );
    end component;
    signal clk: std_logic := '0';
    signal rst: std_logic := '0';
    constant clk_period: time := 10ns;
begin
    comp: computer port map(
        rst => rst,
        clk => clk
    );
   
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
   
   process
   begin
        wait for 5ns;
        rst <= '1';
        wait for 1000ns;    
   end process;
end Behavioral;
