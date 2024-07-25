----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:40:39 03/11/2022 
-- Design Name: 
-- Module Name:    Decoder_tb - Behavioral 
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

entity Decoder_tb is
end Decoder_tb;

architecture test of Decoder_tb is
component Decoder is
 Port ( input : in STD_LOGIC_vector(1 downto 0);
           output : out STD_LOGIC_vector(3 downto 0)
           );
end component ;
signal input :  STD_LOGIC_vector(1 downto 0);
signal output :  STD_LOGIC_vector(3 downto 0);
begin
Decoder_instance : Decoder port map ( input => input , output => output );
stim_proc : process
begin
input <= "00" ;
wait for 100 ns ;

input <= "01" ;
wait for 100 ns ;

input <= "10" ;
wait for 100 ns ;

input <= "11" ;
wait for 100 ns ;
end process ;


end test;

