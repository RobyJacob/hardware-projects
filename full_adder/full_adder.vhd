----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:50:06 10/23/2018 
-- Design Name: 
-- Module Name:    full-adder - Behavioral 
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

entity full_adder is
	Port(
		Seg_AN	:out std_logic_vector(3 downto 0);
		Seg7	:out std_logic_vector(6 downto 0);
		CLK	:in std_logic;
		SWITCH	:in std_logic_vector(3 downto 0);
		LED	:out	std_logic_vector(2 downto 0)
		);
end full_adder;

architecture Behavioral of full_adder is
	signal digit_sel	:natural range 0 to 2;
--	signal sel	:natural range 0 to 2;
	signal anode	:std_logic_vector(3 downto 0);
	signal segment	:std_logic_vector(6 downto 0);
	constant prescaler	:natural	:= 35000;
	signal prescaler_counter	:natural range 0 to prescaler;
--	signal prescaler: STD_LOGIC_VECTOR(16 downto 0) := "11000011010100000";
--   signal prescaler_counter: STD_LOGIC_VECTOR(16 downto 0) := (others => '0');
	signal sum	:std_logic;
	signal carry	:std_logic;
	signal switch_enable	:std_logic;
	
	COMPONENT memory
		PORT (
		 clka : IN STD_LOGIC;
--		 wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		 addra : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
--		 dina : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 douta : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
		);
	END COMPONENT;
begin
	ram : memory
		PORT MAP (
		 clka => clka,
--		 wea => wea,
		 addra => addra,
--		 dina => dina,
		 douta => douta
		);

	Seg_AN <= anode;
	Seg7 <= segment;
	LED <= SWITCH(2 downto 0);
	sum <= SWITCH(0) xor SWITCH(1) xor SWITCH(2);
	carry <= ((SWITCH(0) xor SWITCH(1)) and SWITCH(2)) or (SWITCH(0) and SWITCH(1));
	
--	process(SWITCH(3))
--	begin
----		case sel is
----			when 1 => anode <= "1110";
----			when 2 => anode <= "1101";
----			when others => anode <= "1000";
----		end case;
--		if
--		sum <= SWITCH(0) xor SWITCH(1) xor SWITCH(2);
--		carry <= ((SWITCH(0) xor SWITCH(1)) and SWITCH(2)) or (SWITCH(0) and SWITCH(1));
--	end process;


	process(SWITCH(2 downto 0),digit_sel)
	begin
		case digit_sel is
			when 1 => anode <= "1110";
			when 2 => anode <= "1101";
--			when 3 => anode <= "1011";
			when others => anode <= "1100";
		end case;
--		sum <= SWITCH(0) xor SWITCH(1) xor SWITCH(2);
--		carry <= ((SWITCH(0) xor SWITCH(1)) and SWITCH(2)) or (SWITCH(0) and SWITCH(1));
	end process;
--	
--	process(SWITCH(3),sel)
--	begin
--		if SWITCH(3) = '1' then
--			case sel is
--				when 1 => anode <= "1110";
--				when 2 => anode <= "1101";
--				when others => anode <= "1111";
--			end case;
--		end if;
--		sum <= SWITCH(0) xor SWITCH(1) xor SWITCH(2);
--		carry <= ((SWITCH(0) xor SWITCH(1)) and SWITCH(2)) or (SWITCH(0) and SWITCH(1));	
--	end process;
	
	process(anode)
	begin
		case anode is
			when "1110" =>	if SWITCH(3) = '1' then
									if carry = '1' then
										segment <= "1111001";
									else 
										segment <= "1000000";
									end if;
							  else
									segment <= "1000000";
--								  if SWITCH(0) = '1' then
--										segment <= "1111001";
--								  else
--										segment <= "1000000";
--								  end if;
							  end if;
			when "1101" => if SWITCH(3) = '1' then
									if sum = '1' then
										segment <= "1111001";
									else 
										segment <= "1000000";
									end if;
							  else
									segment <= "1000000";
--								  if SWITCH(0) = '1' then
--										segment <= "1111001";
--								  else
--										segment <= "1000000";
--								  end if;
							  end if;
--			when "1011" => if SWITCH(2) = '1' then
--									segment <= "1111001";
--							  else
--									segment <= "1000000";
--							  end if;
			when others => segment <= "1111111";
		end case;
	end process;
	
	process(CLK)
	begin
		if rising_edge(CLK) then
--			prescaler_counter <= std_logic_vector(unsigned(prescaler_counter) + 1);
			prescaler_counter <= prescaler_counter + 1;
			if prescaler_counter = prescaler then
				if digit_sel = 2 then
					digit_sel <= 0;
				else
					digit_sel <= digit_sel + 1;
				end if;
--				prescaler_counter <= (others => '0');
				prescaler_counter <= 0;
			end if;
		end if;
	end process;
end Behavioral;

