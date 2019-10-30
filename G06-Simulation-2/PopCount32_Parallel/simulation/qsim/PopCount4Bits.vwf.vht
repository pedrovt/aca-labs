-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/30/2019 17:09:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PopCount4Bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PopCount4Bits_vhd_vec_tst IS
END PopCount4Bits_vhd_vec_tst;
ARCHITECTURE PopCount4Bits_arch OF PopCount4Bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL count : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL dIn : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT PopCount4Bits
	PORT (
	count : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	dIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : PopCount4Bits
	PORT MAP (
-- list connections between master ports and signals
	count => count,
	dIn => dIn
	);
-- dIn[3]
t_prcs_dIn_3: PROCESS
BEGIN
	dIn(3) <= '0';
	WAIT FOR 400000 ps;
	dIn(3) <= '1';
	WAIT FOR 400000 ps;
	dIn(3) <= '0';
WAIT;
END PROCESS t_prcs_dIn_3;
-- dIn[2]
t_prcs_dIn_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		dIn(2) <= '0';
		WAIT FOR 200000 ps;
		dIn(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	dIn(2) <= '0';
WAIT;
END PROCESS t_prcs_dIn_2;
-- dIn[1]
t_prcs_dIn_1: PROCESS
BEGIN
LOOP
	dIn(1) <= '0';
	WAIT FOR 100000 ps;
	dIn(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dIn_1;
-- dIn[0]
t_prcs_dIn_0: PROCESS
BEGIN
LOOP
	dIn(0) <= '0';
	WAIT FOR 50000 ps;
	dIn(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dIn_0;
END PopCount4Bits_arch;
