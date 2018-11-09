----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:23:49 11/08/2018 
-- Design Name: 
-- Module Name:    piso - Behavioral 
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

entity piso is
	port(
		clk	:in std_logic;
		reset	:in std_logic;
		load	:in std_logic;
		data_in	:in std_logic_vector(7 downto 0);
		data_out	:out std_logic
	);
end piso;

architecture Behavioral of piso is

begin
	process(clk,reset,load,data_in)
	variable tmp :std_logic_vector(7 downto 0);
	begin
		if reset = '1' then
			tmp := (others => '0');
		elsif load = '1' then
			tmp := data_in;
		elsif rising_edge(clk) then
			data_out <= tmp(7);
			tmp := tmp(6 downto 0) & '0';
		end if;
	end process;
end Behavioral;

