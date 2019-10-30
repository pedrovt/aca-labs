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

-- DATE "10/22/2019 17:14:23"

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

ENTITY 	lRot_8bit IS
    PORT (
	dIn : IN std_logic_vector(7 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	dOut : OUT std_logic_vector(7 DOWNTO 0)
	);
END lRot_8bit;

-- Design Ports Information
-- dOut[0]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[4]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[5]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[6]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[7]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[3]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[7]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[6]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lRot_8bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \dOut[0]~output_o\ : std_logic;
SIGNAL \dOut[1]~output_o\ : std_logic;
SIGNAL \dOut[2]~output_o\ : std_logic;
SIGNAL \dOut[3]~output_o\ : std_logic;
SIGNAL \dOut[4]~output_o\ : std_logic;
SIGNAL \dOut[5]~output_o\ : std_logic;
SIGNAL \dOut[6]~output_o\ : std_logic;
SIGNAL \dOut[7]~output_o\ : std_logic;
SIGNAL \dIn[4]~input_o\ : std_logic;
SIGNAL \dIn[2]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \blk1|mult4|y~1_combout\ : std_logic;
SIGNAL \dIn[3]~input_o\ : std_logic;
SIGNAL \dIn[1]~input_o\ : std_logic;
SIGNAL \blk1|mult4|y~0_combout\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \blk1|mult4|y~2_combout\ : std_logic;
SIGNAL \dIn[6]~input_o\ : std_logic;
SIGNAL \dIn[0]~input_o\ : std_logic;
SIGNAL \blk1|mult0|y~0_combout\ : std_logic;
SIGNAL \dIn[7]~input_o\ : std_logic;
SIGNAL \dIn[5]~input_o\ : std_logic;
SIGNAL \blk1|mult7|y~0_combout\ : std_logic;
SIGNAL \blk1|mult0|y~1_combout\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \blk2|mult0|y~0_combout\ : std_logic;
SIGNAL \blk1|mult2|y~0_combout\ : std_logic;
SIGNAL \blk1|mult1|y~0_combout\ : std_logic;
SIGNAL \blk1|mult5|y~0_combout\ : std_logic;
SIGNAL \blk1|mult5|y~1_combout\ : std_logic;
SIGNAL \blk2|mult1|y~0_combout\ : std_logic;
SIGNAL \blk1|mult2|y~1_combout\ : std_logic;
SIGNAL \blk1|mult2|y~2_combout\ : std_logic;
SIGNAL \blk1|mult6|y~0_combout\ : std_logic;
SIGNAL \blk1|mult6|y~1_combout\ : std_logic;
SIGNAL \blk2|mult2|y~0_combout\ : std_logic;
SIGNAL \blk1|mult7|y~1_combout\ : std_logic;
SIGNAL \blk1|mult3|y~0_combout\ : std_logic;
SIGNAL \blk2|mult3|y~0_combout\ : std_logic;
SIGNAL \blk2|mult4|y~0_combout\ : std_logic;
SIGNAL \blk2|mult5|y~0_combout\ : std_logic;
SIGNAL \blk2|mult6|y~0_combout\ : std_logic;
SIGNAL \blk2|mult7|y~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_dIn <= dIn;
ww_sel <= sel;
dOut <= ww_dOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y3_N23
\dOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult0|y~0_combout\,
	devoe => ww_devoe,
	o => \dOut[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\dOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult1|y~0_combout\,
	devoe => ww_devoe,
	o => \dOut[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\dOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult2|y~0_combout\,
	devoe => ww_devoe,
	o => \dOut[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\dOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult3|y~0_combout\,
	devoe => ww_devoe,
	o => \dOut[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\dOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult4|y~0_combout\,
	devoe => ww_devoe,
	o => \dOut[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\dOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult5|y~0_combout\,
	devoe => ww_devoe,
	o => \dOut[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\dOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult6|y~0_combout\,
	devoe => ww_devoe,
	o => \dOut[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\dOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult7|y~0_combout\,
	devoe => ww_devoe,
	o => \dOut[7]~output_o\);

-- Location: IOIBUF_X5_Y0_N22
\dIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(4),
	o => \dIn[4]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\dIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(2),
	o => \dIn[2]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: LCCOMB_X10_Y1_N10
\blk1|mult4|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult4|y~1_combout\ = (\sel[1]~input_o\ & ((\dIn[2]~input_o\))) # (!\sel[1]~input_o\ & (\dIn[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn[4]~input_o\,
	datac => \dIn[2]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \blk1|mult4|y~1_combout\);

-- Location: IOIBUF_X0_Y7_N1
\dIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(3),
	o => \dIn[3]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\dIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(1),
	o => \dIn[1]~input_o\);

-- Location: LCCOMB_X10_Y1_N0
\blk1|mult4|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult4|y~0_combout\ = (\sel[1]~input_o\ & ((\dIn[1]~input_o\))) # (!\sel[1]~input_o\ & (\dIn[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[3]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \dIn[1]~input_o\,
	combout => \blk1|mult4|y~0_combout\);

-- Location: IOIBUF_X13_Y24_N22
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LCCOMB_X10_Y1_N20
\blk1|mult4|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult4|y~2_combout\ = (\sel[0]~input_o\ & ((\blk1|mult4|y~0_combout\))) # (!\sel[0]~input_o\ & (\blk1|mult4|y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk1|mult4|y~1_combout\,
	datab => \blk1|mult4|y~0_combout\,
	datad => \sel[0]~input_o\,
	combout => \blk1|mult4|y~2_combout\);

-- Location: IOIBUF_X0_Y9_N8
\dIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(6),
	o => \dIn[6]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\dIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(0),
	o => \dIn[0]~input_o\);

-- Location: LCCOMB_X10_Y1_N8
\blk1|mult0|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult0|y~0_combout\ = (\sel[1]~input_o\ & (\dIn[6]~input_o\)) # (!\sel[1]~input_o\ & ((\dIn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[6]~input_o\,
	datab => \dIn[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \blk1|mult0|y~0_combout\);

-- Location: IOIBUF_X0_Y5_N15
\dIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(7),
	o => \dIn[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\dIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(5),
	o => \dIn[5]~input_o\);

-- Location: LCCOMB_X10_Y1_N30
\blk1|mult7|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult7|y~0_combout\ = (\sel[1]~input_o\ & ((\dIn[5]~input_o\))) # (!\sel[1]~input_o\ & (\dIn[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[7]~input_o\,
	datac => \dIn[5]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \blk1|mult7|y~0_combout\);

-- Location: LCCOMB_X10_Y1_N2
\blk1|mult0|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult0|y~1_combout\ = (\sel[0]~input_o\ & ((\blk1|mult7|y~0_combout\))) # (!\sel[0]~input_o\ & (\blk1|mult0|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk1|mult0|y~0_combout\,
	datac => \blk1|mult7|y~0_combout\,
	datad => \sel[0]~input_o\,
	combout => \blk1|mult0|y~1_combout\);

-- Location: IOIBUF_X16_Y0_N1
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: LCCOMB_X12_Y1_N24
\blk2|mult0|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2|mult0|y~0_combout\ = (\sel[2]~input_o\ & (\blk1|mult4|y~2_combout\)) # (!\sel[2]~input_o\ & ((\blk1|mult0|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk1|mult4|y~2_combout\,
	datac => \blk1|mult0|y~1_combout\,
	datad => \sel[2]~input_o\,
	combout => \blk2|mult0|y~0_combout\);

-- Location: LCCOMB_X10_Y1_N16
\blk1|mult2|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult2|y~0_combout\ = (\sel[1]~input_o\ & (\dIn[7]~input_o\)) # (!\sel[1]~input_o\ & ((\dIn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[7]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \dIn[1]~input_o\,
	combout => \blk1|mult2|y~0_combout\);

-- Location: LCCOMB_X10_Y1_N18
\blk1|mult1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult1|y~0_combout\ = (\sel[0]~input_o\ & ((\blk1|mult0|y~0_combout\))) # (!\sel[0]~input_o\ & (\blk1|mult2|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk1|mult2|y~0_combout\,
	datac => \blk1|mult0|y~0_combout\,
	datad => \sel[0]~input_o\,
	combout => \blk1|mult1|y~0_combout\);

-- Location: LCCOMB_X10_Y1_N28
\blk1|mult5|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult5|y~0_combout\ = (\sel[1]~input_o\ & (\dIn[3]~input_o\)) # (!\sel[1]~input_o\ & ((\dIn[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[3]~input_o\,
	datac => \dIn[5]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \blk1|mult5|y~0_combout\);

-- Location: LCCOMB_X10_Y1_N14
\blk1|mult5|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult5|y~1_combout\ = (\sel[0]~input_o\ & (\blk1|mult4|y~1_combout\)) # (!\sel[0]~input_o\ & ((\blk1|mult5|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk1|mult4|y~1_combout\,
	datab => \blk1|mult5|y~0_combout\,
	datad => \sel[0]~input_o\,
	combout => \blk1|mult5|y~1_combout\);

-- Location: LCCOMB_X12_Y1_N2
\blk2|mult1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2|mult1|y~0_combout\ = (\sel[2]~input_o\ & ((\blk1|mult5|y~1_combout\))) # (!\sel[2]~input_o\ & (\blk1|mult1|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk1|mult1|y~0_combout\,
	datac => \blk1|mult5|y~1_combout\,
	datad => \sel[2]~input_o\,
	combout => \blk2|mult1|y~0_combout\);

-- Location: LCCOMB_X10_Y1_N24
\blk1|mult2|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult2|y~1_combout\ = (\sel[1]~input_o\ & (\dIn[0]~input_o\)) # (!\sel[1]~input_o\ & ((\dIn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn[0]~input_o\,
	datac => \dIn[2]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \blk1|mult2|y~1_combout\);

-- Location: LCCOMB_X10_Y1_N26
\blk1|mult2|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult2|y~2_combout\ = (\sel[0]~input_o\ & ((\blk1|mult2|y~0_combout\))) # (!\sel[0]~input_o\ & (\blk1|mult2|y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk1|mult2|y~1_combout\,
	datac => \blk1|mult2|y~0_combout\,
	datad => \sel[0]~input_o\,
	combout => \blk1|mult2|y~2_combout\);

-- Location: LCCOMB_X10_Y1_N12
\blk1|mult6|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult6|y~0_combout\ = (\sel[1]~input_o\ & ((\dIn[4]~input_o\))) # (!\sel[1]~input_o\ & (\dIn[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[6]~input_o\,
	datab => \dIn[4]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \blk1|mult6|y~0_combout\);

-- Location: LCCOMB_X10_Y1_N22
\blk1|mult6|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult6|y~1_combout\ = (\sel[0]~input_o\ & ((\blk1|mult5|y~0_combout\))) # (!\sel[0]~input_o\ & (\blk1|mult6|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk1|mult6|y~0_combout\,
	datab => \blk1|mult5|y~0_combout\,
	datad => \sel[0]~input_o\,
	combout => \blk1|mult6|y~1_combout\);

-- Location: LCCOMB_X12_Y1_N4
\blk2|mult2|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2|mult2|y~0_combout\ = (\sel[2]~input_o\ & ((\blk1|mult6|y~1_combout\))) # (!\sel[2]~input_o\ & (\blk1|mult2|y~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk1|mult2|y~2_combout\,
	datab => \blk1|mult6|y~1_combout\,
	datad => \sel[2]~input_o\,
	combout => \blk2|mult2|y~0_combout\);

-- Location: LCCOMB_X10_Y1_N4
\blk1|mult7|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult7|y~1_combout\ = (\sel[0]~input_o\ & (\blk1|mult6|y~0_combout\)) # (!\sel[0]~input_o\ & ((\blk1|mult7|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk1|mult6|y~0_combout\,
	datac => \blk1|mult7|y~0_combout\,
	datad => \sel[0]~input_o\,
	combout => \blk1|mult7|y~1_combout\);

-- Location: LCCOMB_X10_Y1_N6
\blk1|mult3|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1|mult3|y~0_combout\ = (\sel[0]~input_o\ & (\blk1|mult2|y~1_combout\)) # (!\sel[0]~input_o\ & ((\blk1|mult4|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk1|mult2|y~1_combout\,
	datac => \blk1|mult4|y~0_combout\,
	datad => \sel[0]~input_o\,
	combout => \blk1|mult3|y~0_combout\);

-- Location: LCCOMB_X12_Y1_N6
\blk2|mult3|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2|mult3|y~0_combout\ = (\sel[2]~input_o\ & (\blk1|mult7|y~1_combout\)) # (!\sel[2]~input_o\ & ((\blk1|mult3|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk1|mult7|y~1_combout\,
	datac => \blk1|mult3|y~0_combout\,
	datad => \sel[2]~input_o\,
	combout => \blk2|mult3|y~0_combout\);

-- Location: LCCOMB_X12_Y1_N8
\blk2|mult4|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2|mult4|y~0_combout\ = (\sel[2]~input_o\ & ((\blk1|mult0|y~1_combout\))) # (!\sel[2]~input_o\ & (\blk1|mult4|y~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk1|mult4|y~2_combout\,
	datac => \blk1|mult0|y~1_combout\,
	datad => \sel[2]~input_o\,
	combout => \blk2|mult4|y~0_combout\);

-- Location: LCCOMB_X12_Y1_N10
\blk2|mult5|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2|mult5|y~0_combout\ = (\sel[2]~input_o\ & (\blk1|mult1|y~0_combout\)) # (!\sel[2]~input_o\ & ((\blk1|mult5|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk1|mult1|y~0_combout\,
	datac => \blk1|mult5|y~1_combout\,
	datad => \sel[2]~input_o\,
	combout => \blk2|mult5|y~0_combout\);

-- Location: LCCOMB_X12_Y1_N20
\blk2|mult6|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2|mult6|y~0_combout\ = (\sel[2]~input_o\ & (\blk1|mult2|y~2_combout\)) # (!\sel[2]~input_o\ & ((\blk1|mult6|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk1|mult2|y~2_combout\,
	datab => \blk1|mult6|y~1_combout\,
	datad => \sel[2]~input_o\,
	combout => \blk2|mult6|y~0_combout\);

-- Location: LCCOMB_X12_Y1_N22
\blk2|mult7|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2|mult7|y~0_combout\ = (\sel[2]~input_o\ & ((\blk1|mult3|y~0_combout\))) # (!\sel[2]~input_o\ & (\blk1|mult7|y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk1|mult7|y~1_combout\,
	datac => \blk1|mult3|y~0_combout\,
	datad => \sel[2]~input_o\,
	combout => \blk2|mult7|y~0_combout\);

ww_dOut(0) <= \dOut[0]~output_o\;

ww_dOut(1) <= \dOut[1]~output_o\;

ww_dOut(2) <= \dOut[2]~output_o\;

ww_dOut(3) <= \dOut[3]~output_o\;

ww_dOut(4) <= \dOut[4]~output_o\;

ww_dOut(5) <= \dOut[5]~output_o\;

ww_dOut(6) <= \dOut[6]~output_o\;

ww_dOut(7) <= \dOut[7]~output_o\;
END structure;


