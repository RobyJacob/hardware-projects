----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:43:05 10/14/2018 
-- Design Name: 
-- Module Name:    led_test - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity led_test is
	Port(
--		SWITCH	:in std_logic_vector(7 downto 0);
		Seg7_AN	:out std_logic_vector(3 downto 0);
		Seg7		:out std_logic_vector(6 downto 0);
		CLK		:in std_logic
--		Seg7_DP	:out std_logic
--		LED		:out std_logic
		
	);
end led_test;

architecture Behavioral of led_test is
	signal low	:std_logic := '0';
	signal high	:std_logic := '1';
	signal display7seg	:std_logic_vector(6 downto 0):=(others => '0');
	signal counter	:natural range 0 to 10;
	constant c_CNT_1HZ   : natural := 17500000; -- 35MHZ/nHZ * 50% duty cycle
	signal r_CNT_1HZ   : natural range 0 to c_CNT_1HZ;
begin
	Seg7_AN(0) <= low;
	Seg7_AN(3 downto 1) <= (others => high);
	
--	case counter is
--	when "00000001" => display7seg <= "1111001";
--	when "00000010" => display7seg <= "0100100";
--	when "00000011" => display7seg <= "0110000";
--	when "00000100" => display7seg <= "0011001";
--	when "00000101" => display7seg <= "0010010";
--	when "00000110" => display7seg <= "0000010";
--	when "00000111" => display7seg <= "1111000";
--	when "00001000" => display7seg <= "0000000";
--	when others => display7seg <= "1000000";
--	end case;
	
	process(CLK)
	begin
	if rising_edge(CLK) then
		if r_CNT_1HZ = c_CNT_1HZ - 1 then
			if counter = 9 then
				counter <= 0;
			else
				counter <= counter + 1;
			end if;
			r_CNT_1HZ <= 0;
		else
			r_CNT_1HZ <= r_CNT_1HZ + 1;
		end if;
	end if;
	end process;
	
	display7seg <= "1111001" when (counter = 1) else
						"0100100" when (counter = 2) else
						"0110000" when (counter = 3) else
						"0011001" when (counter = 4) else
						"0010010" when (counter = 5) else
						"0000010" when (counter = 6) else
						"1111000" when (counter = 7) else
						"0000000" when (counter = 8) else
						"0011000" when (counter = 9);

						
	Seg7(6 downto 0) <= display7seg(6 downto 0);
end Behavioral;

