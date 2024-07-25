----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:48:39 04/21/2022 
-- Design Name: 
-- Module Name:    register_behavioral - Behavioral 
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

entity register_behavioral is
port (input		: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		output		: out STD_LOGIC_VECTOR(3 DOWNTO 0);
		reset     : in std_logic ;
      clk       : in std_logic ;
		LR     : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      load      : in std_logic 
		);
end register_behavioral;

architecture Behavioral of register_behavioral is
signal storage	: STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
process(clk, reset, LR)
	begin
	if reset = '1' then
		output <= "0000";
	elsif rising_edge(clk) then
		if load = '1' then
			storage <= input;
		else
	case LR is 
	
  when "00" => storage<= storage;
  when "01" =>   storage <= '0' & storage( 3 downto 1);
  when "10" =>  storage <= storage( 2 downto 0) & '0';
  when "11" =>   storage <= storage(3) & storage( 3 downto 1);
  when others => storage<= storage;
	end case;
		output <= storage;
		end if;
        end if;
		  end process;

end Behavioral;

