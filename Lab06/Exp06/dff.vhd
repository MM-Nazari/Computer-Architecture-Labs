----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:26:54 04/25/2022 
-- Design Name: 
-- Module Name:    dff - Behavioral 
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

entity dff is 
   port(
	   input : in std_logic ;
      Q : out std_logic;    
      Clk :in std_logic;  
      reset: in std_logic;  
      D :in  std_logic ;   
		load : in std_logic 
   );
end dff;
architecture Behavioral of dff is  
begin  
 process(Clk,reset,load,input)
 begin 
     if(reset='1') then 
   Q <= '0';
     elsif(rising_edge(Clk)) then
	  if( load ='1' ) then
	  Q <= input ;
	  else
   Q <= D; 
	end if ;
  end if;      
 end process;  
end Behavioral; 

