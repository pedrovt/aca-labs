LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mult2to1 IS
  PORT (x0, x1: IN STD_LOGIC;
        s: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END mult2to1;

ARCHITECTURE logicFunction OF mult2to1 IS
BEGIN
  y <= (x0 AND NOT s) OR (x1 AND s) AFTER 4ns;
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY blk8of2to1mult IS
  PORT (x00, x01: IN STD_LOGIC;
        x10, x11: IN STD_LOGIC;
        x20, x21: IN STD_LOGIC;
        x30, x31: IN STD_LOGIC;
        x40, x41: IN STD_LOGIC;
        x50, x51: IN STD_LOGIC;
        x60, x61: IN STD_LOGIC;
        x70, x71: IN STD_LOGIC;
        sel: IN STD_LOGIC;
        y0, y1, y2, y3, y4, y5, y6, y7: OUT STD_LOGIC);
END blk8of2to1mult;

ARCHITECTURE structure OF blk8of2to1mult IS
  COMPONENT mult2to1
    PORT (x0, x1: IN STD_LOGIC;
          s: IN STD_LOGIC;
          y: OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  mult0: mult2to1 PORT MAP (x00, x01, sel, y0);
  mult1: mult2to1 PORT MAP (x10, x11, sel, y1);
  mult2: mult2to1 PORT MAP (x20, x21, sel, y2);
  mult3: mult2to1 PORT MAP (x30, x31, sel, y3);
  mult4: mult2to1 PORT MAP (x40, x41, sel, y4);
  mult5: mult2to1 PORT MAP (x50, x51, sel, y5);
  mult6: mult2to1 PORT MAP (x60, x61, sel, y6);
  mult7: mult2to1 PORT MAP (x70, x71, sel, y7);
END structure;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY blk12ofblk8of2to1mult IS
  PORT (dIn: IN STD_LOGIC_VECTOR (95 DOWNTO 0);
        sel: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        dOut: OUT STD_LOGIC_VECTOR (11 DOWNTO 0));
END blk12ofblk8of2to1mult;

ARCHITECTURE structure OF blk12ofblk8of2to1mult IS
  SIGNAL Z01: STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Z12: STD_LOGIC_VECTOR (7 DOWNTO 0);
  COMPONENT blk8of2to1mult
    PORT (x00, x01: IN STD_LOGIC;
          x10, x11: IN STD_LOGIC;
          x20, x21: IN STD_LOGIC;
          x30, x31: IN STD_LOGIC;
          x40, x41: IN STD_LOGIC;
          x50, x51: IN STD_LOGIC;
          x60, x61: IN STD_LOGIC;
          x70, x71: IN STD_LOGIC;
          sel: IN STD_LOGIC;
          y0, y1, y2, y3, y4, y5, y6, y7: OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  blk0: blk8of2to1mult PORT MAP (dIn(0), dIn(1),
                                 dIn(2), dIn(3),
                                 dIn(4), dIn(5),
                                 dIn(6), dIn(7),
                                 dIn(8), dIn(9),
                                 dIn(10), dIn(11),
                                 dIn(12), dIn(13),
                                 dIn(14), dIn(15),
                                 sel(0),
                                 dOut(0), dOut(1),
                                 dOut(2), dOut(3),
                                 dOut(4), dOut(5),
                                 dOut(6), dOut(7));
  blk1: blk8of2to1mult PORT MAP (z01(0), z01(6),
                                 z01(1), z01(7),
                                 z01(2), z01(0),
                                 z01(3), z01(1),
                                 z01(4), z01(2),
                                 z01(5), z01(3),
                                 z01(6), z01(4),
                                 z01(7), z01(5),
                                 sel(1),
                                 z12(0), z12(1),
                                 z12(2), z12(3),
                                 z12(4), z12(5),
                                 z12(6), z12(7));
  blk2: blk8of2to1mult PORT MAP (z12(0), z12(4),
                                 z12(1), z12(5),
                                 z12(2), z12(6),
                                 z12(3), z12(7),
                                 z12(4), z12(0),
                                 z12(5), z12(1),
                                 z12(6), z12(2),
                                 z12(7), z12(3),
                                 sel(2),
                                 dOut(0), dOut(1),
                                 dOut(2), dOut(3),
                                 dOut(4), dOut(5),
                                 dOut(6), dOut(7));
  blk3: blk8of2to1mult PORT MAP (z12(0), z12(4),
                                 z12(1), z12(5),
                                 z12(2), z12(6),
                                 z12(3), z12(7),
                                 z12(4), z12(0),
                                 z12(5), z12(1),
                                 z12(6), z12(2),
                                 z12(7), z12(3),
                                 sel(2),
                                 dOut(0), dOut(1),
                                 dOut(2), dOut(3),
                                 dOut(4), dOut(5),
                                 dOut(6), dOut(7));
  blk4: blk8of2to1mult PORT MAP (z12(0), z12(4),
                                 z12(1), z12(5),
                                 z12(2), z12(6),
                                 z12(3), z12(7),
                                 z12(4), z12(0),
                                 z12(5), z12(1),
                                 z12(6), z12(2),
                                 z12(7), z12(3),
                                 sel(2),
                                 dOut(0), dOut(1),
                                 dOut(2), dOut(3),
                                 dOut(4), dOut(5),
                                 dOut(6), dOut(7));
  blk5: blk8of2to1mult PORT MAP (z12(0), z12(4),
                                 z12(1), z12(5),
                                 z12(2), z12(6),
                                 z12(3), z12(7),
                                 z12(4), z12(0),
                                 z12(5), z12(1),
                                 z12(6), z12(2),
                                 z12(7), z12(3),
                                 sel(2),
                                 dOut(0), dOut(1),
                                 dOut(2), dOut(3),
                                 dOut(4), dOut(5),
                                 dOut(6), dOut(7));
  blk6: blk8of2to1mult PORT MAP (z12(0), z12(4),
                                 z12(1), z12(5),
                                 z12(2), z12(6),
                                 z12(3), z12(7),
                                 z12(4), z12(0),
                                 z12(5), z12(1),
                                 z12(6), z12(2),
                                 z12(7), z12(3),
                                 sel(2),
                                 dOut(0), dOut(1),
                                 dOut(2), dOut(3),
                                 dOut(4), dOut(5),
                                 dOut(6), dOut(7));
  blk8: blk8of2to1mult PORT MAP (z12(0), z12(4),
                                 z12(1), z12(5),
                                 z12(2), z12(6),
                                 z12(3), z12(7),
                                 z12(4), z12(0),
                                 z12(5), z12(1),
                                 z12(6), z12(2),
                                 z12(7), z12(3),
                                 sel(2),
                                 dOut(0), dOut(1),
                                 dOut(2), dOut(3),
                                 dOut(4), dOut(5),
                                 dOut(6), dOut(7));
    blk6: blk8of2to1mult PORT MAP (z12(0), z12(4),
                                 z12(1), z12(5),
                                 z12(2), z12(6),
                                 z12(3), z12(7),
                                 z12(4), z12(0),
                                 z12(5), z12(1),
                                 z12(6), z12(2),
                                 z12(7), z12(3),
                                 sel(2),
                                 dOut(0), dOut(1),
                                 dOut(2), dOut(3),
                                 dOut(4), dOut(5),
                                 dOut(6), dOut(7));

END structure;
