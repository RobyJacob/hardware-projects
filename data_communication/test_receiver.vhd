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
		CLK	:in std_logic;
		Seg7	:out std_logic_vector(6 downto 0);
		Seg_AN	:out std_logic_vector(3 downto 0);
		RX	:in std_logic
	);
end test_receiver;

architecture Behavioral of test_receiver is
	signal data_out	:std_logic_vector(7 downto 0);
	signal o_rx_dv	:std_logic := '0';
	signal anode	:std_logic_vector(3 downto 0);
	signal anode_count	:natural;
	constant prescaler	:natural := 32000;
	signal prescale_counter	:natural range 0 to prescaler;
	signal decode	:natural;
	signal byte_select	:std_logic;
	signal dout	:std_logic_vector(15 downto 0);
	signal seg	:std_logic_vector(6 downto 0);
	signal count_byte	:natural;
	signal reset	:std_logic;
	signal write_en	:std_logic;
	signal read_en	:std_logic;
	signal write_ack	:std_logic;
	signal number	:std_logic_vector(7 downto 0);
--	signal read_data_count	:std_logic_vector(1 downto 0);
--	signal write_data_count	:std_logic_vector(1 downto 0);
	signal read_clk	:std_logic;
	signal read_clk_count	:natural;
		
	COMPONENT UART_RX
		PORT(
			i_Clk : IN std_logic;
			i_RX_Serial : IN std_logic;          
			o_RX_DV : OUT std_logic;
			o_RX_Byte : OUT std_logic_vector(7 downto 0)
			);
	END COMPONENT;
	
	COMPONENT memory
	  PORT (
--		 rst : IN STD_LOGIC;
		 wr_clk : IN STD_LOGIC;
		 rd_clk : IN STD_LOGIC;
		 din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 wr_en : IN STD_LOGIC;
		 rd_en : IN STD_LOGIC;
		 dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		 full : OUT STD_LOGIC;
		 wr_ack : OUT STD_LOGIC
--		 overflow : OUT STD_LOGIC;
--		 empty : OUT STD_LOGIC;
--		 rd_data_count : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--		 wr_data_count : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	  );
	END COMPONENT;
	
begin
	uartrx: UART_RX 
		PORT MAP(
			i_Clk => CLK,
			i_RX_Serial => RX,
			o_RX_DV => o_rx_dv,
			o_RX_Byte => data_out
		);
	
	fifo : memory
	  PORT MAP (
--		 rst => rst,
		 wr_clk => CLK,
		 rd_clk => read_clk,
		 din => data_out,
		 wr_en => write_en,
		 rd_en => read_en,
		 dout => dout,
--		 full => full,
		 wr_ack => write_ack
--		 overflow => overflow,
--		 empty => empty,
--		 rd_data_count => read_data_count,
--		 wr_data_count => write_data_count
	  );
	
	Seg_AN <= anode;
	Seg7 <= seg;
--	Seg7 <= "1000000";
	
--	process(o_rx_dv)
--	begin
--		if o_rx_dv = '1' and count_byte = 1 then
--			byte_select <= '0';
--		elsif o_rx_dv = '1' and count_byte = 2 then
--			byte_select <= '1';
--		end if;
--	end process;
	
--	process(CLK)
--	begin
--		if rising_edge(CLK) then
--			write_en <= '1';
--			read_clk <= '1';
--		else
--			write_en <= '0';
--			read_clk <= '0';
--		end if;
--	end process;
	
	process(CLK)
	begin
		if rising_edge(CLK) then
			read_clk_count <= read_clk_count + 1;
			if read_clk_count = 16000000 then
				read_clk_count <= 0;
				read_clk <= not read_clk;
			end if;
		end if;
	end process;

	process(byte_select,write_ack)
	begin
		if write_ack = '1' and read_en = '1' then
			if byte_select = '0' then
				number <= dout(7 downto 0);
			elsif byte_select = '1' then
				number <= dout(15 downto 8);
			end if;
		end if;
	end process;
	
	process(anode_count)
	begin
		case anode_count is
			when 1 => anode <= "1110";
						byte_select <= '0';
--						if o_rx_dv = '1' and count_byte = 1 then
--							byte_select <= '0';
--						end if;
			when 2 => anode <= "1101";
						byte_select <= '1';
--						if o_rx_dv = '1' and count_byte = 2 then
--							byte_select <= '1';
--						end if;
			when 3 => anode <= "1011";
			when others => anode <= "0111";
		end case;
	end process;
	
	process(CLK)
	begin
		if rising_edge(CLK) then
			prescale_counter <= prescale_counter + 1;
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
	
	process(number)
	begin
		if number(1 downto 0) = "01" then
			decode <= 1;
		elsif number(1 downto 0) = "10" then
			decode <= 2;
		elsif number(1 downto 0) = "11" then
			decode <= 3;
		elsif number(2 downto 0) = "100" then
			decode <= 4;
		elsif number(2 downto 0) = "101" then
			decode <= 5;
		elsif number(2 downto 0) = "110" then
			decode <= 6;
		elsif number(2 downto 0) = "111" then
			decode <= 7;
		elsif number(3 downto 0) = "1000" then
			decode <= 8;
		elsif number(3 downto 0) = "1001" then
			decode <= 9;
		elsif number(3 downto 0) = "0000" then
			decode <= 0;
		end if;
	end process;
	
	process(decode)
	begin
		if o_rx_dv = '1' then
			if decode = 1 then
				seg <= "1111001";
			elsif decode = 2 then
				seg <= "0100100";
			elsif decode = 3 then
				seg <= "0110000";
			elsif decode = 4 then
				seg <= "0011001";
			elsif decode = 5 then
				seg <= "0010010";
			elsif decode = 6 then
				seg <= "0000010";
			elsif decode = 7 then
				seg <= "1111000";
			elsif decode = 8 then
				seg <= "0000000";
			elsif decode = 9 then
				seg <= "0010000";
			else
				seg <= "1000000";
			end if;
		end if;
	end process;
end Behavioral;

