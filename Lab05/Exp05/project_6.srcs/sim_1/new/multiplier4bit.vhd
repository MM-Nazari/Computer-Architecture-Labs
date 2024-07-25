library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier4bit is
 port ( A  : in STD_LOGIC_VECTOR (3 downto 0);
	    B  : in STD_LOGIC_VECTOR (3 downto 0);
	    S  : out STD_LOGIC_VECTOR (7 downto 0));
end multiplier4bit;
 
architecture Behavioral of multiplier4bit is
 
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
        output: out STD_LOGIC
        );
    end component;
signal AB0, AB1, AB2, AB3: STD_LOGIC_VECTOR (3 downto 0);
signal C1, C2, C3: STD_LOGIC_VECTOR (3 downto 0);
signal P1, P2, P3: STD_LOGIC_VECTOR (3 downto 0);

begin
and_gate1:  AND_gate port map(a => A(0), b => B(0), output => AB0(0));
and_gate2:  AND_gate port map(a => A(1), b => B(0), output => AB0(1));
and_gate3:  AND_gate port map(a => A(2), b => B(0), output => AB0(2));
and_gate4:  AND_gate port map(a => A(3), b => B(0), output => AB0(3));

and_gate5:  AND_gate port map(a => A(0), b => B(1), output => AB1(0));
and_gate6:  AND_gate port map(a => A(1), b => B(1), output => AB1(1));
and_gate7:  AND_gate port map(a => A(2), b => B(1), output => AB1(2));
and_gate8:  AND_gate port map(a => A(3), b => B(1), output => AB1(3));

and_gate9:  AND_gate port map(a => A(0), b => B(2), output => AB2(0));
and_gate10: AND_gate port map(a => A(1), b => B(2), output => AB2(1));
and_gate11: AND_gate port map(a => A(2), b => B(2), output => AB2(2));
and_gate12: AND_gate port map(a => A(3), b => B(2), output => AB2(3));

and_gate13: AND_gate port map(a => A(0), b => B(3), output => AB3(0));
and_gate14: AND_gate port map(a => A(1), b => B(3), output => AB3(1));
and_gate15: AND_gate port map(a => A(2), b => B(3), output => AB3(2));
and_gate16: AND_gate port map(a => A(3), b => B(3), output => AB3(3));

FA1: full_adder port map( a => AB0(2), b => AB1(1), Cin => C1(0), Cout => C1(1), sum => P1(1));
FA2: full_adder port map( a => AB0(3), b => AB1(2), Cin => C1(1), Cout => C1(2), sum => P1(2));
FA3: full_adder port map( a => P1(2), b => AB2(1), Cin => C2(0), Cout => C2(1), sum => P2(1));
FA4: full_adder port map( a => P1(3), b => AB2(2), Cin => C2(1), Cout => C2(2), sum => P2(2));
FA5: full_adder port map( a => C1(3), b => AB2(3), Cin => C2(2), Cout => C2(3), sum => P2(3));
FA6: full_adder port map( a => P2(2), b => AB3(1), Cin => C3(0), Cout => C3(1), sum => P3(1));
FA7: full_adder port map( a => P2(3), b => AB3(2), Cin => C3(1), Cout => C3(2), sum => P3(2));
FA8: full_adder port map( a => C2(3), b => AB3(3), Cin => C3(2), Cout => C3(3), sum => P3(3));
HA1: half_adder port map( a => AB0(1), b => AB1(0), cout =>  C1(0), sum => P1(0));
HA2: half_adder port map( a => AB1(3), b => C1(2), cout => C1(3), sum => P1(3));
HA3: half_adder port map( a => P1(1) , b => AB2(0), cout =>  C2(0), sum => P2(0));
HA4: half_adder port map( a => P2(1) , b => AB3(0), cout =>  C3(0), sum => P3(0));

S(0)<= AB0(0);
S(1)<= P1(0);
S(2)<= P2(0);
S(3)<= P3(0);
S(4)<= P3(1);
S(5)<= P3(2);
S(6)<= P3(3);
S(7)<= C3(3);

end Behavioral;