----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/01/2022 12:53:55 PM
-- Design Name: 
-- Module Name: array_multiplier - Behavioral
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

entity array_multiplier is
    Port ( in1 : in STD_LOGIC_VECTOR (3 downto 0);
           in2 : in STD_LOGIC_VECTOR (3 downto 0);
           output_mul : out STD_LOGIC_VECTOR (7 downto 0));
end array_multiplier;

architecture Behavioral of array_multiplier is
    component carry_lookahead_adder_4_bit is
        port(
            a   : in STD_LOGIC_VECTOR (3 downto 0);
            b   : in STD_LOGIC_VECTOR (3 downto 0);
            Cin : in STD_LOGIC;
            Sum   : out STD_LOGIC_VECTOR (4 downto 0));
    end component carry_lookahead_adder_4_bit;
    component AND_gate is
        port(
            a       : in STD_LOGIC;
            b       : in STD_LOGIC;
            output  : out STD_LOGIC);
    end component AND_gate;
    signal sig0      : STD_LOGIC := '0';
    signal and_out   : STD_LOGIC_VECTOR (15 downto 0);
    signal adder_out : STD_LOGIC_VECTOR (9 downto 0);
begin

and_out(3) <= sig0;

and_1_1: AND_gate port map(a => in1(0), b => in2(0), output => output_mul(0));
and_1_2: AND_gate port map(a => in1(1), b => in2(0), output => and_out(0));
and_1_3: AND_gate port map(a => in1(2), b => in2(0), output => and_out(1));
and_1_4: AND_gate port map(a => in1(3), b => in2(0), output => and_out(2));

and_1_5: AND_gate port map(a => in1(0), b => in2(1), output => and_out(4));
and_1_6: AND_gate port map(a => in1(1), b => in2(1), output => and_out(5));
and_1_7: AND_gate port map(a => in1(2), b => in2(1), output => and_out(6));
and_1_8: AND_gate port map(a => in1(3), b => in2(1), output => and_out(7));

adder_1: carry_lookahead_adder_4_bit port map
(
    A       => and_out(3 downto 0),
    B       => and_out(7 downto 4),
    Cin     => and_out(3),
    Sum       => adder_out(4 downto 0)
);

and_2_1: AND_gate port map(a => in1(0), b => in2(2), output => and_out(8));
and_2_2: AND_gate port map(a => in1(1), b => in2(2), output => and_out(9));
and_2_3: AND_gate port map(a => in1(2), b => in2(2), output => and_out(10));
and_2_4: AND_gate port map(a => in1(3), b => in2(2), output => and_out(11));

adder_2: carry_lookahead_adder_4_bit port map
(
    A => and_out(11 downto 8),
    B => adder_out(4 downto 1),
    Cin => and_out(3),
    Sum => adder_out(9 downto 5)
);

and_3_1: AND_gate port map(a => in1(0), b => in2(3), output => and_out(12));
and_3_2: AND_gate port map(a => in1(1), b => in2(3), output => and_out(13));
and_3_3: AND_gate port map(a => in1(2), b => in2(3), output => and_out(14));
and_3_4: AND_gate port map(a => in1(3), b => in2(3), output => and_out(15));

adder_3: carry_lookahead_adder_4_bit port map
(
    A => and_out(15 downto 12),
    B => adder_out(9 downto 6),
    Cin => and_out(3),
    Sum => output_mul(7 downto 3)
);

output_mul(1) <= adder_out(0);
output_mul(2) <= adder_out(5);
end Behavioral;
