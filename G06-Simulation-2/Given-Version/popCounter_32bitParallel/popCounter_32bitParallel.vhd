LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY popCounter_4bit IS
  PORT (d: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        c: OUT STD_LOGIC_VECTOR (2 DOWNTO 0));
END popCounter_4bit;

ARCHITECTURE logicFunction OF popCounter_4bit IS
BEGIN
  c(0) <= (d(3) XOR d(2)) XOR (d(1) XOR d(0));
  c(1) <= ((d(3) XOR d(2)) AND (d(1) OR d(0))) OR ((d(3) AND d(2)) AND (d(1) NAND d(0))) OR (d(3) NOR (d(1) NAND d(0)));
  c(2) <= (d(3) AND d(2)) AND (d(1) AND d(0));
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY arithmetic;
USE arithmetic.all;

ENTITY popCounter_32bitParallel IS
  PORT (d: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
        c: OUT STD_LOGIC_VECTOR (5 DOWNTO 0));
END popCounter_32bitParallel;

ARCHITECTURE structure OF popCounter_32bitParallel IS
  SIGNAL iSg0: STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL iSg1: STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL iSg2: STD_LOGIC_VECTOR (9 DOWNTO 0);
  COMPONENT popCounter_4bit
    PORT (d: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
          c: OUT STD_LOGIC_VECTOR (2 DOWNTO 0));
  END COMPONENT;
  COMPONENT fullAdder_3bit
    PORT (a: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
          b: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
          cIn: IN STD_LOGIC;
          s: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
		    cOut: OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT fullAdder_4bit
    PORT (a: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
          b: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
          cIn: IN STD_LOGIC;
          s: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		    cOut: OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT fullAdder_5bit
    PORT (a: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
          b: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
          cIn: IN STD_LOGIC;
          s: OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
		    cOut: OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  pC40: popCounter_4bit PORT MAP (d(3 DOWNTO 0),   iSg0(2 DOWNTO 0));
  pC41: popCounter_4bit PORT MAP (d(7 DOWNTO 4),   iSg0(5 DOWNTO 3));
  pC42: popCounter_4bit PORT MAP (d(11 DOWNTO 8),  iSg0(8 DOWNTO 6));
  pC43: popCounter_4bit PORT MAP (d(15 DOWNTO 12), iSg0(11 DOWNTO 9));
  pC44: popCounter_4bit PORT MAP (d(19 DOWNTO 16), iSg0(14 DOWNTO 12));
  pC45: popcounter_4bit PORT MAP (d(23 DOWNTO 20), iSg0(17 DOWNTO 15));
  pC46: popCounter_4bit PORT MAP (d(27 DOWNTO 24), iSg0(20 DOWNTO 18));
  pC47: popCounter_4bit PORT MAP (d(31 DOWNTO 28), iSg0(23 DOWNTO 21));
  fA30: fullAdder_3bit PORT MAP (iSg0(2 DOWNTO 0),   iSg0(5 DOWNTO 3),   '0', iSg1(2 DOWNTO 0),   iSg1(3));
  fA31: fullAdder_3bit PORT MAP (iSg0(8 DOWNTO 6),   iSg0(11 DOWNTO 9),  '0', iSg1(6 DOWNTO 4),   iSg1(7));
  fA32: fullAdder_3bit PORT MAP (iSg0(14 DOWNTO 12), iSg0(17 DOWNTO 15), '0', iSg1(10 DOWNTO 8),  iSg1(11));
  fA33: fullAdder_3bit PORT MAP (iSg0(20 DOWNTO 18), iSg0(23 DOWNTO 21), '0', iSg1(14 DOWNTO 12), iSg1(15));
  fA40: fullAdder_4bit PORT MAP (iSg1(3 DOWNTO 0),   iSg1(7 DOWNTO 4),   '0', iSg2(3 DOWNTO 0),   iSg2(4));
  fA41: fullAdder_4bit PORT MAP (iSg1(11 DOWNTO 8),  iSg1(15 DOWNTO 12), '0', iSg2(8 DOWNTO 5),   iSg2(9));
  fA50: fullAdder_5bit PORT MAP (iSg2(4 DOWNTO 0),   iSg2(9 DOWNTO 5),   '0', c(4 DOWNTO 0),      c(5));
END structure;
