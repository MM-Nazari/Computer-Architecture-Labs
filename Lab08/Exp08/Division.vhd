----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:52:47 05/05/2022 
-- Design Name: 
-- Module Name:    Division - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Division is
Port(
M : in std_logic_vector(3 downto 0);
Q : in std_logic_vector(7 downto 0);
A : out std_logic_vector(3 downto 0);
Q_out : out std_logic_vector(7 downto 0);
clk : in std_logic
);
end Division;

architecture Behavioral of Division is

type FSM is ( S0_initial , S1_temp , S2_shift , S3_split , S4_minus , S5_assign , S6_restore , S7_decrease , S8_check , S9_finish );
	signal current_state : FSM := S0_initial ;
	signal next_state : FSM :=  S1_temp ;
	signal AQ : std_logic_vector(11 downto 0);
	signal A_temp : std_logic_vector(3 downto 0) ;
	signal Q_temp : std_logic_vector(7 downto 0);
	signal N : std_logic_vector(3 downto 0)  ;
	
begin

      	process(current_state,Q,M)
			begin
			
				case current_state is
				
					when S0_initial =>
					
					   N <= "1000";
						A_temp <= "0000";
						Q_temp <= Q ;
						next_state <=  S1_temp;
						
					when  S1_temp =>
						AQ <= A_temp & Q_temp;
						next_state <= S2_shift;
														
					when S2_shift => 
					   AQ <= AQ(10 downto 0) & '0';
						next_state <= S3_split;
					
					when S3_split =>
						A_temp <= AQ(11 downto 8);
						Q_temp <= AQ(7 downto 0);
						next_state <= S4_minus;
						
					when S4_minus => 
					A_temp  <=  std_logic_vector( unsigned(A_temp) - unsigned(M)); 
					next_state <= S5_assign;

					when S5_assign => 
						if(A_temp(3) = '1') then
							Q_temp(0) <= '0';
							next_state <= S6_restore;
						else 
							Q_temp(0) <= '1';
						   next_state <= S7_decrease;
						end if;					
				
					when S6_restore => 
						A_temp <=  std_logic_vector(unsigned(A_temp) + unsigned(M)); 
					   next_state <= S7_decrease;

					when S7_decrease =>
					 	N <=std_logic_vector(unsigned(N)  - "0001");
						next_state <= S8_check;
					
					
					when S8_check =>
					
					   if(N = "0000") then 
						    next_state <= S9_finish;
						else 
							 next_state <=  S1_temp;
					   end if;
						
						
				   when S9_finish => 
					     Q_out <= Q_temp;
						  A <= A_temp;
						 
				end case;
				
			end process;
			
		 process(clk)
			begin
				if(rising_edge(clk)) then
					current_state <= next_state;
				end if;
		end process;

end Behavioral;

