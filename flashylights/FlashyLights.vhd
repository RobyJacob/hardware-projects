----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:30:41 10/24/2018 
-- Design Name: 
-- Module Name:    FlashyLights - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FlashyLights is
	Port(
		CLK	:in std_logic;
		LED	:out std_logic_vector(7 downto 0)
	);
end FlashyLights;

architecture Behavioral of FlashyLights is
	component counter30
		Port(
			clk	:in std_logic;
			q	:out std_logic_vector(9 downto 0)
		);
	end component;
	
	component memory
		Port(
			clka	:in std_logic;
			addra	:in std_logic_vector(9 downto 0);
			douta	:out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal count	:std_logic_vector(9 downto 0);
begin
	addr_count	:	counter30
	port map(
		clk => CLK,
		q => count
	);
	
	rom_memory	:	memory
	port map(
		clka => clk,
		addra => count(9 downto 0),
		douta => LED
	);
end Behavioral;

