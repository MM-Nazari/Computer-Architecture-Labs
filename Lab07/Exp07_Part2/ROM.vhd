----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:34:06 05/05/2022 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    generic(
        D : integer := 16; -- tedade khane hafeze
        C  : integer := 4; -- logD
        W : integer := 8 -- toole har block
        );
port(
    addr : in std_logic_vector(C-1 downto 0);
    data : out std_logic_vector(W-1 downto 0);
	 Clk :in std_logic 
);
end ROM;

architecture Behavioral of ROM is

    type rom_type is array (0 to D-1) of std_logic_vector(W-1 downto 0);
    
	 -- gray code 
    signal RD : rom_type := (
                            "00000000", -- 0
                            "00000001", -- 1
                            "00000011", -- 2
                            "00000010", -- 3
                            "00000110", -- 4
                            "00000111", -- 5
                            "00000101", -- 6
                            "00000100", -- 7
                            "00001100", -- 8
                            "00001101", -- 9
                            "00001111", -- 10
                            "00001110", -- 11
                            "00001010", -- 12
                            "00001011", -- 13
                            "00001001", -- 14
                            "00001000"  -- 15
        );
begin

process(Clk,RD)
begin
  if (rising_edge(Clk)) then
    data <= RD(conv_integer(addr));
  end if ;
end process ;

end Behavioral;

