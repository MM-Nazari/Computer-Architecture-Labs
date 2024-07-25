----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:41:33 03/11/2022 
-- Design Name: 
-- Module Name:    four_bit_comp - Behavioral 
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

entity four_bit_comp is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           a_lt_b : out STD_LOGIC;
           a_gt_b : out STD_LOGIC;
           a_eq_b : out STD_LOGIC);
end four_bit_comp;

architecture Behavioral of four_bit_comp is
    component one_bit_comp is
        Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           eq : in STD_LOGIC;
           gt : in STD_LOGIC;
           lt : in STD_LOGIC;
           a_gt_b : out STD_LOGIC;
           a_lt_b : out STD_LOGIC;
           a_eq_b : out STD_LOGIC);
    End component one_bit_comp;
    signal init_sigs: std_logic_vector(2 downto 0) := "010";
    signal sigs: std_logic_vector (8 downto 0);
begin
one_bit_comp_instance0: one_bit_comp port map(a => a(0), b => b(0), eq => init_sigs(1),
 gt => init_sigs(0), lt => init_sigs(2), a_gt_b => sigs(0), a_lt_b => sigs(1), a_eq_b => sigs(2));

one_bit_comp_instance1: one_bit_comp port map(a => a(1), b => b(1), eq => sigs(2),
 gt => sigs(0), lt => sigs(1), a_gt_b => sigs(3), a_lt_b => sigs(4), a_eq_b => sigs(5));

one_bit_comp_instance2: one_bit_comp port map(a => a(2), b => b(2), eq => sigs(5),
 gt => sigs(3), lt => sigs(4), a_gt_b => sigs(6), a_lt_b => sigs(7), a_eq_b => sigs(8));

one_bit_comp_instance3: one_bit_comp port map(a => a(3), b => b(3), eq => sigs(8),
 gt => sigs(6), lt => sigs(7), a_gt_b => a_gt_b, a_lt_b => a_lt_b, a_eq_b => a_eq_b);

end Behavioral;


