----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:38:05 03/11/2022 
-- Design Name: 
-- Module Name:    one_bit_comp - Behavioral 
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

entity one_bit_comp is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           eq : in STD_LOGIC;
           gt : in STD_LOGIC;
           lt : in STD_LOGIC;
           a_gt_b : out STD_LOGIC;
           a_lt_b : out STD_LOGIC;
           a_eq_b : out STD_LOGIC);
end one_bit_comp;

architecture Behavioral of one_bit_comp is
    component and_gate is
        port(
            a: in std_logic;
            b: in std_logic;
            output: out std_logic);
    end component and_gate;
    component or_gate is
        port(
            a: in std_logic;
            b: in std_logic;
            output: out std_logic);
    end component or_gate;
    component xor_gate is
        port(
            a: in std_logic;
            b: in std_logic;
            output: out std_logic);
    end component xor_gate;
    signal a_and_not_b : std_logic;
    signal b_and_not_a : std_logic;
    signal not_b : std_logic;
    signal not_a : std_logic;
    signal a_xor_b : std_logic;
    signal a_xnor_b : std_logic;
    signal gt_and_eq : std_logic;
    signal lt_and_eq : std_logic;
begin
    not_b <= not b;
    not_a <= not a;
    and_inst01: and_gate port map(a => a, b => not_b, output => a_and_not_b);
    and_inst02: and_gate port map(a => not_a, b => b, output => b_and_not_a);
    xor_inst: xor_gate port map(a => a, b => b, output => a_xor_b);
    a_xnor_b <= not a_xor_b;
    and_inst03: and_gate port map(a => gt, b => a_xnor_b, output => gt_and_eq);
    and_inst04: and_gate port map(a => lt, b => a_xnor_b, output => lt_and_eq);
    and_inst05: and_gate port map(a => a_xnor_b, b => eq, output => a_eq_b);
    or_inst01: or_gate port map(a => a_and_not_b, b => gt_and_eq, output => a_gt_b);
    or_inst02: or_gate port map(a => b_and_not_a, b => lt_and_eq, output => a_lt_b);
end Behavioral;
