----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:20:26 03/11/2022 
-- Design Name: 
-- Module Name:    Encoder_tb - Behavioral 
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

entity Encoder_tb is
end Encoder_tb;

architecture test of Encoder_tb is
component Encoder is
 Port ( input : in STD_LOGIC_vector(3 downto 0 );
           output : out STD_LOGIC_vector( 1 downto 0 )
           );
			  end component ;
			signal  input :  STD_LOGIC_vector(3 downto 0 );
          signal output :  STD_LOGIC_vector( 1 downto 0 );
begin
Encoder_instance : Encoder port map ( input => input , output => output );
stim_proc : process
begin
input <= "0001" ;
wait for 100 ns ;

input <= "0010" ;
wait for 100 ns ;

input <= "0100" ;
wait for 100 ns ;

input <= "1000" ;
wait for 100 ns ;
end process ;

end test;

