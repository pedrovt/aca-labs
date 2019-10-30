-- ===========================================================
-- Advanced Computer Architecture : Guide 6
-- Population Counter for 32 bits Words - Serial Version 
--
-- Author: Pedro Teixeira pedro.teix@ua.pt
-- Version: 1.0 October 30, 2019
-- ===========================================================

LIBRARY popCounters;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY popCount32_Serial IS
  PORT (clk	 	: IN STD_LOGIC;
		  dIn		: IN STD_LOGIC;
		  count	: OUT STD_LOGIC_VECTOR(5 DOWNTO 0));
END popCount32_Serial;

ARCHITECTURE structural OF popCount32_Serial IS
	COMPONENT flipFlopDPET
		PORT (clk, D		: IN STD_LOGIC;
				nSet, nRst	: IN STD_LOGIC;
				Q, nQ			: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT reg5Bits
	PORT(clk 	: IN STD_LOGIC;
		  nSet	: IN STD_LOGIC;
		  nRst	: IN STD_LOGIC;
		  D 		: IN STD_LOGIC_VECTOR(4 downto 0);
		  Q, nQ	: OUT STD_LOGIC_VECTOR(4 downto 0));
	END COMPONENT;
	
	COMPONENT reg6Bits
	PORT(clk 	: IN STD_LOGIC;
		  nSet	: IN STD_LOGIC;
		  nRst	: IN STD_LOGIC;
		  D 		: IN STD_LOGIC_VECTOR(5 downto 0);
		  Q, nQ	: OUT STD_LOGIC_VECTOR(5 downto 0));
	END COMPONENT;

	COMPONENT halfAdder5bit IS
		PORT(	a				: IN STD_LOGIC_VECTOR(4 downto 0);
				cIn			: IN STD_LOGIC;
				cOut			: OUT STD_LOGIC;
				s				: OUT STD_LOGIC_VECTOR(4 downto 0));
	END COMPONENT;

	SIGNAL nSet, nRst, nRst1 : STD_LOGIC;
	SIGNAL clk1 : STD_LOGIC;
	SIGNAL halfAdder_cOut, ff_Q : STD_LOGIC;
	SIGNAL reg5_Q, halfAdder_s : STD_LOGIC_VECTOR(4 downto 0);

BEGIN
	-- Controlpath
	
	-- Datapath
	datapath_flipFlopD: flipFlopDPET PORT MAP (clk, dIn, nSet, nRst, ff_Q, open);					--Ports: clk, D, nSet, nRst, Q, nQ
	datapath_halfAdder: halfAdder5bit PORT MAP (reg5_Q, ff_Q, halfAdder_cOut, halfAdder_s); 	--Ports: a, cIn, cOut, s
	datapath_reg5		: reg5Bits PORT MAP (clk, nSet, nRst, halfAdder_s, reg5_Q, open);			--Ports: clk, nSet, nRst, D, Q, nQ
	datapath_reg6		: reg6Bits PORT MAP (clk 	=> clk1, 
														nSet	=> nSet,
														nRst	=> nRst,
														D(5)	=> halfAdder_cOut,
														D(4 downto 0) => halfAdder_s,
														Q => count,
														nQ => open);
	
END structural;


