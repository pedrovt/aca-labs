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