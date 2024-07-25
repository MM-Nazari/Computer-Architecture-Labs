----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2022 10:25:25 AM
-- Design Name: 
-- Module Name: carry_lookahead_adder_4_bit_tb - TB
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

entity carry_lookahead_adder_4_bit_tb is
end carry_lookahead_adder_4_bit_tb;

architecture TB of carry_lookahead_adder_4_bit_tb is
    signal input1: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal input2: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal cin: STD_LOGIC := '0';
    signal output: STD_LOGIC_VECTOR(4 downto 0);
     
    component carry_lookahead_adder_4_bit is
        port(
            A   : in STD_LOGIC_VECTOR(3 downto 0);
            B   : in STD_LOGIC_VECTOR(3 downto 0);
            Cin : in STD_LOGIC;
            Sum   : out STD_LOGIC_VECTOR(4 downto 0));
    end component carry_lookahead_adder_4_bit;
begin
  UUT : carry_lookahead_adder_4_bit
    port map (
      A     => input1,
      B     => input2,
      Cin   => cin,
      Sum   => output
      );
      
  process is 
  begin
    wait for 10 ns;
    input1 <= "1000";
    input2 <= "0101";
    wait for 10 ns;
    input1 <= "1010";
    input2 <= "0101";
    wait for 10 ns;
    input1 <= "0100";
    input2 <= "1100";
    wait for 10 ns;
    input1 <= "1111";
    input2 <= "1111";
    wait for 10 ns;
    input1 <= "1111";
    input2 <= "1001";
    wait for 10 ns;
    Cin <= '1';
    input1 <= "1000";
    input2 <= "0101";
    wait for 10 ns;
    input1 <= "1010";
    input2 <= "0101";
    wait for 10 ns;
    input1 <= "0100";
    input2 <= "1100";
    wait for 10 ns;
    input1 <= "1110";
    input2 <= "1111";
    wait for 10 ns;
    input1 <= "1111";
    input2 <= "1001";
    wait for 10 ns;
    input1 <= "1000";
    input2 <= "0101";
    wait for 10 ns;
  end process;
  
end TB;
