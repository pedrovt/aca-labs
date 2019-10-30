-- ===========================================================
-- Advanced Computer Architecture : Guide 6
-- Population Counter for 32 bits Words - Parallel Version
--
-- Arithemtic Library: Full Adder of 1, 3, 4 and 5 bits
--
-- Author: Pedro Teixeira pedro.teix@ua.pt
-- Version: 1.0 October 30, 2019
-- ===========================================================

LIBRARY arithmetic;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Full Adder 1 Bit ##########################################
ENTITY fullAdder1bit IS
	PORT(	a		: IN STD_LOGIC;
			b		: IN STD_LOGIC;
			cIn	: IN STD_LOGIC;
			cOut	: OUT STD_LOGIC;
			s		: OUT STD_LOGIC);
END fullAdder1bit;

ARCHITECTURE logicalFunction of fullAdder1bit IS
BEGIN
	cOut <= ((a and b) or (a and cIn) or (b and cIn));
	s <= (a xor b xor cIn);
END logicalFunction;

-- Full Adder 3 Bits ##########################################
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fullAdder3bit IS
	PORT( a 		: IN STD_LOGIC_VECTOR(2 downto 0);
			b		: IN STD_LOGIC_VECTOR(2 downto 0);
			cIn	: IN STD_LOGIC;
			cOut	: OUT STD_LOGIC;
			s		: OUT STD_LOGIC_VECTOR(2 downto 0));
END fullAdder3bit;

ARCHITECTURE structural of fullAdder3bit IS
	SIGNAL cOut0, cOut1: std_logic;
	COMPONENT fullAdder1bit IS
		PORT(	a		: IN STD_LOGIC;
				b		: IN STD_LOGIC;
				cIn	: IN STD_LOGIC;
				cOut	: OUT STD_LOGIC;
				s		: OUT STD_LOGIC);
	END COMPONENT;
BEGIN
	adder0: fullAdder1bit PORT MAP (a(0), b(0), cIn, 	cOut0, s(0));
	adder1: fullAdder1bit PORT MAP (a(1), b(1), cOut0, 	cOut1, s(1));
	adder2: fullAdder1bit PORT MAP (a(2), b(2), cOut1, 	cOut,  s(2));	
END structural;


-- Full Adder 4 Bits ##########################################
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fullAdder4bit IS
	PORT( a 		: IN STD_LOGIC_VECTOR(3 downto 0);
			b		: IN STD_LOGIC_VECTOR(3 downto 0);
			cIn	: IN STD_LOGIC;
			cOut	: OUT STD_LOGIC;
			s		: OUT STD_LOGIC_VECTOR(3 downto 0));
END fullAdder4bit;

ARCHITECTURE structural of fullAdder4bit IS
	SIGNAL cOut0, cOut1, cOut2: std_logic;
	COMPONENT fullAdder1bit IS
		PORT(	a		: IN STD_LOGIC;
				b		: IN STD_LOGIC;
				cIn	: IN STD_LOGIC;
				cOut	: OUT STD_LOGIC;
				s		: OUT STD_LOGIC);
	END COMPONENT;
BEGIN
	adder0: fullAdder1bit PORT MAP (a(0), b(0), cIn, 	cOut0, s(0));
	adder1: fullAdder1bit PORT MAP (a(1), b(1), cOut0, cOut1, s(1));
	adder2: fullAdder1bit PORT MAP (a(2), b(2), cOut1, cOut2, s(2));	
	adder3: fullAdder1bit PORT MAP (a(3), b(3), cOut2, cOut,  s(3));	
END structural;

-- Full Adder 5 Bits ##########################################
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fullAdder5bit IS
	PORT( a 		: IN STD_LOGIC_VECTOR(4 downto 0);
			b		: IN STD_LOGIC_VECTOR(4 downto 0);
			cIn	: IN STD_LOGIC;
			cOut	: OUT STD_LOGIC;
			s		: OUT STD_LOGIC_VECTOR(4 downto 0));
END fullAdder5bit;

ARCHITECTURE structural of fullAdder5bit IS
	SIGNAL cOut0, cOut1, cOut2, cOut3: std_logic;
	COMPONENT fullAdder1bit IS
		PORT(	a		: IN STD_LOGIC;
				b		: IN STD_LOGIC;
				cIn	: IN STD_LOGIC;
				cOut	: OUT STD_LOGIC;
				s		: OUT STD_LOGIC);
	END COMPONENT;
BEGIN
	adder0: fullAdder1bit PORT MAP (a(0), b(0), cIn, 	cOut0, s(0));
	adder1: fullAdder1bit PORT MAP (a(1), b(1), cOut0, cOut1, s(1));
	adder2: fullAdder1bit PORT MAP (a(2), b(2), cOut1, cOut2, s(2));	
	adder3: fullAdder1bit PORT MAP (a(3), b(3), cOut2, cOut3, s(3));	
	adder4: fullAdder1bit PORT MAP (a(4), b(4), cOut3, cOut,  s(4));	
END structural;