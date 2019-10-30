LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY flipFlopD IS
  PORT (clk, D: IN STD_LOGIC;
        nSet, nRst: IN STD_LOGIC;
        Q, nQ: OUT STD_LOGIC);
END flipFlopD;

ARCHITECTURE logicFunction OF flipFlopD IS
SIGNAL ckQ, nckQ: STD_LOGIC;
SIGNAL nTrigSet, nTrigRst: STD_LOGIC;
SIGNAL lock, nLock: STD_LOGIC;
SIGNAL iQ, iNQ: STD_LOGIC;
BEGIN
  ckQ <= NOT (NOT (clk AND nTrigSet AND nTrigRst AND nSet AND nRst AND lock) AND nckQ);
  nckQ <= NOT (clk AND nTrigSet AND nTrigRst AND nSet AND nRst AND ckQ);
  nTrigSet <= NOT (ckQ AND D AND nRst);
  nTrigRst <= NOT (ckQ AND NOT D AND nSet);
  lock <= NOT (clk AND nLock);
  nLock <= NOT (NOT (clk AND NOT (nTrigSet AND nTrigRst AND nSet AND nRst)) AND lock);
  iQ <= NOT (nTrigSet AND nSet AND iNQ);
  iNQ <= NOT (nTrigRst AND nRst AND iQ);
  Q <= iQ;
  NQ <= iNQ;
END logicFunction;
