-- ===========================================================
-- Advanced Computer Architecture : Guide 6
-- Population Counter for 32 bits Words - Parallel Version
--
-- Population Counter of 4 Bits
--
-- Author: Pedro Teixeira pedro.teix@ua.pt
-- Version: 1.0 October 30, 2019
-- ===========================================================

LIBRARY popCounters;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY popCount4Bits IS
	PORT(	dIn: 	 IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		   count: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END popCount4Bits;

ARCHITECTURE logicalFunction of popCount4Bits IS
BEGIN
	count(0) <= dIn(3) xor dIn(2) xor dIn(1) xor dIn(0);
	count(1) <= ((dIn(3) and (dIn(2) xor dIn(1))) or (dIn(2) and (dIn(1) xor dIn(0))) or (dIn(0) and (dIn(3) xor dIn(1)))); 
	count(2) <= dIn(3) and dIn(2) and dIn(1) and dIn(0);
END logicalFunction;