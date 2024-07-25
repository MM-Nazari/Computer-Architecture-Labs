----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/06/2022 02:29:21 PM
-- Design Name: 
-- Module Name: single_port_RAM - Behavioral
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

entity ram is 
    generic(
        n_words:        integer := 32;
        words_size:     integer := 8
    );
    port(
        input_data:     in std_logic_vector(7 downto 0)     := (others => '0');
        address:        in integer range 0 to n_words - 1   := 0;
        read:           in std_logic                        := '0';
        write:          in std_logic                        := '0';
        reset:          in std_logic                        := '0';
        output_data:    out std_logic_vector(7 downto 0)    := (others => '0')
    );
end;

architecture ram_arch of ram is
    type words_array is array (0 to n_words - 1) of std_logic_vector(words_size-1  downto 0);
    signal words: words_array;
begin
    process(read, address, reset) is
    begin
        if ((read'event and read='1') or (address'event and read='1')) then
            output_data <= words(address);
        end if;
    end process;
    process(write, address, reset) is
    begin
        if (reset = '1') then
            for i in 0 to n_words-1 loop
                words(i) <= std_logic_vector(to_unsigned(i, words(i)'length));
            end loop;
        elsif ((write'event and write='1') or (address'event and write='1')) then
            words(address) <= input_data;
        end if;
    end process;
end ram_arch ;