----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:48:31 03/11/2022 
-- Design Name: 
-- Module Name:    four_bit_comp_tb - Behavioral 
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

entity four_bit_comp_tb is
end four_bit_comp_tb;

architecture test of four_bit_comp_tb is
component four_bit_comp is
Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           a_lt_b : out STD_LOGIC;
           a_gt_b : out STD_LOGIC;
           a_eq_b : out STD_LOGIC);
end component ;
signal a :  STD_LOGIC_VECTOR (3 downto 0);
signal b :  STD_LOGIC_VECTOR (3 downto 0);
 signal a_lt_b :  STD_LOGIC;
 signal a_gt_b :  STD_LOGIC;
 signal a_eq_b :  STD_LOGIC;
begin
four_bit_comp_instance : four_bit_comp port map (a=>a ,b=>b  ,a_lt_b=>a_lt_b ,a_gt_b=>a_gt_b,a_eq_b=>a_eq_b);
stim_proc :process
begin
a <= "1100";
b<= "0011";
wait for 100 ns ;

a <= "1111";
b<= "1111";
wait for 100 ns ;

a <= "1100";
b<= "1111";
wait for 100 ns ;

end process ;

end test;

