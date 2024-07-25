----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2022 09:28:06 AM
-- Design Name: 
-- Module Name: carry_lookahead_adder_4_bit - Behavioral
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

library ieee;
use ieee.std_logic_1164.all;
 
entity carry_lookahead_adder_4_bit is
  port (
    A : in STD_LOGIC_VECTOR(3 downto 0);
    B : in STD_LOGIC_VECTOR(3 downto 0);
    Cin : in STD_LOGIC;
    Sum : out STD_LOGIC_VECTOR(4 downto 0)
    );
end carry_lookahead_adder_4_bit;
 
 
architecture Behavioral of carry_lookahead_adder_4_bit is
 
  component full_adder is
    port (
      a     : in  STD_LOGIC;
      b     : in  STD_LOGIC;
      Cin   : in  STD_LOGIC;
      sum   : out STD_LOGIC;
      Cout  : out STD_LOGIC);
  end component full_adder;
  component OR_gate is
        Port(
            a, b: in std_logic;
            output: out std_logic
        );
   end component OR_gate;
   component AND_gate is
        Port(
            a, b: in std_logic;
            output: out std_logic
        );
   end component AND_gate;
 
  signal G : STD_LOGIC_VECTOR(3 downto 0); 
  signal C : STD_LOGIC_VECTOR(4 downto 0); 
  signal P : STD_LOGIC_VECTOR(3 downto 0); 
  signal D : STD_LOGIC_VECTOR(3 downto 0); 
 
  signal temp_sum : STD_LOGIC_VECTOR(3 downto 0);
begin

   --G(0) <= A(0) and B(0);
  --G(1) <= A(1) and B(1);
  --G(2) <= A(2) and B(2);
  --G(3) <= A(3) and B(3);

  --P(0) <= A(0) or B(0);
  --P(1) <= A(1) or B(1);
  --P(2) <= A(2) or B(2);
  --P(3) <= A(3) or B(3);

  --C(1) <= G(0) or (P(0) and C(0));
  --C(2) <= G(1) or (P(1) and C(1));
  --C(3) <= G(2) or (P(2) and C(2));
  --C(4) <= G(3) or (P(3) and C(3));
 
    AND_gate_1: AND_gate port map(A(0), B(0), G(0));
    AND_gate_2: AND_gate port map(A(1), B(1), G(1));
    AND_gate_3: AND_gate port map(A(2), B(2), G(2));
    AND_gate_4: AND_gate port map(A(3), B(3), G(3));

    OR_gate_1: OR_gate port map(A(0), B(0), P(0));
    OR_gate_2: OR_gate port map(A(1), B(1), P(1));
    OR_gate_3: OR_gate port map(A(2), B(2), P(2));
    OR_gate_4: OR_gate port map(A(3), B(3), P(3));

    C(0) <= Cin; 
    AND_gate_5: AND_gate port map(P(0), C(0), D(0));
    AND_gate_6: AND_gate port map(P(1), C(1), D(1));
    AND_gate_7: AND_gate port map(P(2), C(2), D(2));
    AND_gate_8: AND_gate port map(P(3), C(3), D(3));

    OR_gate_5: OR_gate port map(G(0), D(0), C(1));
    OR_gate_6: OR_gate port map(G(1), D(1), C(2));
    OR_gate_7: OR_gate port map(G(2), D(2), C(3));
    OR_gate_8: OR_gate port map(G(3), D(3), C(4));
   
  full_adder_0 : full_adder
    port map (
      a     => A(0),
      b     => B(0),
      Cin   => C(0),
      sum   => temp_sum(0),
      Cout => open
      );
 
  full_adder_1 : full_adder
    port map (
      a  => A(1),
      b  => B(1),
      Cin => C(1),
      sum   => temp_sum(1),
      Cout => open
      );
 
  full_adder_2 : full_adder
    port map (
      a  => A(2),
      b  => B(2),
      Cin => C(2),
      sum   => temp_sum(2),
      Cout => open
      );
   
  full_adder_3 : full_adder
    port map (
      a  => A(3),
      b  => B(3),
      Cin => C(3),
      sum   => temp_sum(3),
      Cout => open
      );
  Sum <= C(4) & temp_sum;
   
end Behavioral;