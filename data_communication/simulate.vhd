--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:33:34 11/02/2018
-- Design Name:   
-- Module Name:   /home/roby-jacob/hardware-projects/data_communication/simulate.vhd
-- Project Name:  data_communication
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: test_receiver
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
 
ENTITY simulate IS
END simulate;
 
ARCHITECTURE behavior OF simulate IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT test_receiver
    PORT(
         clk : IN  std_logic;
         Seg7 : OUT  std_logic_vector(6 downto 0);
         Seg_AN : OUT  std_logic_vector(3 downto 0);
         RX : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal RX : std_logic := '0';

 	--Outputs
   signal Seg7 : std_logic_vector(6 downto 0);
   signal Seg_AN : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: test_receiver PORT MAP (
          clk => clk,
          Seg7 => Seg7,
          Seg_AN => Seg_AN,
          RX => RX
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	

--      wait for clk_period*10;

      -- insert stimulus here 
		RX <= '0';
		wait for 50 ns;
		RX <= '1';
		wait for 50 ns;
		

--      wait;
   end process;

END;
