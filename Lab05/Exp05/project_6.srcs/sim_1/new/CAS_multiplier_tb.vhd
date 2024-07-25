----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2022 12:03:00 PM
-- Design Name: 
-- Module Name: CAS_multiplier_tb - Behavioral
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

entity CSA_multiplier_tb is
--  Port ( );
end CSA_multiplier_tb;

architecture Behavioral of CSA_multiplier_tb is
    component CSA_multiplier
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           output : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    signal A, B : STD_LOGIC_VECTOR (3 downto 0);
    signal output : STD_LOGIC_VECTOR (7 downto 0);
begin

uut: CSA_multiplier port map(
    A     => A,
    B     => B,
    output  => output
    );
    
stim : process
begin 
    A <= "1111";
    B <= "1111";
    wait for 5ns;
    A <= "1110";
    B <= "1111";
    wait for 5ns;
    A <= "1101";
    B <= "1111";
    wait for 5ns;
    A <= "1100";
    B <="1111";
    wait for 5ns;
    A <= "1011";
    B <= "1111";
    wait for 5ns;
    A <= "1010";
    B <= "1111";
    wait for 5ns;
    A <= "1001";
    B <= "1111";
    wait for 5ns;
    A <= "1000";
    B <= "1111";
    wait for 5ns;
    A <= "1111";
    B <= "1110";
    wait for 5ns;
    A <= "0101";
    B <= "0010";
    wait for 5ns;
    A <= "0001";
    B <= "0000";
    wait for 5ns;
end process;  
end Behavioral;
