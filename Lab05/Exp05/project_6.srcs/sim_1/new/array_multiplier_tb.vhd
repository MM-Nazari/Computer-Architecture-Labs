----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/01/2022 12:53:55 PM
-- Design Name: 
-- Module Name: array_multiplier_tb - Behavioral
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

entity array_multiplier_tb is
end array_multiplier_tb;

architecture Behavioral of array_multiplier_tb is
    signal in1   : STD_LOGIC_VECTOR(3 downto 0);
    signal in2   : STD_LOGIC_VECTOR(3 downto 0);
    signal output_mul: STD_LOGIC_VECTOR(7 downto 0);
    component array_multiplier
    port (
        in1    : in STD_LOGIC_VECTOR(3 downto 0);
        in2    : in STD_LOGIC_VECTOR(3 downto 0);
        output_mul : out STD_LOGIC_VECTOR(7 downto 0)
    );
    end component;
begin
    uut: array_multiplier port map(
    in1     => in1,
    in2     => in2,
    output_mul  => output_mul
    );
    
    stim : process
    begin 
    in1 <= "1111";
    in2 <= "1111";
    wait for 5ns;
    in1 <= "1110";
    in2 <= "1111";
    wait for 5ns;
    in1 <= "1101";
    in2 <= "1111";
    wait for 5ns;
    in1 <= "1100";
    in2 <= "1111";
    wait for 5ns;
    in1 <= "1011";
    in2 <= "1111";
    wait for 5ns;
    in1 <= "1010";
    in2 <= "1111";
    wait for 5ns;
    in1 <= "1001";
    in2 <= "1111";
    wait for 5ns;
    in1 <= "1000";
    in2 <= "1111";
    wait for 5ns;
    in1 <= "1111";
    in2 <= "1110";
    wait for 5ns;
    in1 <= "0101";
    in2 <= "0010";
    wait for 5ns;
    in1 <= "0001";
    in2 <= "0000";
    wait for 5ns;
    end process;
            
end Behavioral;
