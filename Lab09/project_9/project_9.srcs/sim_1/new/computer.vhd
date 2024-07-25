----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/24/2022 08:38:31 AM
-- Design Name: 
-- Module Name: computer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use ieee.numeric_std.all;

entity computer is
    generic(
        words_size:     integer := 8
    );
    port(
        rst: in std_logic;
		clk: in std_logic
    );
end computer;

architecture Behavioral of computer is
    component ram 
    port(
        input_data:     in std_logic_vector(7 downto 0)     := (others => '0');
        address:        in std_logic_vector(4 downto 0)     := (others => '0');
        read:           in std_logic                        := '0';
        write:          in std_logic                        := '0';
        reset:          in std_logic                        := '0';
        output_data:    out std_logic_vector(7 downto 0)    := (others => '0')
    );
    end component;

    component CPU8BIT2
    port ( data: inout std_logic_vector(7 downto 0);
		adress: out std_logic_vector(4 downto 0);
		oe: out std_logic;
		we: out std_logic; -- Asynchronous memory interface
		rst: in std_logic;
		clk: in std_logic);
    end component;
    
    signal boe: std_logic;
    signal bwe: std_logic;
    signal bdata: std_logic_vector(7 downto 0);
    signal badress: std_logic_vector(4 downto 0);
    signal rrst: std_logic := '0';
    
    begin
	memory: ram port map(input_data => bdata, address => badress, read => boe,
						 write => bwe, reset => rrst, output_data => bdata); -- initialize memory
						 
    cpu: CPU8BIT2 port map(data => bdata, adress => badress, oe => boe, we => bwe, rst => rst, clk => clk); 

end Behavioral;
