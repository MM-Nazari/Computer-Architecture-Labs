----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:18:29 03/07/2022 
-- Design Name: 
-- Module Name:    full_adder_TB - Behavioral 
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

entity full_adder_TB is
--  Port ( );
end full_adder_TB;

architecture test of full_adder_TB is
    component full_adder is
        port(
            a: in std_logic;
            b: in std_logic;
            Cin: in std_logic;
            Cout: out std_logic;
            sum: out std_logic
            );
    end component;
    -- input
    signal a: std_logic;
    signal b: std_logic;
    signal Cin: std_logic;
    -- output
    signal Cout: std_logic;
    signal sum: std_logic;
begin
    full_adder_instance: full_adder port map(a => a, b => b, 
    Cin => Cin, Cout => Cout, sum => sum);
    
    stim_proc: process
    begin
    a <= '1';
    b <= '0';
    Cin <= '0';
    wait for 100 ns;
 
    a <= '0';
    b <= '1';
    Cin <= '0';
    wait for 100 ns;
 
    a <= '1';
    b <= '1';
    Cin <= '0';
    wait for 100 ns;
 
    a <= '0';
    b <= '0';
    Cin <= '1';
    wait for 100 ns;
 
    a <= '1';
    b <= '0';
    Cin <= '1';
    wait for 100 ns;
 
    a <= '0';
    b <= '1';
    Cin <= '1';
    wait for 100 ns;
 
    a <= '1';
    b <= '1';
    Cin <= '1';
    wait for 100 ns;
    end process;
end test;

