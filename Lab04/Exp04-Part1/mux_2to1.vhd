----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:30:47 03/21/2022 
-- Design Name: 
-- Module Name:    mux_2to1 - Behavioral 
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

entity mux_2to1 is
port ( 
a , b : in std_logic ;
s : in std_logic ;
output : out std_logic );
end mux_2to1;

architecture Behavioral of mux_2to1 is

component or_gate is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           output : out STD_LOGIC);
end component;

component and_gate is
    Port ( a : in std_logic;
           b : in std_logic;
           output : out std_logic);
end component;

signal output0 , output1 : std_logic ;
begin

and_instance1 : and_gate port map (
a => a ,
b => not s ,
output => output0 );

and_instance2 : and_gate port map (
a => s ,
b => b ,
output => output1 );

or_instance : or_gate port map (
a => output0 ,
b => output1 ,
output => output );


end Behavioral;

