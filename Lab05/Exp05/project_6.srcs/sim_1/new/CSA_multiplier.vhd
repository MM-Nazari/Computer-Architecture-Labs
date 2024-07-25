----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2022 09:07:56 AM
-- Design Name: 
-- Module Name: CSA_multiplier - Behavioral
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

entity CSA_multiplier is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           output : out STD_LOGIC_VECTOR (7 downto 0));
end CSA_multiplier;

architecture Behavioral of CSA_multiplier is
    component full_adder
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           Cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
    end component;

    component half_adder
    port ( a      : in STD_LOGIC;
           b      : in STD_LOGIC;
	       sum    : out STD_LOGIC;
	       Cout   : out STD_LOGIC);
    end component;

    component AND_gate
    port(
        a:      in STD_LOGIC;
        b:      in STD_LOGIC;
        output: out STD_LOGIC);
    end component;
    type ab_a is array (0 to 3) of std_logic_vector(3 downto 0);
    type sums_a is array (0 to 3) of std_logic_vector(2 downto 0);
    type couts_a is array (0 to 3) of std_logic_vector(2 downto 0);
    signal ab : ab_a;
    signal sums : sums_a;
    signal couts : couts_a;
begin
    
and_gate1:  AND_gate port map(a => A(0), b => B(0), output => ab(0)(0));
and_gate2:  AND_gate port map(a => A(0), b => B(1), output => ab(0)(1));
and_gate3:  AND_gate port map(a => A(0), b => B(2), output => ab(0)(2));
and_gate4:  AND_gate port map(a => A(0), b => B(3), output => ab(0)(3));
and_gate5:  AND_gate port map(a => A(1), b => B(0), output => ab(1)(0));
and_gate6:  AND_gate port map(a => A(1), b => B(1), output => ab(1)(1));
and_gate7:  AND_gate port map(a => A(1), b => B(2), output => ab(1)(2));
and_gate8:  AND_gate port map(a => A(1), b => B(3), output => ab(1)(3));
and_gate9:  AND_gate port map(a => A(2), b => B(0), output => ab(2)(0));
and_gate10: AND_gate port map(a => A(2), b => B(1), output => ab(2)(1));
and_gate11: AND_gate port map(a => A(2), b => B(2), output => ab(2)(2));
and_gate12: AND_gate port map(a => A(2), b => B(3), output => ab(2)(3));
and_gate13: AND_gate port map(a => A(3), b => B(0), output => ab(3)(0));
and_gate14: AND_gate port map(a => A(3), b => B(1), output => ab(3)(1));
and_gate15: AND_gate port map(a => A(3), b => B(2), output => ab(3)(2));
and_gate16: AND_gate port map(a => A(3), b => B(3), output => ab(3)(3));

ha01: half_adder port map(a => ab(0)(1), b => ab(1)(0), sum => sums(0)(2), cout => couts(0)(2));
ha02: half_adder port map(a => ab(1)(1), b => ab(2)(0), sum => sums(0)(1), cout => couts(0)(1));
ha03: half_adder port map(a => ab(2)(1), b => ab(3)(0), sum => sums(0)(0), cout => couts(0)(0));

fa01: full_adder port map(a => ab(0)(2), b => sums(0)(1), cin => couts(0)(2), sum => sums(1)(2), cout => couts(1)(2));
fa02: full_adder port map(a => ab(1)(2), b => sums(0)(0), cin => couts(0)(1), sum => sums(1)(1), cout => couts(1)(1));
fa03: full_adder port map(a => ab(2)(2), b => ab(3)(1),  cin => couts(0)(0), sum => sums(1)(0), cout => couts(1)(0));

fa04: full_adder port map(a => ab(0)(3), b => sums(1)(1), cin => couts(1)(2), sum => sums(2)(2), cout => couts(2)(2));
fa05: full_adder port map(a => ab(1)(3), b => sums(1)(0), cin => couts(1)(1), sum => sums(2)(1), cout => couts(2)(1));
fa06: full_adder port map(a => ab(2)(3), b => ab(3)(2),  cin => couts(1)(0), sum => sums(2)(0), cout => couts(2)(0));

ha04: half_adder port map(a => sums(2)(1), b => couts(2)(2), sum => sums(3)(2), cout => couts(3)(2));
fa07: full_adder port map(a => sums(2)(0), b => couts(2)(1), cin => couts(3)(2), sum => sums(3)(1), cout => couts(3)(1));
fa08: full_adder port map(a => ab(3)(3), b => couts(2)(0), cin => couts(3)(1), sum => sums(3)(0), cout => couts(3)(0));

output(0) <= ab(0)(0);
output(1) <= sums(0)(2);
output(2) <= sums(1)(2);
output(3) <= sums(2)(2);
output(4) <= sums(3)(2);
output(5) <= sums(3)(1);
output(6) <= sums(3)(0);
output(7) <= couts(3)(0);
    
end Behavioral;
