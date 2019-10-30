-- ===========================================================
-- Advanced Computer Architecture : Guide 6
-- Population Counter for 32 bits Words - Serial Version
--
-- Arithemtic Library: Half Adder of 1 and 5 bits
--
-- Author: Pedro Teixeira pedro.teix@ua.pt
-- Version: 1.0 October 30, 2019
-- ===========================================================

LIBRARY arithmetic;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Half Adder 1 Bits ##########################################
ENTITY halfAdder1bit IS
	PORT(	a		: IN STD_LOGIC;
			cIn	: IN STD_LOGIC;
			cOut	: OUT STD_LOGIC;
			s		: OUT STD_LOGIC);
END halfAdder1bit;

ARCHITECTURE logicalFunction of halfAdder1bit IS
BEGIN
	cOut <= a and cIn;
	s <= a xor cIn;
END logicalFunction;

-- Half Adder 5 Bits ##########################################
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY halfAdder5bit IS
	PORT( a 		: IN STD_LOGIC_VECTOR(4 downto 0);
			cIn	: IN STD_LOGIC;
			cOut	: OUT STD_LOGIC;
			s		: OUT STD_LOGIC_VECTOR(4 downto 0));
END halfAdder5bit;

ARCHITECTURE structural of halfAdder5bit IS
	SIGNAL cOut0, cOut1, cOut2, cOut3: std_logic;
	COMPONENT halfAdder1bit IS
		PORT(	a		: IN STD_LOGIC;
				cIn	: IN STD_LOGIC;
				cOut	: OUT STD_LOGIC;
				s		: OUT STD_LOGIC);
	END COMPONENT;
BEGIN
	adder0: halfAdder1bit PORT MAP (a(0), cIn, 	cOut0, s(0));
	adder1: halfAdder1bit PORT MAP (a(1), cOut0, cOut1, s(1));
	adder2: halfAdder1bit PORT MAP (a(2), cOut1, cOut2, s(2));	
	adder3: halfAdder1bit PORT MAP (a(3), cOut2, cOut3, s(3));	
	adder4: halfAdder1bit PORT MAP (a(4), cOut3, cOut,  s(4));	
END structural;