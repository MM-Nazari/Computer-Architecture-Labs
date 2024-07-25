----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2022 02:34:52 PM
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

entity full_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           Cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is
    component half_adder is
        Port(
            a: in std_logic;
            b: in std_logic;
            sum: out std_logic;
            Cout: out std_logic
        );
    End component half_adder;
    component OR_gate is
        Port(
            a, b: in std_logic;
            output: out std_logic
        );
    End component OR_gate;
    signal sig0, sig1, sig2: std_logic;
begin
half_adder_instance0: half_adder port map(a => a, b => b, Cout => sig0, sum => sig1);
half_adder_instance1: half_adder port map(a => Cin, b => sig1, Cout => sig2, sum => sum);
OR_gate_instance0: OR_gate port map(a => sig2, b => sig0, output => Cout);
end Behavioral;
