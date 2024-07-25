----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/06/2022 03:30:48 PM
-- Design Name: 
-- Module Name: RAM_TB - Behavioral
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
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.env.finish;

entity ram_tb is
end;

architecture behave of ram_tb is

    signal r_input_data:     std_logic_vector(7 downto 0)     := (others => '0');
    signal r_address:        integer range 0 to 64 - 1   := 0;
    signal r_read:           std_logic                        := '0';
    signal r_write:          std_logic                        := '0';
    signal reset:            std_logic                        := '0';
    signal w_output_data:    std_logic_vector(7 downto 0)    := (others => '0');

begin

    UUT: entity work.ram
        port map (
            input_data  => r_input_data,
            address => r_address,
            read    => r_read,
            write   => r_write,
            reset   => reset,
            output_data => w_output_data
        );

    process is
    begin
        r_input_data <= X"AA";
        r_write <= '1';
        r_address <= 0+3;
        wait for 25ns;

        r_input_data <= X"00";
        r_write <= '0';
        r_read <= '1';
        wait for 25ns;

        r_address <= 10;
        r_input_data <= X"00";
        r_write <= '0';
        r_read <= '1';
        wait for 25ns;

        r_input_data <= X"00";
        r_write <= '1';
        r_read <= '0';
        wait for 25ns;
        
        r_address <= 10;
        r_write <= '0';
        r_read <= '1';
        wait for 25ns;
                
        reset <= '1';
        wait for 25ns;
        reset <= '0';
        
        r_address <= 15;
        r_write <= '0';
        r_read <= '1';
        wait for 25ns;
        
        r_address <= 30;
        r_write <= '0';
        r_read <= '1';
        wait for 25ns;
        finish;
    end process;

end behave ;
