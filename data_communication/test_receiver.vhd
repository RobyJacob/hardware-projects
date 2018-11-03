----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:28:50 11/01/2018 
-- Design Name: 
-- Module Name:    test_receiver - Behavioral 
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

entity test_receiver is
	port(
		clk	:in std_logic;
		Seg7	:out std_logic_vector(6 downto 0);
		Seg_AN	:out std_logic_vector(3 downto 0);
		RX	:in std_logic
	);
end test_receiver;

architecture Behavioral of test_receiver is
	signal data_out	:std_logic_vector(7 downto 0);
	signal o_rx_dv	:std_logic := '0';
	signal anode_en	:std_logic;
	signal anode	:std_logic_vector(3 downto 0);
	signal anode_count	:natural;
	constant prescaler	:natural := 32000;
	signal prescale_counter	:natural range 0 to prescaler;
	constant c_anode_en	:natural := 16000000;
	signal anode_en_counter	:natural range 0 to c_anode_en;
	signal decode	:natural;
	signal count_byte	:natural;
		
	COMPONENT UART_RX
	PORT(
		i_Clk : IN std_logic;
		i_RX_Serial : IN std_logic;          
		o_RX_DV : OUT std_logic;
		o_RX_Byte : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
begin
	uartrx: UART_RX PORT MAP(
		i_Clk => clk,
		i_RX_Serial => RX,
		o_RX_DV => o_rx_dv,
		o_RX_Byte => data_out
	);
	
	Seg_AN <= anode;
--	Seg7 <= "1000000";
	
	process(anode_count)
	begin
		case anode_count is
			when 1 => anode <= "1110";
			when 2 => anode <= "1101";
			when 3 => anode <= "1011";
			when others => anode <= "0111";
		end case;
	end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			prescale_counter <= prescale_counter + 1;
			anode_en_counter <= anode_en_counter + 1;
			if anode_en_counter = c_anode_en then
				anode_en_counter <= 0;
				anode_en <= not anode_en;
			end if;
			if prescale_counter = prescaler then
				prescale_counter <= 0;
				if anode_count = 4 then
					anode_count <= 0;
				else
					anode_count <= anode_count + 1;
				end if;
			end if;
		end if;
	end process;
	
	process(data_out,anode_en)
	begin
		case data_out(3 downto 0) is
			when "0000" => decode <= 0;
			when "0001" => decode <= 1;
			when "0010" => decode <= 2;
			when "0011" => decode <= 3;
			when "0100" => decode <= 4;
			when "0101" => decode <= 5;
			when "0110" => decode <= 6;
			when "0111" => decode <= 7;
			when "1000" => decode <= 8;
			when others => decode <= 9;
		end case;
	end process;
	
	process(decode,RX)
	begin
		if o_rx_dv = '1' then
			if decode = 1 then
				Seg7 <= "1111001";
			elsif decode = 2 then
				Seg7 <= "0100100";
			elsif decode = 3 then
				Seg7 <= "0110000";
			elsif decode = 4 then
				Seg7 <= "0011001";
			elsif decode = 5 then
				Seg7 <= "0010010";
			elsif decode = 6 then
				Seg7 <= "0000010";
			elsif decode = 7 then
				Seg7 <= "1111000";
			elsif decode = 8 then
				Seg7 <= "0000000";
			elsif decode = 9 then
				Seg7 <= "0010000";
			else
				Seg7 <= "1000000";
			end if;
		else
			count_byte <= count_byte + 1;
		end if;
	end process;
end Behavioral;

