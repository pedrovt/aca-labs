-- ===========================================================
-- Advanced Computer Architecture : Guide 6
-- Population Counter for 32 bits Words - Parallel Version
--
-- Author: Pedro Teixeira pedro.teix@ua.pt
-- Version: 1.0 October 30, 2019
-- ===========================================================

LIBRARY popCounters;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY popCount32_Parallel IS
  PORT (dIn: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  count: OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
        );
END popCount32_Parallel;

ARCHITECTURE structural OF popCount32_Parallel IS
	COMPONENT fullAdder3bit
	PORT( a 		: IN STD_LOGIC_VECTOR(2 downto 0);
			b		: IN STD_LOGIC_VECTOR(2 downto 0);
			cIn	: IN STD_LOGIC;
			cOut	: OUT STD_LOGIC;
			s		: OUT STD_LOGIC_VECTOR(2 downto 0));
	END COMPONENT;
	
	COMPONENT fullAdder4bit
	PORT( a 		: IN STD_LOGIC_VECTOR(3 downto 0);
			b		: IN STD_LOGIC_VECTOR(3 downto 0);
			cIn	: IN STD_LOGIC;
			cOut	: OUT STD_LOGIC;
			s		: OUT STD_LOGIC_VECTOR(3 downto 0));
	END COMPONENT;
	
	COMPONENT fullAdder5bit
	PORT( a 		: IN STD_LOGIC_VECTOR(4 downto 0);
			b		: IN STD_LOGIC_VECTOR(4 downto 0);
			cIn	: IN STD_LOGIC;
			cOut	: OUT STD_LOGIC;
			s		: OUT STD_LOGIC_VECTOR(4 downto 0));
	END COMPONENT;
	
	COMPONENT popCount4Bits
	PORT(	dIn: 	 IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		   count: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
	END COMPONENT;
	
	SIGNAL count1_1, count1_2, count1_3, count1_4, count1_5, count1_6, count1_7, count1_8: STD_LOGIC_VECTOR(2 downto 0);		-- output of population counters of 4 bits each
	SIGNAL count2_1, count2_2, count2_3, count2_4: STD_LOGIC_VECTOR(2 downto 0); 															-- output of full adders of level 1
	SIGNAL count3_1, count3_2: STD_LOGIC_VECTOR(3 downto 0);																						-- output of full adders of level 2
	
	SIGNAL cOut_2_1, cOut_2_2, cOut_2_3, cOut_2_4: STD_LOGIC;																					-- carry out of full adders of level 1
	SIGNAL cOut_3_1, cOut_3_2: STD_LOGIC;																												-- carry out of full adders of level 2
																																													
BEGIN
	pc4_1: popCount4Bits PORT MAP (dIn(31 downto 28), count1_1);
	pc4_2: popCount4Bits PORT MAP (dIn(27 downto 24), count1_2);
	pc4_3: popCount4Bits PORT MAP (dIn(23 downto 20), count1_3);
	pc4_4: popCount4Bits PORT MAP (dIn(19 downto 16), count1_4);
	pc4_5: popCount4Bits PORT MAP (dIn(15 downto 12), count1_5);
	pc4_6: popCount4Bits PORT MAP (dIn(11 downto  8), count1_6);
	pc4_7: popCount4Bits PORT MAP (dIn(7  downto  4), count1_7);
	pc4_8: popCount4Bits PORT MAP (dIn(3  downto  0), count1_8);
	
	fullAdder3bit_1: fullAdder3bit PORT MAP (count1_1, count1_2, '0', cOut_2_1, count2_1);
	fullAdder3bit_2: fullAdder3bit PORT MAP (count1_3, count1_4, '0', cOut_2_2, count2_2);
	fullAdder3bit_3: fullAdder3bit PORT MAP (count1_5, count1_6, '0', cOut_2_3, count2_3);
	fullAdder3bit_4: fullAdder3bit PORT MAP (count1_7, count1_8, '0', cOut_2_4, count2_4);
	
	fullAdder4bit_1: fullAdder4bit PORT MAP (a(3) 				=> cOut_2_1,
														  a(2 downto 0) 	=> count2_1,
														  b(3) 				=> cOut_2_2,
														  b(2 downto 0) 	=> count2_2,
														  cIn 				=> '0',
														  cout 				=> cOut_3_1,
														  s 					=> count3_1);
														  
	fullAdder4bit_2: fullAdder4bit PORT MAP (a(3) 				=> cOut_2_3,
														  a(2 downto 0) 	=> count2_3,
														  b(3) 				=> cOut_2_4,
														  b(2 downto 0) 	=> count2_4,
														  cIn 				=> '0',
														  cout 				=> cOut_3_2,
														  s	 				=> count3_2);
	
	fullAdder5bit_1: fullAdder5bit PORT MAP (a(4) 				=> cOut_3_1,
														  a(3 downto 0) 	=> count3_1,
														  b(4) 				=> cOut_3_2,
														  b(3 downto 0) 	=> count3_2,
														  cIn 				=> '0',
														  cout 				=> count(5),
														  s	 				=> count(4 downto 0));

END structural;


