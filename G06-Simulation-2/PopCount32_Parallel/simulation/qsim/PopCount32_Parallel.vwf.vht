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
-- Generated on "10/30/2019 19:15:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          popCount32_Parallel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY popCount32_Parallel_vhd_vec_tst IS
END popCount32_Parallel_vhd_vec_tst;
ARCHITECTURE popCount32_Parallel_arch OF popCount32_Parallel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL count : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL dIn : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT popCount32_Parallel
	PORT (
	count : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	dIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : popCount32_Parallel
	PORT MAP (
-- list connections between master ports and signals
	count => count,
	dIn => dIn
	);
-- dIn[31]
t_prcs_dIn_31: PROCESS
BEGIN
	dIn(31) <= '0';
WAIT;
END PROCESS t_prcs_dIn_31;
-- dIn[30]
t_prcs_dIn_30: PROCESS
BEGIN
	dIn(30) <= '0';
WAIT;
END PROCESS t_prcs_dIn_30;
-- dIn[29]
t_prcs_dIn_29: PROCESS
BEGIN
	dIn(29) <= '0';
	WAIT FOR 140000 ps;
	dIn(29) <= '1';
	WAIT FOR 140000 ps;
	dIn(29) <= '0';
WAIT;
END PROCESS t_prcs_dIn_29;
-- dIn[28]
t_prcs_dIn_28: PROCESS
BEGIN
	dIn(28) <= '0';
	WAIT FOR 140000 ps;
	dIn(28) <= '1';
	WAIT FOR 140000 ps;
	dIn(28) <= '0';
	WAIT FOR 320000 ps;
	dIn(28) <= '1';
	WAIT FOR 130000 ps;
	dIn(28) <= '0';
WAIT;
END PROCESS t_prcs_dIn_28;
-- dIn[27]
t_prcs_dIn_27: PROCESS
BEGIN
	dIn(27) <= '0';
WAIT;
END PROCESS t_prcs_dIn_27;
-- dIn[26]
t_prcs_dIn_26: PROCESS
BEGIN
	dIn(26) <= '0';
WAIT;
END PROCESS t_prcs_dIn_26;
-- dIn[25]
t_prcs_dIn_25: PROCESS
BEGIN
	dIn(25) <= '0';
	WAIT FOR 600000 ps;
	dIn(25) <= '1';
	WAIT FOR 130000 ps;
	dIn(25) <= '0';
WAIT;
END PROCESS t_prcs_dIn_25;
-- dIn[24]
t_prcs_dIn_24: PROCESS
BEGIN
	dIn(24) <= '0';
WAIT;
END PROCESS t_prcs_dIn_24;
-- dIn[23]
t_prcs_dIn_23: PROCESS
BEGIN
	dIn(23) <= '0';
	WAIT FOR 370000 ps;
	dIn(23) <= '1';
	WAIT FOR 130000 ps;
	dIn(23) <= '0';
WAIT;
END PROCESS t_prcs_dIn_23;
-- dIn[22]
t_prcs_dIn_22: PROCESS
BEGIN
	dIn(22) <= '0';
	WAIT FOR 370000 ps;
	dIn(22) <= '1';
	WAIT FOR 130000 ps;
	dIn(22) <= '0';
WAIT;
END PROCESS t_prcs_dIn_22;
-- dIn[21]
t_prcs_dIn_21: PROCESS
BEGIN
	dIn(21) <= '0';
	WAIT FOR 370000 ps;
	dIn(21) <= '1';
	WAIT FOR 130000 ps;
	dIn(21) <= '0';
	WAIT FOR 100000 ps;
	dIn(21) <= '1';
	WAIT FOR 130000 ps;
	dIn(21) <= '0';
WAIT;
END PROCESS t_prcs_dIn_21;
-- dIn[20]
t_prcs_dIn_20: PROCESS
BEGIN
	dIn(20) <= '0';
	WAIT FOR 370000 ps;
	dIn(20) <= '1';
	WAIT FOR 130000 ps;
	dIn(20) <= '0';
	WAIT FOR 100000 ps;
	dIn(20) <= '1';
	WAIT FOR 130000 ps;
	dIn(20) <= '0';
WAIT;
END PROCESS t_prcs_dIn_20;
-- dIn[19]
t_prcs_dIn_19: PROCESS
BEGIN
	dIn(19) <= '0';
	WAIT FOR 370000 ps;
	dIn(19) <= '1';
	WAIT FOR 130000 ps;
	dIn(19) <= '0';
WAIT;
END PROCESS t_prcs_dIn_19;
-- dIn[18]
t_prcs_dIn_18: PROCESS
BEGIN
	dIn(18) <= '0';
	WAIT FOR 370000 ps;
	dIn(18) <= '1';
	WAIT FOR 130000 ps;
	dIn(18) <= '0';
	WAIT FOR 100000 ps;
	dIn(18) <= '1';
	WAIT FOR 130000 ps;
	dIn(18) <= '0';
WAIT;
END PROCESS t_prcs_dIn_18;
-- dIn[17]
t_prcs_dIn_17: PROCESS
BEGIN
	dIn(17) <= '0';
	WAIT FOR 370000 ps;
	dIn(17) <= '1';
	WAIT FOR 130000 ps;
	dIn(17) <= '0';
WAIT;
END PROCESS t_prcs_dIn_17;
-- dIn[16]
t_prcs_dIn_16: PROCESS
BEGIN
	dIn(16) <= '0';
	WAIT FOR 140000 ps;
	dIn(16) <= '1';
	WAIT FOR 140000 ps;
	dIn(16) <= '0';
	WAIT FOR 90000 ps;
	dIn(16) <= '1';
	WAIT FOR 130000 ps;
	dIn(16) <= '0';
WAIT;
END PROCESS t_prcs_dIn_16;
-- dIn[15]
t_prcs_dIn_15: PROCESS
BEGIN
	dIn(15) <= '0';
	WAIT FOR 600000 ps;
	dIn(15) <= '1';
	WAIT FOR 130000 ps;
	dIn(15) <= '0';
WAIT;
END PROCESS t_prcs_dIn_15;
-- dIn[14]
t_prcs_dIn_14: PROCESS
BEGIN
	dIn(14) <= '0';
	WAIT FOR 140000 ps;
	dIn(14) <= '1';
	WAIT FOR 140000 ps;
	dIn(14) <= '0';
WAIT;
END PROCESS t_prcs_dIn_14;
-- dIn[13]
t_prcs_dIn_13: PROCESS
BEGIN
	dIn(13) <= '0';
	WAIT FOR 600000 ps;
	dIn(13) <= '1';
	WAIT FOR 130000 ps;
	dIn(13) <= '0';
WAIT;
END PROCESS t_prcs_dIn_13;
-- dIn[12]
t_prcs_dIn_12: PROCESS
BEGIN
	dIn(12) <= '0';
WAIT;
END PROCESS t_prcs_dIn_12;
-- dIn[11]
t_prcs_dIn_11: PROCESS
BEGIN
	dIn(11) <= '0';
	WAIT FOR 600000 ps;
	dIn(11) <= '1';
	WAIT FOR 130000 ps;
	dIn(11) <= '0';
WAIT;
END PROCESS t_prcs_dIn_11;
-- dIn[10]
t_prcs_dIn_10: PROCESS
BEGIN
	dIn(10) <= '0';
WAIT;
END PROCESS t_prcs_dIn_10;
-- dIn[9]
t_prcs_dIn_9: PROCESS
BEGIN
	dIn(9) <= '0';
	WAIT FOR 600000 ps;
	dIn(9) <= '1';
	WAIT FOR 130000 ps;
	dIn(9) <= '0';
WAIT;
END PROCESS t_prcs_dIn_9;
-- dIn[8]
t_prcs_dIn_8: PROCESS
BEGIN
	dIn(8) <= '0';
	WAIT FOR 600000 ps;
	dIn(8) <= '1';
	WAIT FOR 130000 ps;
	dIn(8) <= '0';
WAIT;
END PROCESS t_prcs_dIn_8;
-- dIn[7]
t_prcs_dIn_7: PROCESS
BEGIN
	dIn(7) <= '0';
	WAIT FOR 370000 ps;
	dIn(7) <= '1';
	WAIT FOR 130000 ps;
	dIn(7) <= '0';
	WAIT FOR 100000 ps;
	dIn(7) <= '1';
	WAIT FOR 130000 ps;
	dIn(7) <= '0';
WAIT;
END PROCESS t_prcs_dIn_7;
-- dIn[6]
t_prcs_dIn_6: PROCESS
BEGIN
	dIn(6) <= '0';
	WAIT FOR 370000 ps;
	dIn(6) <= '1';
	WAIT FOR 130000 ps;
	dIn(6) <= '0';
	WAIT FOR 100000 ps;
	dIn(6) <= '1';
	WAIT FOR 130000 ps;
	dIn(6) <= '0';
WAIT;
END PROCESS t_prcs_dIn_6;
-- dIn[5]
t_prcs_dIn_5: PROCESS
BEGIN
	dIn(5) <= '0';
	WAIT FOR 370000 ps;
	dIn(5) <= '1';
	WAIT FOR 130000 ps;
	dIn(5) <= '0';
WAIT;
END PROCESS t_prcs_dIn_5;
-- dIn[4]
t_prcs_dIn_4: PROCESS
BEGIN
	dIn(4) <= '0';
	WAIT FOR 370000 ps;
	dIn(4) <= '1';
	WAIT FOR 130000 ps;
	dIn(4) <= '0';
WAIT;
END PROCESS t_prcs_dIn_4;
-- dIn[3]
t_prcs_dIn_3: PROCESS
BEGIN
	dIn(3) <= '0';
	WAIT FOR 370000 ps;
	dIn(3) <= '1';
	WAIT FOR 130000 ps;
	dIn(3) <= '0';
	WAIT FOR 100000 ps;
	dIn(3) <= '1';
	WAIT FOR 130000 ps;
	dIn(3) <= '0';
WAIT;
END PROCESS t_prcs_dIn_3;
-- dIn[2]
t_prcs_dIn_2: PROCESS
BEGIN
	dIn(2) <= '0';
	WAIT FOR 600000 ps;
	dIn(2) <= '1';
	WAIT FOR 130000 ps;
	dIn(2) <= '0';
WAIT;
END PROCESS t_prcs_dIn_2;
-- dIn[1]
t_prcs_dIn_1: PROCESS
BEGIN
	dIn(1) <= '0';
	WAIT FOR 140000 ps;
	dIn(1) <= '1';
	WAIT FOR 140000 ps;
	dIn(1) <= '0';
WAIT;
END PROCESS t_prcs_dIn_1;
-- dIn[0]
t_prcs_dIn_0: PROCESS
BEGIN
	dIn(0) <= '0';
	WAIT FOR 600000 ps;
	dIn(0) <= '1';
	WAIT FOR 130000 ps;
	dIn(0) <= '0';
WAIT;
END PROCESS t_prcs_dIn_0;
END popCount32_Parallel_arch;
