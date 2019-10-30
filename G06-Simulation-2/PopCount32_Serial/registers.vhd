-- ===========================================================
-- Advanced Computer Architecture : Guide 6
-- Population Counter for 32 bits Words - Serial Version
--
-- Registers Library: Registers of 5 and 6 bits
--
-- Author: Pedro Teixeira pedro.teix@ua.pt
-- Version: 1.0 October 30, 2019
-- ===========================================================

LIBRARY registers;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- 5 Bits Register ===========================================
ENTITY reg5Bits IS
	PORT(clk 	: IN STD_LOGIC;
		  nSet	: IN STD_LOGIC;
		  nRst	: IN STD_LOGIC;
		  D 		: IN STD_LOGIC_VECTOR(4 downto 0);
		  Q, nQ	: OUT STD_LOGIC_VECTOR(4 downto 0));
END reg5Bits;


ARCHITECTURE structural OF reg5Bits IS
	COMPONENT flipFlopDPET
		PORT (clk, D		: IN STD_LOGIC;
				nSet, nRst	: IN STD_LOGIC;
				Q, nQ			: OUT STD_LOGIC);
	END COMPONENT;
	
BEGIN
		flipFlopDPET_0: flipFlopDPET PORT MAP (clk, D(0), nSet, nRst, Q(0), nQ(0));
		flipFlopDPET_1: flipFlopDPET PORT MAP (clk, D(1), nSet, nRst, Q(1), nQ(1));
		flipFlopDPET_2: flipFlopDPET PORT MAP (clk, D(2), nSet, nRst, Q(2), nQ(2));
		flipFlopDPET_3: flipFlopDPET PORT MAP (clk, D(3), nSet, nRst, Q(3), nQ(3));
		flipFlopDPET_4: flipFlopDPET PORT MAP (clk, D(4), nSet, nRst, Q(4), nQ(4));
END structural;

-- 6 Bits Register ===========================================
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY reg6Bits IS
	PORT(clk 	: IN STD_LOGIC;
		  nSet	: IN STD_LOGIC;
		  nRst	: IN STD_LOGIC;
		  D 		: IN STD_LOGIC_VECTOR(5 downto 0);
		  Q, nQ	: OUT STD_LOGIC_VECTOR(5 downto 0));
END reg6Bits;


ARCHITECTURE structural OF reg6Bits IS
	COMPONENT flipFlopDPET
		PORT (clk, D		: IN STD_LOGIC;
				nSet, nRst	: IN STD_LOGIC;
				Q, nQ			: OUT STD_LOGIC);
	END COMPONENT;
	
BEGIN
		flipFlopDPET_0: flipFlopDPET PORT MAP (clk, D(0), nSet, nRst, Q(0), nQ(0));
		flipFlopDPET_1: flipFlopDPET PORT MAP (clk, D(1), nSet, nRst, Q(1), nQ(1));
		flipFlopDPET_2: flipFlopDPET PORT MAP (clk, D(2), nSet, nRst, Q(2), nQ(2));
		flipFlopDPET_3: flipFlopDPET PORT MAP (clk, D(3), nSet, nRst, Q(3), nQ(3));
		flipFlopDPET_4: flipFlopDPET PORT MAP (clk, D(4), nSet, nRst, Q(4), nQ(4));
		flipFlopDPET_5: flipFlopDPET PORT MAP (clk, D(5), nSet, nRst, Q(5), nQ(5));
END structural;

