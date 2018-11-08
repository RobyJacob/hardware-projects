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
	constant prescaler	:natural := 4000;
	signal prescale_counter	:natural range 0 to prescaler;
	signal decode	:natural;
	signal byte_select	:std_logic;
	signal dout	:std_logic_vector(15 downto 0) := (others => '0');
	signal seg	:std_logic_vector(6 downto 0);
--	signal count_byte	:natural;
--	signal reset	:std_logic;
	signal write_en	:std_logic;
	signal read_en	:std_logic;
	signal write_ack	:std_logic;
	signal number	:std_logic_vector(7 downto 0);
--	signal read_data_count	:std_logic_vector(1 downto 0);
--	signal write_data_count	:std_logic_vector(1 downto 0);
	signal read_clk	:std_logic;
	signal write_count	:natural;
	signal read_count	:natural;
	signal full	:std_logic;
	signal rst	:std_logic;
--	signal empty	:std_logic;

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
		 rst : IN STD_LOGIC;
		 wr_clk : IN STD_LOGIC;
		 rd_clk : IN STD_LOGIC;
		 din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 wr_en : IN STD_LOGIC;
		 rd_en : IN STD_LOGIC;
--		 dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 full : OUT STD_LOGIC;
		 wr_ack : OUT STD_LOGIC
--		 overflow : OUT STD_LOGIC;
--		 empty : OUT STD_LOGIC
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
		 rst => rst,
		 wr_clk => CLK,
		 rd_clk => CLK,
		 din => data_out,
		 wr_en => write_en,
		 rd_en => read_en,
--		 dout => dout,
		 full => full,
		 wr_ack => write_ack
--		 overflow => overflow,
--		 empty => empty
	  );

	anode(3 downto 2) <= "11";
	Seg_AN <= anode;
	Seg7 <= seg;

	process(full)
	begin
		if full = '1' then
			rst <= '1';
		else
			rst <= '0';
		end if;
	end process;

--	process(CLK)
--	begin
--		if rising_edge(CLK) then
--			write_count <= write_count + 1;
--			if write_count = 32000 then
--				write_count <= 0;
--				-- write_en set to 500Hz
--				write_en <= not write_en;
----				read_clk <= not read_clk;
----				read_en <= not read_en;
--			end if;
--		end if;
--	end process;

--	process(CLK)
--	begin
--		if rising_edge(CLK) then
--			if read_count = 1666 then
--				read_count <= 0;
--				-- read_en set to 1KHz
--				read_en <= not read_en;
--			else
--				read_count <= read_count + 1;
--			end if;
--		end if;
--	end process;

--	process(read_clk)
--	begin
--		if rising_edge(read_clk) then
--			write_en <= not write_en;
--		end if;
--	end process;

	process(byte_select,anode,o_rx_dv,dout)
	begin
--		number <= dout(15 downto 8);
		case anode(1 downto 0) is
				when "10" => if o_rx_dv = '1' then
--									if byte_select = '0' then
											number <= dout(7 downto 0);
--									 end if;
								 end if;
				when "01" => if o_rx_dv = '1' then
--									 if byte_select = '1' then
											number <= dout(15 downto 8);
--									 end if;
								 end if;
				when others => number <= x"00";
		end case;
--		if byte_select = '0' then
--			number <= dout(7 downto 0);
--		elsif byte_select = '1' then
--			 number <= dout(15 downto 8);
--		end if;
--			number <= dout(15 downto 8);
	end process;

	process(anode_count)
	begin
		case anode_count is
			when 1 => anode(1 downto 0) <= "10";
						byte_select <= '0';
--						number <= dout(7 downto 0);
			when others => anode(1 downto 0) <= "01";
						byte_select <= '1';
--						number <= dout(15 downto 8);
		end case;
	end process;

	process(RX)
	begin
		if RX = '0' then
			dout(7 downto 0) <= data_out;
			dout(7 downto 0) <= std_logic_vector(shift_left(unsigned(dout(7 downto 0)),8));
		end if;
	end process;

	process(CLK)
	begin
		if rising_edge(CLK) then
--			write_en <= not write_en;
			prescale_counter <= prescale_counter + 1;
			if prescale_counter = prescaler then
				prescale_counter <= 0;
				if anode_count = 2 then
					anode_count <= 0;
				else
					anode_count <= anode_count + 1;
				end if;
			end if;
		end if;
	end process;

	process(number)
	begin
			if number(3) = '0' and number(2 downto 0) = "000" then
--				decode <= 0;
				seg <= "1000000";
			elsif number(3) = '0' and number(2 downto 0) = "001" then
--				decode <= 1;
				seg <= "1111001";
			elsif number(3) = '0' and number(2 downto 0) = "010" then
--				decode <= 2;
				seg <= "0100100";
			elsif number(3) = '0' and number(2 downto 0) = "011" then
--				decode <= 3;
				seg <= "0110000";
			elsif number(3) = '0' and number(2 downto 0) = "100" then
--				decode <= 4;
				seg <= "0011001";
			elsif number(3) = '0' and number(2 downto 0) = "101" then
--				decode <= 5;
				seg <= "0010010";
			elsif number(3) = '0' and number(2 downto 0) = "110" then
--				decode <= 6;
				seg <= "0000010";
			elsif number(3) = '0' and number(2 downto 0) = "111" then
--				decode <= 7;
				seg <= "1111000";
			elsif number(3) = '1' and number(2 downto 0) = "000" then
--				decode <= 8;
				seg <= "0000000";
			elsif number(3) = '1' and number(2 downto 0) = "001" then
--				decode <= 9;
				seg <= "0010000";
			end if;
	end process;

--	process(decode)
--	begin
----		if o_rx_dv = '1' then
----			if decode = 1 then
------				seg <= "1111001";
----			elsif decode = 2 then
------				seg <= "0100100";
--			elsif decode = 3 then
--				seg <= "0110000";
--			elsif decode = 4 then
--				seg <= "0011001";
--			elsif decode = 5 then
--				seg <= "0010010";
--			elsif decode = 6 then
--				seg <= "0000010";
--			elsif decode = 7 then
--				seg <= "1111000";
--			elsif decode = 8 then
--				seg <= "0000000";
--			elsif decode = 9 then
--				seg <= "0010000";
--			else
--				seg <= "1000000";
--			end if;
----		end if;
--	end process;
end Behavioral;
