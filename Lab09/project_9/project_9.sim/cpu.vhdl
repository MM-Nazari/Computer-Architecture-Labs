library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity CPU8BIT2 is
	port ( data: inout std_logic_vector(7 downto 0);
		adress: out std_logic_vector(4 downto 0);
		oe: out std_logic;
		we: out std_logic; -- Asynchronous memory interface
		rst: in std_logic;
		clk: in std_logic);
end;

architecture CPU_ARCH of CPU8BIT2 is


	signal akku: std_logic_vector(8 downto 0); -- akku(8) is carry !
	signal adreg: std_logic_vector(4 downto 0);
	signal pc: std_logic_vector(4 downto 0);
	signal states: std_logic_vector(2 downto 0);
begin

	Process(clk,rst)
	begin
	 If (rst = '0') then
		adreg <= (others => '0'); -- start execution at memory location 0
		states <= "000";
		akku <= (others => '0');
		pc <= (others => '0');

	 elsIf rising_edge(clk) then

		-- PC / Adress path
		If (states = "000") then
			pc <= adreg + 1;
			adreg <= data(4 downto 0);
		elsif (states = "100") then
		    adreg <= pc - 1;
		else
			adreg <= pc;
		end If;

		-- ALU / Data Path
		Case states is
			when "010" => akku <= ("0" & akku(7 downto 0)) + ("0" & data); -- add | load
			when "011" => akku(7 downto 0) <= akku(7 downto 0) nand data; -- nand
			when "101" => akku(8) <= '0'; -- branch not taken, clear carry
			when "111" => akku <= std_logic_vector(shift_left(unsigned(akku), to_integer(unsigned(adreg(4 downto 0))))); -- shift left
			when "110" => akku <= std_logic_vector(shift_right(unsigned(akku), to_integer(unsigned(adreg(4 downto 0))))); -- shift right
			when others => null; -- instr. fetch, jcc taken (000), sta (001)
		end Case;

		-- State machine
		If (states /= "000") then states <= "000"; -- fetch next opcode
		elsIf (data(7 downto 5) = "111" and akku(8)='1') then states <= "101"; -- branch not taken
		elsIf (data(7 downto 5) = "010") then states <= "010"; akku <= "000000000"; -- load or add data with zero
		elsIf (data(7 downto 5) = "011") then states <= "100"; -- halt
		else states <= not data(7 downto 5); -- execute instruction i have set opcode in a way that negation of them correspond to the proper state
		end If;
	end If;
	end Process;

	-- output
	adress <= adreg;

	data <= "ZZZZZZZZ" when states /= "001" else akku(7 downto 0);
	oe <= '1' when (clk='1' or states = "001" or states = "111" or states = "110" or rst='0' or states = "101") else '0';
	 -- no memory access during reset and state "101" (branch not taken)
	we <= '1' when (clk='1' or states /= "001" or rst='0') else '0';
end CPU_ARCH;