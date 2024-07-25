----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:53:06 05/05/2022 
-- Design Name: 
-- Module Name:    Division_tb - Behavioral 
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

entity Division_tb is
end Division_tb;

architecture test of Division_tb is

    
    COMPONENT Division is
    PORT(
         M : IN  std_logic_vector(3 downto 0);
         Q : IN  std_logic_vector(7 downto 0);
         A : OUT  std_logic_vector(3 downto 0);
         Q_out : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal M : std_logic_vector(3 downto 0) := (others => '0');
   signal Q : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal Q_out : std_logic_vector(7 downto 0) := (others => '0');

   -- Clock period definitions
   constant clk_period : time := 5 ns;
 
BEGIN
 
   Divid: Division PORT MAP (
          M => M,
          Q => Q,
          A => A,
          Q_out => Q_out,
          clk => clk
        );
		  
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   process
   begin		
	
	Q <= "00001110" ;
	M <= "0011" ;
	
	wait for 100 ns ;
	
   end process;

END test;

