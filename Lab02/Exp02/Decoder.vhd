----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:35:59 03/11/2022 
-- Design Name: 
-- Module Name:    Decoder - Behavioral 
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

entity Decoder is
    Port ( input : in STD_LOGIC_vector(1 downto 0);
           output : out STD_LOGIC_vector(3 downto 0)
           );
end Decoder;

architecture Behavioral of Decoder is
    component and_gate is 
        port(
            a: in std_logic;
            b: in std_logic;
            output: out std_logic);
    end component and_gate;
    signal not_in0, not_in1: std_logic;
begin
not_in0 <= not input(0);
not_in1 <= not input(1);
and_inst01: and_gate port map(a => input(1), b => input(0), output => output(3));
and_inst02: and_gate port map(a => input(1), b => not_in0, output => output(2));
and_inst03: and_gate port map(a => not_in1, b => input(0), output => output(1));
and_inst04: and_gate port map(a => not_in1, b => not_in0, output => output(0));

end Behavioral;

