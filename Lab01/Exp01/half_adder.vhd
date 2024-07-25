----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:14:31 03/07/2022 
-- Design Name: 
-- Module Name:    half_adder - Behavioral 
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

entity half_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is
    component XOR_gate is
        Port(
            a, b: in std_logic;
            output: out std_logic
        );
    End component XOR_gate;
    component AND_gate is
        Port(
            a, b: in std_logic;
            output: out std_logic
        );
    End component AND_gate;
begin
AND_gate_instance0: AND_gate port map(a => a, b => b, output => Cout);
XOR_gate_instance0: XOR_gate port map(a => a, b => b, output => sum); 
end Behavioral;

