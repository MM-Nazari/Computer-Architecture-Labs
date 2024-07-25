----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:30:13 03/11/2022 
-- Design Name: 
-- Module Name:    MUX - Behavioral 
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

entity MUX is
    Port ( p : in STD_LOGIC_vector(3 downto 0 );
           i : in STD_LOGIC_vector(1 downto 0 );
           output : out STD_LOGIC);
end MUX;

architecture Behavioral of MUX is
    component and_3 is 
        port(
            a: in std_logic;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

            b: in std_logic;
            c: in std_logic;
            output: out std_logic);
    end component and_3;
    component or_4 is 
        port(
            a: in std_logic;
            b: in std_logic;
            c: in std_logic;
            d: in std_logic;
            output: out std_logic);
    end component or_4;
    signal not_i0, not_i1: std_logic;
    signal y1, y2, y3, y0: std_logic;
begin
not_i0 <= not i(0);
not_i1 <= not i(1);
and_3_inst01: and_3 port map(a => i(1), b => i(0), c => p(3), output => y3);
and_3_inst02: and_3 port map(a => i(1), b => not_i0, c => p(2), output => y2);
and_3_inst03: and_3 port map(a => not_i1, b => i(0), c => p(1), output => y1);
and_3_inst04: and_3 port map(a => not_i1, b => not_i0, c => p(0), output => y0);
or_inst: or_4 port map(a => y0, b => y1, c => y2, d => y3, output => output);  
end Behavioral;

