
-- VHDL Instantiation Created from source file piso.vhd -- 22:34:04 11/08/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT piso
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		load : IN std_logic;
		data_in : IN std_logic_vector(7 downto 0);          
		data_out : OUT std_logic
		);
	END COMPONENT;

	Inst_piso: piso PORT MAP(
		clk => ,
		reset => ,
		load => ,
		data_in => ,
		data_out => 
	);


