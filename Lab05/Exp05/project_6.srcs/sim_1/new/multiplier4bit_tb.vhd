LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Tb_multiplier4bit IS
END Tb_multiplier4bit;
 
ARCHITECTURE behavior OF Tb_multiplier4bit IS
  
COMPONENT multiplier4bit
 port ( A: in STD_LOGIC_VECTOR (3 downto 0);
	B: in STD_LOGIC_VECTOR (3 downto 0);
	S: out STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;
 
--Inputs
signal A : std_logic_vector(3 downto 0) := (others => '0');
signal B : std_logic_vector(3 downto 0) := (others => '0');
--Outputs
signal S: STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
 
BEGIN
 
-- Instantiate the Unit Under Test (UUT)
uut: multiplier4bit PORT MAP (
A => A,
B => B,
S => S
);
 
-- Stimulus process
stim_proc: process
begin
-- hold reset state for 2 ns.
--wait for 5 ns;
A <= "0110";
B <= "1100";

wait for 2 ns;

A <= "0010";
B <= "0001";

wait for 2 ns;
A <= "0111";
B <= "0101";
 
wait for 2 ns;
A <= "0100";
B <= "1101";
 
wait for 2 ns;
A <= "1010";
B <= "1110";
 
wait for 2 ns;
A <= "1011";
B <= "1011";
 
wait for 2 ns;
wait;
 
end process;
 
END;