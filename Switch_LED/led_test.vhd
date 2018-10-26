----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:29:21 10/14/2018 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity led_test is
	Port(
		SWITCH	: in std_logic_vector(1 downto 0);
		LED		: out std_logic_vector(1 downto 0)
	);
end led_test;

architecture Behavioral of led_test is

begin

	LED(0) <= SWITCH(0) and SWITCH(1);
	LED(1) <= SWITCH(0) or SWITCH(1);

end Behavioral;

