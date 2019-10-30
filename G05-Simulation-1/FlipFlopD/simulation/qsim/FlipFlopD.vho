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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/22/2019 16:47:22"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	flipFlopD IS
    PORT (
	clk : IN std_logic;
	D : IN std_logic;
	nSet : IN std_logic;
	nRst : IN std_logic;
	Q : BUFFER std_logic;
	nQ : BUFFER std_logic
	);
END flipFlopD;

-- Design Ports Information
-- Q	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nQ	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRst	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSet	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF flipFlopD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_nSet : std_logic;
SIGNAL ww_nRst : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_nQ : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \nQ~output_o\ : std_logic;
SIGNAL \nRst~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \nSet~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \lock~0_combout\ : std_logic;
SIGNAL \ckQ~3_combout\ : std_logic;
SIGNAL \ckQ~4_combout\ : std_logic;
SIGNAL \iQ~0_combout\ : std_logic;
SIGNAL \iNQ~0_combout\ : std_logic;
SIGNAL \iQ~1_combout\ : std_logic;
SIGNAL \iNQ~1_combout\ : std_logic;
SIGNAL \ALT_INV_iQ~1_combout\ : std_logic;
SIGNAL \ALT_INV_iNQ~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_D <= D;
ww_nSet <= nSet;
ww_nRst <= nRst;
Q <= ww_Q;
nQ <= ww_nQ;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_iQ~1_combout\ <= NOT \iQ~1_combout\;
\ALT_INV_iNQ~1_combout\ <= NOT \iNQ~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N23
\Q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_iQ~1_combout\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\nQ~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_iNQ~1_combout\,
	devoe => ww_devoe,
	o => \nQ~output_o\);

-- Location: IOIBUF_X5_Y0_N15
\nRst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nRst,
	o => \nRst~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\nSet~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nSet,
	o => \nSet~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X5_Y6_N28
\lock~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lock~0_combout\ = (\clk~input_o\ & !\ckQ~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datad => \ckQ~3_combout\,
	combout => \lock~0_combout\);

-- Location: LCCOMB_X5_Y6_N24
\ckQ~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ckQ~3_combout\ = (\nRst~input_o\ & (!\lock~0_combout\ & (\nSet~input_o\ & \ckQ~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nRst~input_o\,
	datab => \lock~0_combout\,
	datac => \nSet~input_o\,
	datad => \ckQ~4_combout\,
	combout => \ckQ~3_combout\);

-- Location: LCCOMB_X5_Y6_N10
\ckQ~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ckQ~4_combout\ = (!\ckQ~3_combout\) # (!\clk~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datad => \ckQ~3_combout\,
	combout => \ckQ~4_combout\);

-- Location: LCCOMB_X5_Y6_N12
\iQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iQ~0_combout\ = (\nSet~input_o\ & (((\ckQ~4_combout\) # (!\D~input_o\)) # (!\nRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nRst~input_o\,
	datab => \D~input_o\,
	datac => \nSet~input_o\,
	datad => \ckQ~4_combout\,
	combout => \iQ~0_combout\);

-- Location: LCCOMB_X5_Y6_N0
\iNQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iNQ~0_combout\ = (\nRst~input_o\ & ((\D~input_o\) # ((\ckQ~4_combout\) # (!\nSet~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nRst~input_o\,
	datab => \D~input_o\,
	datac => \nSet~input_o\,
	datad => \ckQ~4_combout\,
	combout => \iNQ~0_combout\);

-- Location: LCCOMB_X5_Y6_N14
\iQ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iQ~1_combout\ = (\iQ~0_combout\ & ((\iQ~1_combout\) # (!\iNQ~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iQ~0_combout\,
	datab => \iNQ~0_combout\,
	datac => \iQ~1_combout\,
	combout => \iQ~1_combout\);

-- Location: LCCOMB_X5_Y6_N26
\iNQ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iNQ~1_combout\ = (\iNQ~0_combout\ & !\iQ~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iNQ~0_combout\,
	datac => \iQ~1_combout\,
	combout => \iNQ~1_combout\);

ww_Q <= \Q~output_o\;

ww_nQ <= \nQ~output_o\;
END structure;


