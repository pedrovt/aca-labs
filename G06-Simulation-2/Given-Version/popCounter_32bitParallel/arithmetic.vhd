LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fullAdder_1bit IS
  PORT (a, b, cIn: IN STD_LOGIC;
        s, cOut:   OUT STD_LOGIC);
END fullAdder_1bit;

ARCHITECTURE logicFunction OF fullAdder_1bit IS
BEGIN
  s <= cIn XOR a XOR b;
  cOut <= (cIn AND (a OR b)) OR (a AND b);
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fullAdder_2bit IS
  PORT (a, b: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
        cIn:  IN STD_LOGIC;
        s:    OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
        cOut: OUT STD_LOGIC);
END fullAdder_2bit;

ARCHITECTURE structure OF fullAdder_2bit IS
  SIGNAL cOutx: STD_LOGIC;
  COMPONENT fullAdder_1bit
    PORT (a, b, cIn: IN STD_LOGIC;
          s, cOut:   OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  fA0: fullAdder_1bit PORT MAP (a(0), b(0), cIn, s(0), cOutx);
  fA1: fullAdder_1bit PORT MAP (a(1), b(1), cOutx, s(1), cOut);
END structure;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fullAdder_3bit IS
  PORT (a, b: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        cIn:  IN STD_LOGIC;
        s:    OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
        cOut: OUT STD_LOGIC);
END fullAdder_3bit;

ARCHITECTURE structure OF fullAdder_3bit IS
  SIGNAL cOutx: STD_LOGIC;
  COMPONENT fullAdder_2bit
    PORT (a, b: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
          cIn:  IN STD_LOGIC;
          s:    OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
          cOut: OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT fullAdder_1bit
    PORT (a, b, cIn: IN STD_LOGIC;
          s, cOut:   OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  fA20: fullAdder_2bit PORT MAP (a(1 DOWNTO 0), b(1 DOWNTO 0), cIn, s(1 DOWNTO 0), cOutx);
  fA11: fullAdder_1bit PORT MAP (a(2), b(2), cOutx, s(2), cOut);
END structure;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fullAdder_4bit IS
  PORT (a, b: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        cIn:  IN STD_LOGIC;
        s:    OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        cOut: OUT STD_LOGIC);
END fullAdder_4bit;

ARCHITECTURE structure OF fullAdder_4bit IS
  SIGNAL cOutx: STD_LOGIC;
  COMPONENT fullAdder_3bit
    PORT (a, b: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
          cIn:  IN STD_LOGIC;
          s:    OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
          cOut: OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT fullAdder_1bit
    PORT (a, b, cIn: IN STD_LOGIC;
          s, cOut:   OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  fA30: fullAdder_3bit PORT MAP (a(2 DOWNTO 0), b(2 DOWNTO 0), cIn, s(2 DOWNTO 0), cOutx);
  fA11: fullAdder_1bit PORT MAP (a(3), b(3), cOutx, s(3), cOut);
END structure;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fullAdder_5bit IS
  PORT (a, b: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
        cIn:  IN STD_LOGIC;
        s:    OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
        cOut: OUT STD_LOGIC);
END fullAdder_5bit;

ARCHITECTURE structure OF fullAdder_5bit IS
  SIGNAL cOutx: STD_LOGIC;
  COMPONENT fullAdder_4bit
    PORT (a, b: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
          cIn:  IN STD_LOGIC;
          s:    OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
          cOut: OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT fullAdder_1bit
    PORT (a, b, cIn: IN STD_LOGIC;
          s, cOut:   OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  fA40: fullAdder_4bit PORT MAP (a(3 DOWNTO 0), b(3 DOWNTO 0), cIn, s(3 DOWNTO 0), cOutx);
  fA11: fullAdder_1bit PORT MAP (a(4), b(4), cOutx, s(4), cOut);
END structure;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY halfAdder_1bit IS
  PORT (a, cIn: IN STD_LOGIC;
        s, cOut:   OUT STD_LOGIC);
END halfAdder_1bit;

ARCHITECTURE logicFunction OF halfAdder_1bit IS
BEGIN
  s <= cIn XOR a;
  cOut <= cIn AND a;
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY halfAdder_2bit IS
  PORT (a:    IN STD_LOGIC_VECTOR (1 DOWNTO 0);
        cIn:  IN STD_LOGIC;
        s:    OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
        cOut: OUT STD_LOGIC);
END halfAdder_2bit;

ARCHITECTURE structure OF halfAdder_2bit IS
  SIGNAL cOutx: STD_LOGIC;
  COMPONENT halfAdder_1bit
    PORT (a, cIn:  IN STD_LOGIC;
          s, cOut: OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  hA0: halfAdder_1bit PORT MAP (a(0), cIn, s(0), cOutx);
  hA1: halfAdder_1bit PORT MAP (a(1), cOutx, s(1), cOut);
END structure;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY halfAdder_3bit IS
  PORT (a   : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        cIn:  IN STD_LOGIC;
        s:    OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
        cOut: OUT STD_LOGIC);
END halfAdder_3bit;

ARCHITECTURE structure OF halfAdder_3bit IS
  SIGNAL cOutx: STD_LOGIC;
  COMPONENT halfAdder_2bit
    PORT (a:    IN STD_LOGIC_VECTOR (1 DOWNTO 0);
          cIn:  IN STD_LOGIC;
          s:    OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
          cOut: OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT halfAdder_1bit
    PORT (a, cIn:  IN STD_LOGIC;
          s, cOut: OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  hA20: halfAdder_2bit PORT MAP (a(1 DOWNTO 0), cIn, s(1 DOWNTO 0), cOutx);
  hA11: halfAdder_1bit PORT MAP (a(2), cOutx, s(2), cOut);
END structure;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY halfAdder_4bit IS
  PORT (a:    IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        cIn:  IN STD_LOGIC;
        s:    OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        cOut: OUT STD_LOGIC);
END halfAdder_4bit;

ARCHITECTURE structure OF halfAdder_4bit IS
  SIGNAL cOutx: STD_LOGIC;
  COMPONENT halfAdder_3bit
    PORT (a:    IN STD_LOGIC_VECTOR (2 DOWNTO 0);
          cIn:  IN STD_LOGIC;
          s:    OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
          cOut: OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT halfAdder_1bit
    PORT (a, cIn:  IN STD_LOGIC;
          s, cOut: OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  hA30: halfAdder_3bit PORT MAP (a(2 DOWNTO 0), cIn, s(2 DOWNTO 0), cOutx);
  hA11: halfAdder_1bit PORT MAP (a(3), cOutx, s(3), cOut);
END structure;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY halfAdder_5bit IS
  PORT (a:    IN STD_LOGIC_VECTOR (4 DOWNTO 0);
        cIn:  IN STD_LOGIC;
        s:    OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
        cOut: OUT STD_LOGIC);
END halfAdder_5bit;

ARCHITECTURE structure OF halfAdder_5bit IS
  SIGNAL cOutx: STD_LOGIC;
  COMPONENT halfAdder_4bit
    PORT (a:    IN STD_LOGIC_VECTOR (3 DOWNTO 0);
          cIn:  IN STD_LOGIC;
          s:    OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
          cOut: OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT halfAdder_1bit
    PORT (a, cIn:  IN STD_LOGIC;
          s, cOut: OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  hA40: halfAdder_4bit PORT MAP (a(3 DOWNTO 0), cIn, s(3 DOWNTO 0), cOutx);
  hA11: halfAdder_1bit PORT MAP (a(4), cOutx, s(4), cOut);
END structure;
