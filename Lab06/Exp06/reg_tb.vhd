----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:10:07 04/21/2022 
-- Design Name: 
-- Module Name:    reg_tb - Behavioral 
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

entity reg_tb is
end reg_tb;

architecture test of reg_tb is

    COMPONENT register_behavioral
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(3 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic;
         lr : IN  std_logic_vector(1 downto 0);
         load : IN  std_logic
        );
    END COMPONENT;
    
   signal input : std_logic_vector(3 downto 0) ;
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal LR : std_logic_vector(1 downto 0) ;
   signal load : std_logic := '0';
   signal output : std_logic_vector(3 downto 0);
	
begin

	
   register_example : register_behavioral PORT MAP (
          input => input,
          output => output,
          reset => reset,
          clk => clk,
          LR => LR,
          load => load
        );

 
   clk_process :process
   begin
		clk <= '0';
		wait for 5 ns;
		clk <= '1';
		wait for 5 ns;
   end process;
 
   stim_proc: process
   begin		
      
		input <= "1111";
	   reset <= '0';
	   load <= '1';
		wait for 10 ns ;
		load <= '0';
		LR <= "00" ;
		wait for 10 ns;
		LR <= "01" ;
		wait for 10 ns;
		LR <= "10" ;
		wait for 10 ns;
		LR <= "11" ;
		wait for 30 ns ;
		load <= '1' ;
		wait for 10 ns ;
		load <= '0' ;
		reset <= '1' ;
		
		wait for 20 ns ;
		
		input <= "1100";
		reset <= '0' ;
		load <= '1';
		wait for 10 ns ;
      reset <= '0';
		load <= '0';
		LR <= "00" ;
		wait for 10 ns;
		LR <= "01" ;
		wait for 10 ns;
		LR <= "10" ;
		wait for 10 ns;
		LR <= "11" ;
		wait for 30 ns ;
		load <= '1' ;
		wait for 10 ns ;
		load <= '0' ;
		reset <= '1' ;
		
   end process;

end test;

