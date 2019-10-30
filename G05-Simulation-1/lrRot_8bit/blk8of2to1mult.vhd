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