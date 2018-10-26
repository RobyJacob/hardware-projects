----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:54:14 10/01/2018 
-- Design Name: 
-- Module Name:    switch_LED - Behavioral 
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

entity switch_LED is
    Port (  CLK      : in  std_logic;
--				enable     : in  std_logic;
				SWITCH		: in std_logic_vector(1 downto 0);
				LED  : out std_logic
			  );
end switch_LED;

architecture Behavioral of switch_LED is

	-- Constants to create the frequencies needed:
  -- Formula is: (25 MHz / 100 Hz * 50% duty cycle)
  -- So for 100 Hz: 25,000,000 / 100 * 0.5 = 125,000
  constant c_CNT_100HZ : natural := 125000;
  constant c_CNT_50HZ  : natural := 250000;
  constant c_CNT_10HZ  : natural := 1250000;
  constant c_CNT_1HZ   : natural := 12500000;
  
  signal r_CNT_100HZ : natural range 0 to c_CNT_100HZ;
  signal r_CNT_50HZ  : natural range 0 to c_CNT_50HZ;
  signal r_CNT_10HZ  : natural range 0 to c_CNT_10HZ;
  signal r_CNT_1HZ   : natural range 0 to c_CNT_1HZ;
  
  signal r_TOGGLE_100HZ : std_logic := '0';
  signal r_TOGGLE_50HZ  : std_logic := '0';
  signal r_TOGGLE_10HZ  : std_logic := '0';
  signal r_TOGGLE_1HZ   : std_logic := '0';
  
   signal w_LED_SELECT : std_logic;
begin

p_100_HZ : process (CLK) is
  begin
    if rising_edge(CLK) then
      if r_CNT_100HZ = c_CNT_100HZ-1 then  -- -1, since counter starts at 0
        r_TOGGLE_100HZ <= not r_TOGGLE_100HZ;
        r_CNT_100HZ    <= 0;
      else
        r_CNT_100HZ <= r_CNT_100HZ + 1;
      end if;
    end if;
  end process p_100_HZ;
 
 
  p_50_HZ : process (CLK) is
  begin
    if rising_edge(CLK) then
      if r_CNT_50HZ = c_CNT_50HZ-1 then  -- -1, since counter starts at 0
        r_TOGGLE_50HZ <= not r_TOGGLE_50HZ;
        r_CNT_50HZ    <= 0;
      else
        r_CNT_50HZ <= r_CNT_50HZ + 1;
      end if;
    end if;
  end process p_50_HZ;
 
   
  p_10_HZ : process (CLK) is
  begin
    if rising_edge(CLK) then
      if r_CNT_10HZ = c_CNT_10HZ-1 then  -- -1, since counter starts at 0
        r_TOGGLE_10HZ <= not r_TOGGLE_10HZ;
        r_CNT_10HZ    <= 0;
      else
        r_CNT_10HZ <= r_CNT_10HZ + 1;
      end if;
    end if;
  end process p_10_HZ;
 
   
  p_1_HZ : process (CLK) is
  begin
    if rising_edge(CLK) then
      if r_CNT_1HZ = c_CNT_1HZ-1 then  -- -1, since counter starts at 0
        r_TOGGLE_1HZ <= not r_TOGGLE_1HZ;
        r_CNT_1HZ    <= 0;
      else
        r_CNT_1HZ <= r_CNT_1HZ + 1;
      end if;
    end if;
  end process p_1_HZ;
 
   
  -- Create a multiplexor based on switch inputs
  w_LED_SELECT <= r_TOGGLE_100HZ when (SWITCH(0) = '0' and SWITCH(1) = '0') else
                  r_TOGGLE_50HZ  when (SWITCH(0) = '0' and SWITCH(1) = '1') else
                  r_TOGGLE_10HZ  when (SWITCH(0) = '1' and SWITCH(1) = '0') else
                  r_TOGGLE_1HZ;
 
   
  -- Only allow o_led_drive to drive when i_enable is high (and gate).
  LED <= w_LED_SELECT;
end Behavioral;

