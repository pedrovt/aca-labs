LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lrRot_8bit IS
  PORT (dIn: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        sel: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        dOut: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END lrRot_8bit;

ARCHITECTURE structure OF lrRot_8bit IS
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
  blk0: blk8of2to1mult PORT MAP (dIn(0), dIn(7),
                                 dIn(1), dIn(0),
                                 dIn(2), dIn(1),
                                 dIn(3), dIn(2),
                                 dIn(4), dIn(3),
                                 dIn(5), dIn(4),
                                 dIn(6), dIn(5),
                                 dIn(7), dIn(6),
                                 sel(0),
                                 z01(0), z01(1),
                                 z01(2), z01(3),
                                 z01(4), z01(5),
                                 z01(6), z01(7));
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
END structure;


