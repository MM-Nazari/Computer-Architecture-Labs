----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2022 11:21:01 AM
-- Design Name: 
-- Module Name: TFF_TB - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TFF_TB is
--  Port ( );
end TFF_TB;

architecture Behavioral of TFF_TB is
    signal t   : STD_LOGIC;
    signal clk : STD_LOGIC;
    signal rst : STD_LOGIC := '0';
    signal q   : STD_LOGIC;
    component TFF is 
    port(
        t   : in STD_LOGIC;
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        q   : inout STD_LOGIC);
    end component;
begin
    uut: TFF port map(
    t => t,
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
        t <= '1';
        wait for 40 ns;
        t <= '0';
        wait for 40 ns;
        rst <= '0';
        t <= '1';
        wait for 40 ns;
    end process;
end Behavioral;
