library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity ram is 
    generic(
        n_words:        integer := 32;
        words_size:     integer := 8
    );
    port(
        input_data:     in std_logic_vector(7 downto 0)     := (others => '0');
        address:        in std_logic_vector(4 downto 0)     := (others => '0');
        read:           in std_logic                        := '1';
        write:          in std_logic                        := '1';
        reset:          in std_logic                        := '0';
        output_data:    out std_logic_vector(7 downto 0)    := (others => '0')
    );
end;

-- code for a Single port RAM
architecture ram_arch of ram is
    type words_array is array (0 to n_words - 1) of std_logic_vector(words_size-1  downto 0);
    signal words: words_array := (
                    "10111111", -- akku + data in address 11111
                    "10111111", -- akku + data in address 11111
                    "10011110", -- akku nand data in address 11110
                    "11111110", -- branch not taken
                    "11010011", -- store to 10011
                    "11101011", -- jump to 01011
                    "00000000",
                    "00000000",
                    "00000000",
                    "00000000",
                    "00000000",
                    "01011111", -- load from 11111
                    "00100010", -- shift 2 times right
                    "00000010", -- shift 2 times left
                    "01100000", -- halt
                    "00000000",
                    "00000000",
                    "00000000",
                    "00000000",
                    "00000000",
                    "00000000",
                    "00000000",
                    "00000000",
                    "00000000",
                    "00000000",
                    "00000000",
                    "00000000",
                    "00000000",
                    "00000000",
                    "00000000",
                    "01010101",
                    "10101010");
begin
    process(read, address, reset) is
    begin
        if ((read'event and read='0') or (address'event and read='0')) then
            output_data <= words(to_integer(unsigned(address)));
        else
            output_data <= "ZZZZZZZZ";
        end if;
    end process;
    process(write, address, reset) is
    begin
        if (reset = '1') then
            for i in 0 to n_words-1 loop
                words(i) <= std_logic_vector(to_unsigned(i, words(i)'length));
            end loop;
        elsif ((write'event and write='0') or (address'event and write='0')) then
            words(to_integer(unsigned(address))) <= input_data;
        end if;
    end process;
end ram_arch ;