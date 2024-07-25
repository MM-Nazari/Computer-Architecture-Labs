----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:23:31 03/20/2022 
-- Design Name: 
-- Module Name:    Both_0101_or_0110_Detector - Behavioral 
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

entity Both_0101_or_0110_Detector is
port (
clk : in std_logic ;
input : in std_logic ;
output : out std_logic 
);
end Both_0101_or_0110_Detector;

architecture Behavioral of Both_0101_or_0110_Detector is

Signal output_0101 : std_logic ;
Signal output_0110 : std_logic ;

component Mealy_0101_Detector is
port (
clk : in std_logic ;
input : in std_logic ;
output : out std_logic 
);
end component;

component Mealy_0110_Detector is
port (
clk : in std_logic ;
input : in std_logic ;
output : out std_logic 
);
end component;

component or_gate is
port (
a : in std_logic ;
b : in std_logic ;
output : out std_logic );
end component;

begin

instance_0101 : Mealy_0101_Detector port map (
clk => clk ,
input => input ,
output => output_0101 );

instance_0110 : Mealy_0110_Detector port map (
clk => clk ,
input => input ,
output => output_0110 );

instance_or_gate: or_gate port map (
a => output_0110 ,
b => output_0101 ,
output => output );

end Behavioral;

