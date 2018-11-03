--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:08:50 11/02/2018
-- Design Name:   
-- Module Name:   /home/roby-jacob/hardware-projects/serial-communication/uart_tb.vhd
-- Project Name:  serial-communication
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UART_RX
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY uart_tb IS
END uart_tb;
 
ARCHITECTURE behavior OF uart_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_RX
    PORT(
         i_Clk : IN  std_logic;
         i_RX_Serial : IN  std_logic;
         o_RX_DV : OUT  std_logic;
         o_RX_Byte : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i_Clk : std_logic := '0';
   signal i_RX_Serial : std_logic := '0';

 	--Outputs
   signal o_RX_DV : std_logic;
   signal o_RX_Byte : std_logic_vector(7 downto 0);

   -- Clock period definitions
--   constant i_Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_RX PORT MAP (
          i_Clk => i_Clk,
          i_RX_Serial => i_RX_Serial,
          o_RX_DV => o_RX_DV,
          o_RX_Byte => o_RX_Byte
        );

   -- Clock process definitions
--   i_Clk_process :process
--   begin
--		i_Clk <= '0';
--		wait for i_Clk_period/2;
--		i_Clk <= '1';
--		wait for i_Clk_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	

--      wait for i_Clk_period*10;

      -- insert stimulus here 
		i_RX_Serial <= '1';
		o_RX_Byte <= x"01";
		wait for 100 ns;
--      wait;
   end process;

END;
