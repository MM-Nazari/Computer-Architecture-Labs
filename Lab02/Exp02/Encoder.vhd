----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:33:47 03/11/2022 
-- Design Name: 
-- Module Name:    Encoder - Behavioral 
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

entity Encoder is
    Port ( input : in STD_LOGIC_vector(3 downto 0 );
           output : out STD_LOGIC_vector( 1 downto 0 )
           );
end Encoder;

architecture Behavioral of Encoder is
    component or_gate is
        port(
            a: in std_logic;
            b: in std_logic;
            output: out std_logic);
    end component or_gate;
begin
or_inst01: or_gate port map(a => input(3), b => input(2), output => output(1));
or_inst02: or_gate port map(a => input(3), b => input(1), output => output(0)); 
end Behavioral;
