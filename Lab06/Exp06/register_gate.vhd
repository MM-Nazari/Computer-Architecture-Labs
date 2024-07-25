----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:39:00 04/25/2022 
-- Design Name: 
-- Module Name:    register_gate - Behavioral 
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

entity register_gate is
port (input		: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		output		: out STD_LOGIC_VECTOR(3 DOWNTO 0);
		reset     : in std_logic ;
      clk       : in std_logic ;
		LR     : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      load      : in std_logic 
		);
end register_gate;

architecture Behavioral of register_gate is
component dff is 
   port(
	   input : in std_logic ;
      Q : out std_logic;    
      Clk :in std_logic;  
      reset: in std_logic;  
      D :in  std_logic ;   
		load : in std_logic 
   );
end component;

component decoder2to4 is
 port(
 a : in STD_LOGIC_VECTOR(1 downto 0);
 b : out STD_LOGIC_VECTOR(3 downto 0)
 );
end component;
signal dec_out : std_logic_vector(3 downto 0);
signal and_out : std_logic_vector(9 downto 0);
signal or_out : std_logic_VECTOR(1 DOWNTO 0);
signal output_or : std_logic_vector(3 downto 0);

begin
decode : decoder2to4 port map (
a => LR ,
b => dec_out 
);

or_out(0) <= dec_out(2) or dec_out(3) ;
or_out(1) <= dec_out(0) or dec_out(3) ;

and_out(0) <= input(0) and dec_out(0) ;
and_out(1) <= input(0) and dec_out(1) ;
and_out(2) <= input(1) and or_out(0) ;
and_out(3) <= input(1) and dec_out(0) ;
and_out(4) <= input(1) and dec_out(1) ;
and_out(5) <= input(2) and or_out(0) ;
and_out(6) <= input(2) and dec_out(0) ;
and_out(7) <= input(2) and dec_out(1) ;
and_out(8) <= input(3) and or_out(0) ;
and_out(9) <= input(3) and or_out(1) ;

output_or(0) <= and_out(0) or and_out(2)  ;
output_or(1) <= and_out(1) or and_out(3) or and_out(5) ;
output_or(2) <= and_out(4) or and_out(6) or and_out(8) ;
output_or(3) <= and_out(7) or and_out(9)  ;

dff0 : dff port map (
input => input(0) ,
Q => output(0) ,
Clk => clk ,
reset => reset ,
D => output_or(0) ,
load => load );

dff1 : dff port map (
input => input(1) ,
Q => output(1) ,
Clk => clk ,
reset => reset ,
D => output_or(1) ,
load => load );

dff2 : dff port map (
input => input(2) ,
Q => output(2) ,
Clk => clk ,
reset => reset ,
D => output_or(2) ,
load => load );

dff3 : dff port map (
input => input(3) ,
Q => output(3) ,
Clk => clk ,
reset => reset ,
D => output_or(3) ,
load => load );

end Behavioral;

