
-- VHDL Instantiation Created from source file UART_RX.vhd -- 17:30:48 11/03/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT UART_RX
	PORT(
		i_Clk : IN std_logic;
		i_RX_Serial : IN std_logic;          
		o_RX_DV : OUT std_logic;
		o_RX_Byte : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_UART_RX: UART_RX PORT MAP(
		i_Clk => ,
		i_RX_Serial => ,
		o_RX_DV => ,
		o_RX_Byte => 
	);


