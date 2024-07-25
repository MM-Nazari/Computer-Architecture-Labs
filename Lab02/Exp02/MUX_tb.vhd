----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:37:12 03/11/2022 
-- Design Name: 
-- Module Name:    MUX_tb - Behavioral 
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
entity MUX_tb is
end MUX_tb;

architecture test of MUX_tb is
component MUX is
Port ( p : in STD_LOGIC_vector(3 downto 0 );
           i : in STD_LOGIC_vector(1 downto 0 );
           output : out STD_LOGIC);
end component ;
signal p :  STD_LOGIC_vector(3 downto 0 );
signal i :  STD_LOGIC_vector(1 downto 0 );
signal  output : STD_LOGIC ;
begin
MUX_instanece : MUX port map (p => p , i=>i , output =>output );
stim_proc : process 
begin
p <= "0010";
i<= "00" ;
wait for 100 ns ;

p <= "0010";
i<= "01" ;
wait for 100 ns ;

p <= "0100";
i<= "10" ;
wait for 100 ns ;

p <= "1000";
i<= "11" ;
wait for 100 ns ;
end process ;

end test;

