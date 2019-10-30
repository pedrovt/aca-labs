
ENTITY HalfAdder IS
  PORT (a: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        cIn: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		  cOut: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        s: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END lRot_8bit;

ARCHITECTURE logicFunction OF mult2to1 IS
BEGIN
  y <= (x0 AND NOT s) OR (x1 AND s) AFTER 4ns;
END logicFunction;