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

-- DATE "10/30/2019 19:15:47"

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

ENTITY 	popCount32_Parallel IS
    PORT (
	dIn : IN std_logic_vector(31 DOWNTO 0);
	count : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END popCount32_Parallel;

-- Design Ports Information
-- count[0]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[28]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[29]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[30]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[31]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[24]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[25]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[26]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[27]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[20]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[21]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[22]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[23]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[16]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[17]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[18]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[19]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[12]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[13]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[14]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[15]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[8]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[9]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[10]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[11]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[4]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[5]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[6]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[7]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[2]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[3]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF popCount32_Parallel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dIn : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_count : std_logic_vector(5 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \count[4]~output_o\ : std_logic;
SIGNAL \count[5]~output_o\ : std_logic;
SIGNAL \dIn[15]~input_o\ : std_logic;
SIGNAL \dIn[12]~input_o\ : std_logic;
SIGNAL \dIn[14]~input_o\ : std_logic;
SIGNAL \dIn[13]~input_o\ : std_logic;
SIGNAL \pc4_5|count[0]~0_combout\ : std_logic;
SIGNAL \dIn[7]~input_o\ : std_logic;
SIGNAL \dIn[4]~input_o\ : std_logic;
SIGNAL \dIn[6]~input_o\ : std_logic;
SIGNAL \dIn[5]~input_o\ : std_logic;
SIGNAL \pc4_7|count[0]~0_combout\ : std_logic;
SIGNAL \dIn[11]~input_o\ : std_logic;
SIGNAL \dIn[9]~input_o\ : std_logic;
SIGNAL \dIn[8]~input_o\ : std_logic;
SIGNAL \dIn[10]~input_o\ : std_logic;
SIGNAL \pc4_6|count[0]~0_combout\ : std_logic;
SIGNAL \dIn[2]~input_o\ : std_logic;
SIGNAL \dIn[1]~input_o\ : std_logic;
SIGNAL \dIn[0]~input_o\ : std_logic;
SIGNAL \dIn[3]~input_o\ : std_logic;
SIGNAL \pc4_8|count[0]~0_combout\ : std_logic;
SIGNAL \fullAdder4bit_2|adder0|s~0_combout\ : std_logic;
SIGNAL \dIn[26]~input_o\ : std_logic;
SIGNAL \dIn[25]~input_o\ : std_logic;
SIGNAL \dIn[27]~input_o\ : std_logic;
SIGNAL \dIn[24]~input_o\ : std_logic;
SIGNAL \pc4_2|count[0]~0_combout\ : std_logic;
SIGNAL \dIn[30]~input_o\ : std_logic;
SIGNAL \dIn[28]~input_o\ : std_logic;
SIGNAL \dIn[31]~input_o\ : std_logic;
SIGNAL \dIn[29]~input_o\ : std_logic;
SIGNAL \pc4_1|count[0]~0_combout\ : std_logic;
SIGNAL \dIn[17]~input_o\ : std_logic;
SIGNAL \dIn[18]~input_o\ : std_logic;
SIGNAL \dIn[19]~input_o\ : std_logic;
SIGNAL \dIn[16]~input_o\ : std_logic;
SIGNAL \pc4_4|count[0]~0_combout\ : std_logic;
SIGNAL \dIn[21]~input_o\ : std_logic;
SIGNAL \dIn[20]~input_o\ : std_logic;
SIGNAL \dIn[23]~input_o\ : std_logic;
SIGNAL \dIn[22]~input_o\ : std_logic;
SIGNAL \pc4_3|count[0]~0_combout\ : std_logic;
SIGNAL \fullAdder4bit_1|adder0|s~0_combout\ : std_logic;
SIGNAL \fullAdder5bit_1|adder0|s~0_combout\ : std_logic;
SIGNAL \pc4_2|count[1]~1_combout\ : std_logic;
SIGNAL \pc4_1|count~2_combout\ : std_logic;
SIGNAL \pc4_1|count~1_combout\ : std_logic;
SIGNAL \fullAdder3bit_1|adder1|s~0_combout\ : std_logic;
SIGNAL \pc4_3|count~2_combout\ : std_logic;
SIGNAL \pc4_3|count~1_combout\ : std_logic;
SIGNAL \pc4_4|count[1]~1_combout\ : std_logic;
SIGNAL \fullAdder3bit_2|adder0|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder3bit_2|adder1|s~0_combout\ : std_logic;
SIGNAL \fullAdder4bit_1|adder1|s~2_combout\ : std_logic;
SIGNAL \fullAdder5bit_1|adder0|cOut~0_combout\ : std_logic;
SIGNAL \pc4_5|count~2_combout\ : std_logic;
SIGNAL \pc4_5|count~1_combout\ : std_logic;
SIGNAL \pc4_6|count[1]~1_combout\ : std_logic;
SIGNAL \fullAdder3bit_3|adder1|s~0_combout\ : std_logic;
SIGNAL \pc4_7|count~2_combout\ : std_logic;
SIGNAL \pc4_7|count~1_combout\ : std_logic;
SIGNAL \fullAdder3bit_4|adder0|cOut~0_combout\ : std_logic;
SIGNAL \pc4_8|count[1]~1_combout\ : std_logic;
SIGNAL \fullAdder3bit_4|adder1|s~0_combout\ : std_logic;
SIGNAL \fullAdder4bit_2|adder0|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder3bit_3|adder0|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder4bit_2|adder1|s~0_combout\ : std_logic;
SIGNAL \fullAdder4bit_1|adder0|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder5bit_1|adder1|s~combout\ : std_logic;
SIGNAL \fullAdder5bit_1|adder1|cOut~0_combout\ : std_logic;
SIGNAL \pc4_6|count[2]~2_combout\ : std_logic;
SIGNAL \pc4_5|count~3_combout\ : std_logic;
SIGNAL \fullAdder3bit_3|adder2|s~0_combout\ : std_logic;
SIGNAL \fullAdder3bit_3|adder1|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder4bit_2|adder1|cOut~0_combout\ : std_logic;
SIGNAL \pc4_8|count[2]~2_combout\ : std_logic;
SIGNAL \fullAdder3bit_4|adder1|cOut~0_combout\ : std_logic;
SIGNAL \pc4_7|count~3_combout\ : std_logic;
SIGNAL \fullAdder3bit_4|adder2|s~0_combout\ : std_logic;
SIGNAL \fullAdder4bit_2|adder2|s~combout\ : std_logic;
SIGNAL \pc4_2|count[2]~2_combout\ : std_logic;
SIGNAL \pc4_1|count~3_combout\ : std_logic;
SIGNAL \fullAdder3bit_1|adder2|s~0_combout\ : std_logic;
SIGNAL \pc4_3|count~3_combout\ : std_logic;
SIGNAL \pc4_4|count[2]~2_combout\ : std_logic;
SIGNAL \fullAdder3bit_2|adder1|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder3bit_2|adder2|s~0_combout\ : std_logic;
SIGNAL \fullAdder3bit_1|adder0|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder3bit_1|adder1|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder4bit_1|adder2|s~0_combout\ : std_logic;
SIGNAL \fullAdder4bit_1|adder1|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder5bit_1|adder2|s~combout\ : std_logic;
SIGNAL \fullAdder4bit_1|adder2|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder5bit_1|adder2|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder3bit_3|adder2|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder3bit_4|adder2|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder4bit_2|adder2|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder4bit_2|adder3|s~0_combout\ : std_logic;
SIGNAL \fullAdder3bit_1|adder2|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder3bit_2|adder2|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder4bit_1|adder3|s~0_combout\ : std_logic;
SIGNAL \fullAdder5bit_1|adder3|s~combout\ : std_logic;
SIGNAL \fullAdder4bit_2|adder3|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder4bit_1|adder3|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder5bit_1|adder3|cOut~0_combout\ : std_logic;
SIGNAL \fullAdder5bit_1|adder4|s~combout\ : std_logic;
SIGNAL \fullAdder5bit_1|adder4|cOut~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_dIn <= dIn;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y0_N23
\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fullAdder5bit_1|adder0|s~0_combout\,
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fullAdder5bit_1|adder1|s~combout\,
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fullAdder5bit_1|adder2|s~combout\,
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fullAdder5bit_1|adder3|s~combout\,
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\count[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fullAdder5bit_1|adder4|s~combout\,
	devoe => ww_devoe,
	o => \count[4]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\count[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fullAdder5bit_1|adder4|cOut~0_combout\,
	devoe => ww_devoe,
	o => \count[5]~output_o\);

-- Location: IOIBUF_X28_Y24_N8
\dIn[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(15),
	o => \dIn[15]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\dIn[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(12),
	o => \dIn[12]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\dIn[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(14),
	o => \dIn[14]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\dIn[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(13),
	o => \dIn[13]~input_o\);

-- Location: LCCOMB_X24_Y20_N16
\pc4_5|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_5|count[0]~0_combout\ = \dIn[15]~input_o\ $ (\dIn[12]~input_o\ $ (\dIn[14]~input_o\ $ (\dIn[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[15]~input_o\,
	datab => \dIn[12]~input_o\,
	datac => \dIn[14]~input_o\,
	datad => \dIn[13]~input_o\,
	combout => \pc4_5|count[0]~0_combout\);

-- Location: IOIBUF_X34_Y12_N1
\dIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(7),
	o => \dIn[7]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\dIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(4),
	o => \dIn[4]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\dIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(6),
	o => \dIn[6]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\dIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(5),
	o => \dIn[5]~input_o\);

-- Location: LCCOMB_X24_Y19_N24
\pc4_7|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_7|count[0]~0_combout\ = \dIn[7]~input_o\ $ (\dIn[4]~input_o\ $ (\dIn[6]~input_o\ $ (\dIn[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[7]~input_o\,
	datab => \dIn[4]~input_o\,
	datac => \dIn[6]~input_o\,
	datad => \dIn[5]~input_o\,
	combout => \pc4_7|count[0]~0_combout\);

-- Location: IOIBUF_X18_Y24_N22
\dIn[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(11),
	o => \dIn[11]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\dIn[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(9),
	o => \dIn[9]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\dIn[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(8),
	o => \dIn[8]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\dIn[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(10),
	o => \dIn[10]~input_o\);

-- Location: LCCOMB_X24_Y20_N2
\pc4_6|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_6|count[0]~0_combout\ = \dIn[11]~input_o\ $ (\dIn[9]~input_o\ $ (\dIn[8]~input_o\ $ (\dIn[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[11]~input_o\,
	datab => \dIn[9]~input_o\,
	datac => \dIn[8]~input_o\,
	datad => \dIn[10]~input_o\,
	combout => \pc4_6|count[0]~0_combout\);

-- Location: IOIBUF_X13_Y24_N22
\dIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(2),
	o => \dIn[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\dIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(1),
	o => \dIn[1]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\dIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(0),
	o => \dIn[0]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\dIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(3),
	o => \dIn[3]~input_o\);

-- Location: LCCOMB_X24_Y19_N18
\pc4_8|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_8|count[0]~0_combout\ = \dIn[2]~input_o\ $ (\dIn[1]~input_o\ $ (\dIn[0]~input_o\ $ (\dIn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[2]~input_o\,
	datab => \dIn[1]~input_o\,
	datac => \dIn[0]~input_o\,
	datad => \dIn[3]~input_o\,
	combout => \pc4_8|count[0]~0_combout\);

-- Location: LCCOMB_X24_Y19_N4
\fullAdder4bit_2|adder0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_2|adder0|s~0_combout\ = \pc4_5|count[0]~0_combout\ $ (\pc4_7|count[0]~0_combout\ $ (\pc4_6|count[0]~0_combout\ $ (\pc4_8|count[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_5|count[0]~0_combout\,
	datab => \pc4_7|count[0]~0_combout\,
	datac => \pc4_6|count[0]~0_combout\,
	datad => \pc4_8|count[0]~0_combout\,
	combout => \fullAdder4bit_2|adder0|s~0_combout\);

-- Location: IOIBUF_X34_Y4_N15
\dIn[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(26),
	o => \dIn[26]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\dIn[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(25),
	o => \dIn[25]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\dIn[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(27),
	o => \dIn[27]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\dIn[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(24),
	o => \dIn[24]~input_o\);

-- Location: LCCOMB_X26_Y15_N10
\pc4_2|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_2|count[0]~0_combout\ = \dIn[26]~input_o\ $ (\dIn[25]~input_o\ $ (\dIn[27]~input_o\ $ (\dIn[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[26]~input_o\,
	datab => \dIn[25]~input_o\,
	datac => \dIn[27]~input_o\,
	datad => \dIn[24]~input_o\,
	combout => \pc4_2|count[0]~0_combout\);

-- Location: IOIBUF_X34_Y9_N1
\dIn[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(30),
	o => \dIn[30]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\dIn[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(28),
	o => \dIn[28]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\dIn[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(31),
	o => \dIn[31]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\dIn[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(29),
	o => \dIn[29]~input_o\);

-- Location: LCCOMB_X26_Y15_N0
\pc4_1|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_1|count[0]~0_combout\ = \dIn[30]~input_o\ $ (\dIn[28]~input_o\ $ (\dIn[31]~input_o\ $ (\dIn[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[30]~input_o\,
	datab => \dIn[28]~input_o\,
	datac => \dIn[31]~input_o\,
	datad => \dIn[29]~input_o\,
	combout => \pc4_1|count[0]~0_combout\);

-- Location: IOIBUF_X34_Y17_N22
\dIn[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(17),
	o => \dIn[17]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\dIn[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(18),
	o => \dIn[18]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\dIn[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(19),
	o => \dIn[19]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\dIn[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(16),
	o => \dIn[16]~input_o\);

-- Location: LCCOMB_X29_Y15_N10
\pc4_4|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_4|count[0]~0_combout\ = \dIn[17]~input_o\ $ (\dIn[18]~input_o\ $ (\dIn[19]~input_o\ $ (\dIn[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[17]~input_o\,
	datab => \dIn[18]~input_o\,
	datac => \dIn[19]~input_o\,
	datad => \dIn[16]~input_o\,
	combout => \pc4_4|count[0]~0_combout\);

-- Location: IOIBUF_X34_Y10_N8
\dIn[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(21),
	o => \dIn[21]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\dIn[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(20),
	o => \dIn[20]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\dIn[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(23),
	o => \dIn[23]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\dIn[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(22),
	o => \dIn[22]~input_o\);

-- Location: LCCOMB_X29_Y15_N16
\pc4_3|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_3|count[0]~0_combout\ = \dIn[21]~input_o\ $ (\dIn[20]~input_o\ $ (\dIn[23]~input_o\ $ (\dIn[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[21]~input_o\,
	datab => \dIn[20]~input_o\,
	datac => \dIn[23]~input_o\,
	datad => \dIn[22]~input_o\,
	combout => \pc4_3|count[0]~0_combout\);

-- Location: LCCOMB_X26_Y15_N20
\fullAdder4bit_1|adder0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_1|adder0|s~0_combout\ = \pc4_2|count[0]~0_combout\ $ (\pc4_1|count[0]~0_combout\ $ (\pc4_4|count[0]~0_combout\ $ (\pc4_3|count[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_2|count[0]~0_combout\,
	datab => \pc4_1|count[0]~0_combout\,
	datac => \pc4_4|count[0]~0_combout\,
	datad => \pc4_3|count[0]~0_combout\,
	combout => \fullAdder4bit_1|adder0|s~0_combout\);

-- Location: LCCOMB_X25_Y15_N24
\fullAdder5bit_1|adder0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder5bit_1|adder0|s~0_combout\ = \fullAdder4bit_2|adder0|s~0_combout\ $ (\fullAdder4bit_1|adder0|s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder4bit_2|adder0|s~0_combout\,
	datac => \fullAdder4bit_1|adder0|s~0_combout\,
	combout => \fullAdder5bit_1|adder0|s~0_combout\);

-- Location: LCCOMB_X26_Y15_N30
\pc4_2|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_2|count[1]~1_combout\ = (\dIn[26]~input_o\ & ((\dIn[25]~input_o\ & ((!\dIn[24]~input_o\) # (!\dIn[27]~input_o\))) # (!\dIn[25]~input_o\ & ((\dIn[27]~input_o\) # (\dIn[24]~input_o\))))) # (!\dIn[26]~input_o\ & ((\dIn[25]~input_o\ & 
-- ((\dIn[27]~input_o\) # (\dIn[24]~input_o\))) # (!\dIn[25]~input_o\ & (\dIn[27]~input_o\ & \dIn[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[26]~input_o\,
	datab => \dIn[25]~input_o\,
	datac => \dIn[27]~input_o\,
	datad => \dIn[24]~input_o\,
	combout => \pc4_2|count[1]~1_combout\);

-- Location: LCCOMB_X26_Y15_N4
\pc4_1|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_1|count~2_combout\ = (\dIn[28]~input_o\ & (\dIn[31]~input_o\ $ (\dIn[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn[28]~input_o\,
	datac => \dIn[31]~input_o\,
	datad => \dIn[29]~input_o\,
	combout => \pc4_1|count~2_combout\);

-- Location: LCCOMB_X26_Y15_N26
\pc4_1|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_1|count~1_combout\ = (\dIn[30]~input_o\ & ((\dIn[28]~input_o\ & ((!\dIn[29]~input_o\))) # (!\dIn[28]~input_o\ & ((\dIn[31]~input_o\) # (\dIn[29]~input_o\))))) # (!\dIn[30]~input_o\ & (((\dIn[31]~input_o\ & \dIn[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[30]~input_o\,
	datab => \dIn[28]~input_o\,
	datac => \dIn[31]~input_o\,
	datad => \dIn[29]~input_o\,
	combout => \pc4_1|count~1_combout\);

-- Location: LCCOMB_X26_Y15_N16
\fullAdder3bit_1|adder1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_1|adder1|s~0_combout\ = \pc4_2|count[1]~1_combout\ $ (((\pc4_1|count~2_combout\) # (\pc4_1|count~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_2|count[1]~1_combout\,
	datab => \pc4_1|count~2_combout\,
	datac => \pc4_1|count~1_combout\,
	combout => \fullAdder3bit_1|adder1|s~0_combout\);

-- Location: LCCOMB_X29_Y15_N26
\pc4_3|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_3|count~2_combout\ = (\dIn[20]~input_o\ & (\dIn[23]~input_o\ $ (\dIn[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn[20]~input_o\,
	datac => \dIn[23]~input_o\,
	datad => \dIn[21]~input_o\,
	combout => \pc4_3|count~2_combout\);

-- Location: LCCOMB_X29_Y15_N24
\pc4_3|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_3|count~1_combout\ = (\dIn[21]~input_o\ & ((\dIn[22]~input_o\ & (!\dIn[20]~input_o\)) # (!\dIn[22]~input_o\ & ((\dIn[23]~input_o\))))) # (!\dIn[21]~input_o\ & (\dIn[22]~input_o\ & ((\dIn[20]~input_o\) # (\dIn[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[21]~input_o\,
	datab => \dIn[20]~input_o\,
	datac => \dIn[23]~input_o\,
	datad => \dIn[22]~input_o\,
	combout => \pc4_3|count~1_combout\);

-- Location: LCCOMB_X29_Y15_N22
\pc4_4|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_4|count[1]~1_combout\ = (\dIn[17]~input_o\ & ((\dIn[18]~input_o\ & ((!\dIn[16]~input_o\) # (!\dIn[19]~input_o\))) # (!\dIn[18]~input_o\ & ((\dIn[19]~input_o\) # (\dIn[16]~input_o\))))) # (!\dIn[17]~input_o\ & ((\dIn[18]~input_o\ & 
-- ((\dIn[19]~input_o\) # (\dIn[16]~input_o\))) # (!\dIn[18]~input_o\ & (\dIn[19]~input_o\ & \dIn[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[17]~input_o\,
	datab => \dIn[18]~input_o\,
	datac => \dIn[19]~input_o\,
	datad => \dIn[16]~input_o\,
	combout => \pc4_4|count[1]~1_combout\);

-- Location: LCCOMB_X29_Y15_N20
\fullAdder3bit_2|adder0|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_2|adder0|cOut~0_combout\ = (\pc4_4|count[0]~0_combout\ & \pc4_3|count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_4|count[0]~0_combout\,
	datad => \pc4_3|count[0]~0_combout\,
	combout => \fullAdder3bit_2|adder0|cOut~0_combout\);

-- Location: LCCOMB_X29_Y15_N12
\fullAdder3bit_2|adder1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_2|adder1|s~0_combout\ = \pc4_4|count[1]~1_combout\ $ (\fullAdder3bit_2|adder0|cOut~0_combout\ $ (((\pc4_3|count~2_combout\) # (\pc4_3|count~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_3|count~2_combout\,
	datab => \pc4_3|count~1_combout\,
	datac => \pc4_4|count[1]~1_combout\,
	datad => \fullAdder3bit_2|adder0|cOut~0_combout\,
	combout => \fullAdder3bit_2|adder1|s~0_combout\);

-- Location: LCCOMB_X26_Y15_N6
\fullAdder4bit_1|adder1|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_1|adder1|s~2_combout\ = \fullAdder3bit_1|adder1|s~0_combout\ $ (\fullAdder3bit_2|adder1|s~0_combout\ $ (((\pc4_2|count[0]~0_combout\ & \pc4_1|count[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_2|count[0]~0_combout\,
	datab => \fullAdder3bit_1|adder1|s~0_combout\,
	datac => \pc4_1|count[0]~0_combout\,
	datad => \fullAdder3bit_2|adder1|s~0_combout\,
	combout => \fullAdder4bit_1|adder1|s~2_combout\);

-- Location: LCCOMB_X25_Y15_N18
\fullAdder5bit_1|adder0|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder5bit_1|adder0|cOut~0_combout\ = (\fullAdder4bit_2|adder0|s~0_combout\ & \fullAdder4bit_1|adder0|s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder4bit_2|adder0|s~0_combout\,
	datac => \fullAdder4bit_1|adder0|s~0_combout\,
	combout => \fullAdder5bit_1|adder0|cOut~0_combout\);

-- Location: LCCOMB_X24_Y20_N24
\pc4_5|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_5|count~2_combout\ = (\dIn[12]~input_o\ & (\dIn[15]~input_o\ $ (\dIn[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[15]~input_o\,
	datac => \dIn[12]~input_o\,
	datad => \dIn[13]~input_o\,
	combout => \pc4_5|count~2_combout\);

-- Location: LCCOMB_X24_Y20_N30
\pc4_5|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_5|count~1_combout\ = (\dIn[14]~input_o\ & ((\dIn[12]~input_o\ & ((!\dIn[13]~input_o\))) # (!\dIn[12]~input_o\ & ((\dIn[15]~input_o\) # (\dIn[13]~input_o\))))) # (!\dIn[14]~input_o\ & (\dIn[15]~input_o\ & ((\dIn[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[15]~input_o\,
	datab => \dIn[12]~input_o\,
	datac => \dIn[14]~input_o\,
	datad => \dIn[13]~input_o\,
	combout => \pc4_5|count~1_combout\);

-- Location: LCCOMB_X24_Y20_N10
\pc4_6|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_6|count[1]~1_combout\ = (\dIn[11]~input_o\ & ((\dIn[9]~input_o\ & ((!\dIn[10]~input_o\) # (!\dIn[8]~input_o\))) # (!\dIn[9]~input_o\ & ((\dIn[8]~input_o\) # (\dIn[10]~input_o\))))) # (!\dIn[11]~input_o\ & ((\dIn[9]~input_o\ & ((\dIn[8]~input_o\) # 
-- (\dIn[10]~input_o\))) # (!\dIn[9]~input_o\ & (\dIn[8]~input_o\ & \dIn[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[11]~input_o\,
	datab => \dIn[9]~input_o\,
	datac => \dIn[8]~input_o\,
	datad => \dIn[10]~input_o\,
	combout => \pc4_6|count[1]~1_combout\);

-- Location: LCCOMB_X24_Y20_N20
\fullAdder3bit_3|adder1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_3|adder1|s~0_combout\ = \pc4_6|count[1]~1_combout\ $ (((\pc4_5|count~2_combout\) # (\pc4_5|count~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc4_5|count~2_combout\,
	datac => \pc4_5|count~1_combout\,
	datad => \pc4_6|count[1]~1_combout\,
	combout => \fullAdder3bit_3|adder1|s~0_combout\);

-- Location: LCCOMB_X24_Y19_N6
\pc4_7|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_7|count~2_combout\ = (\dIn[4]~input_o\ & (\dIn[7]~input_o\ $ (\dIn[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn[4]~input_o\,
	datac => \dIn[7]~input_o\,
	datad => \dIn[5]~input_o\,
	combout => \pc4_7|count~2_combout\);

-- Location: LCCOMB_X24_Y19_N20
\pc4_7|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_7|count~1_combout\ = (\dIn[6]~input_o\ & ((\dIn[4]~input_o\ & ((!\dIn[5]~input_o\))) # (!\dIn[4]~input_o\ & ((\dIn[7]~input_o\) # (\dIn[5]~input_o\))))) # (!\dIn[6]~input_o\ & (\dIn[7]~input_o\ & ((\dIn[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[7]~input_o\,
	datab => \dIn[4]~input_o\,
	datac => \dIn[6]~input_o\,
	datad => \dIn[5]~input_o\,
	combout => \pc4_7|count~1_combout\);

-- Location: LCCOMB_X24_Y19_N8
\fullAdder3bit_4|adder0|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_4|adder0|cOut~0_combout\ = (\pc4_8|count[0]~0_combout\ & \pc4_7|count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc4_8|count[0]~0_combout\,
	datad => \pc4_7|count[0]~0_combout\,
	combout => \fullAdder3bit_4|adder0|cOut~0_combout\);

-- Location: LCCOMB_X24_Y19_N2
\pc4_8|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_8|count[1]~1_combout\ = (\dIn[2]~input_o\ & ((\dIn[1]~input_o\ & ((!\dIn[3]~input_o\) # (!\dIn[0]~input_o\))) # (!\dIn[1]~input_o\ & ((\dIn[0]~input_o\) # (\dIn[3]~input_o\))))) # (!\dIn[2]~input_o\ & ((\dIn[1]~input_o\ & ((\dIn[0]~input_o\) # 
-- (\dIn[3]~input_o\))) # (!\dIn[1]~input_o\ & (\dIn[0]~input_o\ & \dIn[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[2]~input_o\,
	datab => \dIn[1]~input_o\,
	datac => \dIn[0]~input_o\,
	datad => \dIn[3]~input_o\,
	combout => \pc4_8|count[1]~1_combout\);

-- Location: LCCOMB_X24_Y19_N0
\fullAdder3bit_4|adder1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_4|adder1|s~0_combout\ = \fullAdder3bit_4|adder0|cOut~0_combout\ $ (\pc4_8|count[1]~1_combout\ $ (((\pc4_7|count~2_combout\) # (\pc4_7|count~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_7|count~2_combout\,
	datab => \pc4_7|count~1_combout\,
	datac => \fullAdder3bit_4|adder0|cOut~0_combout\,
	datad => \pc4_8|count[1]~1_combout\,
	combout => \fullAdder3bit_4|adder1|s~0_combout\);

-- Location: LCCOMB_X24_Y19_N30
\fullAdder4bit_2|adder0|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_2|adder0|cOut~0_combout\ = (\pc4_5|count[0]~0_combout\ & (!\pc4_6|count[0]~0_combout\ & (\pc4_7|count[0]~0_combout\ $ (\pc4_8|count[0]~0_combout\)))) # (!\pc4_5|count[0]~0_combout\ & (\pc4_6|count[0]~0_combout\ & (\pc4_7|count[0]~0_combout\ 
-- $ (\pc4_8|count[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_5|count[0]~0_combout\,
	datab => \pc4_7|count[0]~0_combout\,
	datac => \pc4_6|count[0]~0_combout\,
	datad => \pc4_8|count[0]~0_combout\,
	combout => \fullAdder4bit_2|adder0|cOut~0_combout\);

-- Location: LCCOMB_X24_Y20_N28
\fullAdder3bit_3|adder0|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_3|adder0|cOut~0_combout\ = (\pc4_6|count[0]~0_combout\ & \pc4_5|count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc4_6|count[0]~0_combout\,
	datad => \pc4_5|count[0]~0_combout\,
	combout => \fullAdder3bit_3|adder0|cOut~0_combout\);

-- Location: LCCOMB_X24_Y20_N6
\fullAdder4bit_2|adder1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_2|adder1|s~0_combout\ = \fullAdder3bit_3|adder1|s~0_combout\ $ (\fullAdder3bit_4|adder1|s~0_combout\ $ (\fullAdder4bit_2|adder0|cOut~0_combout\ $ (\fullAdder3bit_3|adder0|cOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder3bit_3|adder1|s~0_combout\,
	datab => \fullAdder3bit_4|adder1|s~0_combout\,
	datac => \fullAdder4bit_2|adder0|cOut~0_combout\,
	datad => \fullAdder3bit_3|adder0|cOut~0_combout\,
	combout => \fullAdder4bit_2|adder1|s~0_combout\);

-- Location: LCCOMB_X26_Y15_N22
\fullAdder4bit_1|adder0|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_1|adder0|cOut~0_combout\ = (\pc4_2|count[0]~0_combout\ & (!\pc4_1|count[0]~0_combout\ & (\pc4_4|count[0]~0_combout\ $ (\pc4_3|count[0]~0_combout\)))) # (!\pc4_2|count[0]~0_combout\ & (\pc4_1|count[0]~0_combout\ & (\pc4_4|count[0]~0_combout\ 
-- $ (\pc4_3|count[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_2|count[0]~0_combout\,
	datab => \pc4_1|count[0]~0_combout\,
	datac => \pc4_4|count[0]~0_combout\,
	datad => \pc4_3|count[0]~0_combout\,
	combout => \fullAdder4bit_1|adder0|cOut~0_combout\);

-- Location: LCCOMB_X25_Y15_N28
\fullAdder5bit_1|adder1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder5bit_1|adder1|s~combout\ = \fullAdder4bit_1|adder1|s~2_combout\ $ (\fullAdder5bit_1|adder0|cOut~0_combout\ $ (\fullAdder4bit_2|adder1|s~0_combout\ $ (\fullAdder4bit_1|adder0|cOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder4bit_1|adder1|s~2_combout\,
	datab => \fullAdder5bit_1|adder0|cOut~0_combout\,
	datac => \fullAdder4bit_2|adder1|s~0_combout\,
	datad => \fullAdder4bit_1|adder0|cOut~0_combout\,
	combout => \fullAdder5bit_1|adder1|s~combout\);

-- Location: LCCOMB_X25_Y15_N22
\fullAdder5bit_1|adder1|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder5bit_1|adder1|cOut~0_combout\ = (\fullAdder5bit_1|adder0|cOut~0_combout\ & ((\fullAdder4bit_2|adder1|s~0_combout\) # (\fullAdder4bit_1|adder1|s~2_combout\ $ (\fullAdder4bit_1|adder0|cOut~0_combout\)))) # (!\fullAdder5bit_1|adder0|cOut~0_combout\ 
-- & (\fullAdder4bit_2|adder1|s~0_combout\ & (\fullAdder4bit_1|adder1|s~2_combout\ $ (\fullAdder4bit_1|adder0|cOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder4bit_1|adder1|s~2_combout\,
	datab => \fullAdder5bit_1|adder0|cOut~0_combout\,
	datac => \fullAdder4bit_2|adder1|s~0_combout\,
	datad => \fullAdder4bit_1|adder0|cOut~0_combout\,
	combout => \fullAdder5bit_1|adder1|cOut~0_combout\);

-- Location: LCCOMB_X24_Y20_N8
\pc4_6|count[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_6|count[2]~2_combout\ = (\dIn[11]~input_o\ & (\dIn[9]~input_o\ & (\dIn[8]~input_o\ & \dIn[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[11]~input_o\,
	datab => \dIn[9]~input_o\,
	datac => \dIn[8]~input_o\,
	datad => \dIn[10]~input_o\,
	combout => \pc4_6|count[2]~2_combout\);

-- Location: LCCOMB_X24_Y20_N18
\pc4_5|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_5|count~3_combout\ = (\dIn[15]~input_o\ & (\dIn[14]~input_o\ & \dIn[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[15]~input_o\,
	datac => \dIn[14]~input_o\,
	datad => \dIn[13]~input_o\,
	combout => \pc4_5|count~3_combout\);

-- Location: LCCOMB_X24_Y20_N12
\fullAdder3bit_3|adder2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_3|adder2|s~0_combout\ = \pc4_6|count[2]~2_combout\ $ (((\dIn[12]~input_o\ & \pc4_5|count~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn[12]~input_o\,
	datac => \pc4_6|count[2]~2_combout\,
	datad => \pc4_5|count~3_combout\,
	combout => \fullAdder3bit_3|adder2|s~0_combout\);

-- Location: LCCOMB_X24_Y20_N0
\fullAdder3bit_3|adder1|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_3|adder1|cOut~0_combout\ = (\pc4_6|count[1]~1_combout\ & ((\fullAdder3bit_3|adder0|cOut~0_combout\) # ((\pc4_5|count~1_combout\) # (\pc4_5|count~2_combout\)))) # (!\pc4_6|count[1]~1_combout\ & (\fullAdder3bit_3|adder0|cOut~0_combout\ & 
-- ((\pc4_5|count~1_combout\) # (\pc4_5|count~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_6|count[1]~1_combout\,
	datab => \fullAdder3bit_3|adder0|cOut~0_combout\,
	datac => \pc4_5|count~1_combout\,
	datad => \pc4_5|count~2_combout\,
	combout => \fullAdder3bit_3|adder1|cOut~0_combout\);

-- Location: LCCOMB_X24_Y20_N22
\fullAdder4bit_2|adder1|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_2|adder1|cOut~0_combout\ = (\fullAdder3bit_4|adder1|s~0_combout\ & ((\fullAdder4bit_2|adder0|cOut~0_combout\) # (\fullAdder3bit_3|adder1|s~0_combout\ $ (\fullAdder3bit_3|adder0|cOut~0_combout\)))) # (!\fullAdder3bit_4|adder1|s~0_combout\ & 
-- (\fullAdder4bit_2|adder0|cOut~0_combout\ & (\fullAdder3bit_3|adder1|s~0_combout\ $ (\fullAdder3bit_3|adder0|cOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder3bit_3|adder1|s~0_combout\,
	datab => \fullAdder3bit_4|adder1|s~0_combout\,
	datac => \fullAdder4bit_2|adder0|cOut~0_combout\,
	datad => \fullAdder3bit_3|adder0|cOut~0_combout\,
	combout => \fullAdder4bit_2|adder1|cOut~0_combout\);

-- Location: LCCOMB_X24_Y19_N22
\pc4_8|count[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_8|count[2]~2_combout\ = (\dIn[2]~input_o\ & (\dIn[1]~input_o\ & (\dIn[0]~input_o\ & \dIn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[2]~input_o\,
	datab => \dIn[1]~input_o\,
	datac => \dIn[0]~input_o\,
	datad => \dIn[3]~input_o\,
	combout => \pc4_8|count[2]~2_combout\);

-- Location: LCCOMB_X24_Y19_N28
\fullAdder3bit_4|adder1|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_4|adder1|cOut~0_combout\ = (\fullAdder3bit_4|adder0|cOut~0_combout\ & ((\pc4_7|count~2_combout\) # ((\pc4_7|count~1_combout\) # (\pc4_8|count[1]~1_combout\)))) # (!\fullAdder3bit_4|adder0|cOut~0_combout\ & (\pc4_8|count[1]~1_combout\ & 
-- ((\pc4_7|count~2_combout\) # (\pc4_7|count~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_7|count~2_combout\,
	datab => \pc4_7|count~1_combout\,
	datac => \fullAdder3bit_4|adder0|cOut~0_combout\,
	datad => \pc4_8|count[1]~1_combout\,
	combout => \fullAdder3bit_4|adder1|cOut~0_combout\);

-- Location: LCCOMB_X24_Y19_N10
\pc4_7|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_7|count~3_combout\ = (\dIn[7]~input_o\ & (\dIn[6]~input_o\ & \dIn[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[7]~input_o\,
	datac => \dIn[6]~input_o\,
	datad => \dIn[5]~input_o\,
	combout => \pc4_7|count~3_combout\);

-- Location: LCCOMB_X24_Y19_N16
\fullAdder3bit_4|adder2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_4|adder2|s~0_combout\ = \pc4_8|count[2]~2_combout\ $ (\fullAdder3bit_4|adder1|cOut~0_combout\ $ (((\dIn[4]~input_o\ & \pc4_7|count~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_8|count[2]~2_combout\,
	datab => \fullAdder3bit_4|adder1|cOut~0_combout\,
	datac => \dIn[4]~input_o\,
	datad => \pc4_7|count~3_combout\,
	combout => \fullAdder3bit_4|adder2|s~0_combout\);

-- Location: LCCOMB_X24_Y20_N26
\fullAdder4bit_2|adder2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_2|adder2|s~combout\ = \fullAdder3bit_3|adder2|s~0_combout\ $ (\fullAdder3bit_3|adder1|cOut~0_combout\ $ (\fullAdder4bit_2|adder1|cOut~0_combout\ $ (\fullAdder3bit_4|adder2|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder3bit_3|adder2|s~0_combout\,
	datab => \fullAdder3bit_3|adder1|cOut~0_combout\,
	datac => \fullAdder4bit_2|adder1|cOut~0_combout\,
	datad => \fullAdder3bit_4|adder2|s~0_combout\,
	combout => \fullAdder4bit_2|adder2|s~combout\);

-- Location: LCCOMB_X26_Y15_N12
\pc4_2|count[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_2|count[2]~2_combout\ = (\dIn[26]~input_o\ & (\dIn[25]~input_o\ & (\dIn[27]~input_o\ & \dIn[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[26]~input_o\,
	datab => \dIn[25]~input_o\,
	datac => \dIn[27]~input_o\,
	datad => \dIn[24]~input_o\,
	combout => \pc4_2|count[2]~2_combout\);

-- Location: LCCOMB_X26_Y15_N14
\pc4_1|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_1|count~3_combout\ = (\dIn[30]~input_o\ & (\dIn[31]~input_o\ & \dIn[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[30]~input_o\,
	datac => \dIn[31]~input_o\,
	datad => \dIn[29]~input_o\,
	combout => \pc4_1|count~3_combout\);

-- Location: LCCOMB_X26_Y15_N24
\fullAdder3bit_1|adder2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_1|adder2|s~0_combout\ = \pc4_2|count[2]~2_combout\ $ (((\pc4_1|count~3_combout\ & \dIn[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_2|count[2]~2_combout\,
	datac => \pc4_1|count~3_combout\,
	datad => \dIn[28]~input_o\,
	combout => \fullAdder3bit_1|adder2|s~0_combout\);

-- Location: LCCOMB_X29_Y15_N6
\pc4_3|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_3|count~3_combout\ = (\dIn[21]~input_o\ & (\dIn[23]~input_o\ & \dIn[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[21]~input_o\,
	datac => \dIn[23]~input_o\,
	datad => \dIn[22]~input_o\,
	combout => \pc4_3|count~3_combout\);

-- Location: LCCOMB_X29_Y15_N18
\pc4_4|count[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc4_4|count[2]~2_combout\ = (\dIn[17]~input_o\ & (\dIn[18]~input_o\ & (\dIn[19]~input_o\ & \dIn[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[17]~input_o\,
	datab => \dIn[18]~input_o\,
	datac => \dIn[19]~input_o\,
	datad => \dIn[16]~input_o\,
	combout => \pc4_4|count[2]~2_combout\);

-- Location: LCCOMB_X29_Y15_N8
\fullAdder3bit_2|adder1|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_2|adder1|cOut~0_combout\ = (\pc4_4|count[1]~1_combout\ & ((\pc4_3|count~2_combout\) # ((\pc4_3|count~1_combout\) # (\fullAdder3bit_2|adder0|cOut~0_combout\)))) # (!\pc4_4|count[1]~1_combout\ & (\fullAdder3bit_2|adder0|cOut~0_combout\ & 
-- ((\pc4_3|count~2_combout\) # (\pc4_3|count~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_3|count~2_combout\,
	datab => \pc4_3|count~1_combout\,
	datac => \pc4_4|count[1]~1_combout\,
	datad => \fullAdder3bit_2|adder0|cOut~0_combout\,
	combout => \fullAdder3bit_2|adder1|cOut~0_combout\);

-- Location: LCCOMB_X29_Y15_N4
\fullAdder3bit_2|adder2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_2|adder2|s~0_combout\ = \pc4_4|count[2]~2_combout\ $ (\fullAdder3bit_2|adder1|cOut~0_combout\ $ (((\pc4_3|count~3_combout\ & \dIn[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_3|count~3_combout\,
	datab => \pc4_4|count[2]~2_combout\,
	datac => \fullAdder3bit_2|adder1|cOut~0_combout\,
	datad => \dIn[20]~input_o\,
	combout => \fullAdder3bit_2|adder2|s~0_combout\);

-- Location: LCCOMB_X26_Y15_N8
\fullAdder3bit_1|adder0|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_1|adder0|cOut~0_combout\ = (\pc4_1|count[0]~0_combout\ & \pc4_2|count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc4_1|count[0]~0_combout\,
	datad => \pc4_2|count[0]~0_combout\,
	combout => \fullAdder3bit_1|adder0|cOut~0_combout\);

-- Location: LCCOMB_X26_Y15_N18
\fullAdder3bit_1|adder1|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_1|adder1|cOut~0_combout\ = (\fullAdder3bit_1|adder0|cOut~0_combout\ & ((\pc4_1|count~1_combout\) # ((\pc4_2|count[1]~1_combout\) # (\pc4_1|count~2_combout\)))) # (!\fullAdder3bit_1|adder0|cOut~0_combout\ & (\pc4_2|count[1]~1_combout\ & 
-- ((\pc4_1|count~1_combout\) # (\pc4_1|count~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_1|count~1_combout\,
	datab => \fullAdder3bit_1|adder0|cOut~0_combout\,
	datac => \pc4_2|count[1]~1_combout\,
	datad => \pc4_1|count~2_combout\,
	combout => \fullAdder3bit_1|adder1|cOut~0_combout\);

-- Location: LCCOMB_X25_Y15_N8
\fullAdder4bit_1|adder2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_1|adder2|s~0_combout\ = \fullAdder3bit_1|adder2|s~0_combout\ $ (\fullAdder3bit_2|adder2|s~0_combout\ $ (\fullAdder3bit_1|adder1|cOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fullAdder3bit_1|adder2|s~0_combout\,
	datac => \fullAdder3bit_2|adder2|s~0_combout\,
	datad => \fullAdder3bit_1|adder1|cOut~0_combout\,
	combout => \fullAdder4bit_1|adder2|s~0_combout\);

-- Location: LCCOMB_X26_Y15_N2
\fullAdder4bit_1|adder1|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_1|adder1|cOut~0_combout\ = (\fullAdder4bit_1|adder0|cOut~0_combout\ & ((\fullAdder3bit_2|adder1|s~0_combout\) # (\fullAdder3bit_1|adder1|s~0_combout\ $ (\fullAdder3bit_1|adder0|cOut~0_combout\)))) # (!\fullAdder4bit_1|adder0|cOut~0_combout\ 
-- & (\fullAdder3bit_2|adder1|s~0_combout\ & (\fullAdder3bit_1|adder1|s~0_combout\ $ (\fullAdder3bit_1|adder0|cOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder4bit_1|adder0|cOut~0_combout\,
	datab => \fullAdder3bit_1|adder1|s~0_combout\,
	datac => \fullAdder3bit_1|adder0|cOut~0_combout\,
	datad => \fullAdder3bit_2|adder1|s~0_combout\,
	combout => \fullAdder4bit_1|adder1|cOut~0_combout\);

-- Location: LCCOMB_X25_Y15_N26
\fullAdder5bit_1|adder2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder5bit_1|adder2|s~combout\ = \fullAdder5bit_1|adder1|cOut~0_combout\ $ (\fullAdder4bit_2|adder2|s~combout\ $ (\fullAdder4bit_1|adder2|s~0_combout\ $ (\fullAdder4bit_1|adder1|cOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder5bit_1|adder1|cOut~0_combout\,
	datab => \fullAdder4bit_2|adder2|s~combout\,
	datac => \fullAdder4bit_1|adder2|s~0_combout\,
	datad => \fullAdder4bit_1|adder1|cOut~0_combout\,
	combout => \fullAdder5bit_1|adder2|s~combout\);

-- Location: LCCOMB_X25_Y15_N10
\fullAdder4bit_1|adder2|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_1|adder2|cOut~0_combout\ = (\fullAdder4bit_1|adder1|cOut~0_combout\ & ((\fullAdder3bit_2|adder2|s~0_combout\) # (\fullAdder3bit_1|adder2|s~0_combout\ $ (\fullAdder3bit_1|adder1|cOut~0_combout\)))) # (!\fullAdder4bit_1|adder1|cOut~0_combout\ 
-- & (\fullAdder3bit_2|adder2|s~0_combout\ & (\fullAdder3bit_1|adder2|s~0_combout\ $ (\fullAdder3bit_1|adder1|cOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder4bit_1|adder1|cOut~0_combout\,
	datab => \fullAdder3bit_1|adder2|s~0_combout\,
	datac => \fullAdder3bit_2|adder2|s~0_combout\,
	datad => \fullAdder3bit_1|adder1|cOut~0_combout\,
	combout => \fullAdder4bit_1|adder2|cOut~0_combout\);

-- Location: LCCOMB_X25_Y15_N20
\fullAdder5bit_1|adder2|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder5bit_1|adder2|cOut~0_combout\ = (\fullAdder5bit_1|adder1|cOut~0_combout\ & ((\fullAdder4bit_2|adder2|s~combout\) # (\fullAdder4bit_1|adder2|s~0_combout\ $ (\fullAdder4bit_1|adder1|cOut~0_combout\)))) # (!\fullAdder5bit_1|adder1|cOut~0_combout\ & 
-- (\fullAdder4bit_2|adder2|s~combout\ & (\fullAdder4bit_1|adder2|s~0_combout\ $ (\fullAdder4bit_1|adder1|cOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder5bit_1|adder1|cOut~0_combout\,
	datab => \fullAdder4bit_2|adder2|s~combout\,
	datac => \fullAdder4bit_1|adder2|s~0_combout\,
	datad => \fullAdder4bit_1|adder1|cOut~0_combout\,
	combout => \fullAdder5bit_1|adder2|cOut~0_combout\);

-- Location: LCCOMB_X24_Y20_N14
\fullAdder3bit_3|adder2|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_3|adder2|cOut~0_combout\ = (\fullAdder3bit_3|adder1|cOut~0_combout\ & ((\pc4_6|count[2]~2_combout\) # ((\dIn[12]~input_o\ & \pc4_5|count~3_combout\)))) # (!\fullAdder3bit_3|adder1|cOut~0_combout\ & (\dIn[12]~input_o\ & 
-- (\pc4_6|count[2]~2_combout\ & \pc4_5|count~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[12]~input_o\,
	datab => \fullAdder3bit_3|adder1|cOut~0_combout\,
	datac => \pc4_6|count[2]~2_combout\,
	datad => \pc4_5|count~3_combout\,
	combout => \fullAdder3bit_3|adder2|cOut~0_combout\);

-- Location: LCCOMB_X24_Y19_N26
\fullAdder3bit_4|adder2|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_4|adder2|cOut~0_combout\ = (\pc4_8|count[2]~2_combout\ & ((\fullAdder3bit_4|adder1|cOut~0_combout\) # ((\dIn[4]~input_o\ & \pc4_7|count~3_combout\)))) # (!\pc4_8|count[2]~2_combout\ & (\fullAdder3bit_4|adder1|cOut~0_combout\ & 
-- (\dIn[4]~input_o\ & \pc4_7|count~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_8|count[2]~2_combout\,
	datab => \fullAdder3bit_4|adder1|cOut~0_combout\,
	datac => \dIn[4]~input_o\,
	datad => \pc4_7|count~3_combout\,
	combout => \fullAdder3bit_4|adder2|cOut~0_combout\);

-- Location: LCCOMB_X24_Y20_N4
\fullAdder4bit_2|adder2|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_2|adder2|cOut~0_combout\ = (\fullAdder4bit_2|adder1|cOut~0_combout\ & ((\fullAdder3bit_4|adder2|s~0_combout\) # (\fullAdder3bit_3|adder2|s~0_combout\ $ (\fullAdder3bit_3|adder1|cOut~0_combout\)))) # (!\fullAdder4bit_2|adder1|cOut~0_combout\ 
-- & (\fullAdder3bit_4|adder2|s~0_combout\ & (\fullAdder3bit_3|adder2|s~0_combout\ $ (\fullAdder3bit_3|adder1|cOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder3bit_3|adder2|s~0_combout\,
	datab => \fullAdder3bit_3|adder1|cOut~0_combout\,
	datac => \fullAdder4bit_2|adder1|cOut~0_combout\,
	datad => \fullAdder3bit_4|adder2|s~0_combout\,
	combout => \fullAdder4bit_2|adder2|cOut~0_combout\);

-- Location: LCCOMB_X25_Y15_N6
\fullAdder4bit_2|adder3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_2|adder3|s~0_combout\ = \fullAdder3bit_3|adder2|cOut~0_combout\ $ (\fullAdder3bit_4|adder2|cOut~0_combout\ $ (\fullAdder4bit_2|adder2|cOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder3bit_3|adder2|cOut~0_combout\,
	datac => \fullAdder3bit_4|adder2|cOut~0_combout\,
	datad => \fullAdder4bit_2|adder2|cOut~0_combout\,
	combout => \fullAdder4bit_2|adder3|s~0_combout\);

-- Location: LCCOMB_X26_Y15_N28
\fullAdder3bit_1|adder2|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_1|adder2|cOut~0_combout\ = (\pc4_2|count[2]~2_combout\ & ((\fullAdder3bit_1|adder1|cOut~0_combout\) # ((\pc4_1|count~3_combout\ & \dIn[28]~input_o\)))) # (!\pc4_2|count[2]~2_combout\ & (\fullAdder3bit_1|adder1|cOut~0_combout\ & 
-- (\pc4_1|count~3_combout\ & \dIn[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_2|count[2]~2_combout\,
	datab => \fullAdder3bit_1|adder1|cOut~0_combout\,
	datac => \pc4_1|count~3_combout\,
	datad => \dIn[28]~input_o\,
	combout => \fullAdder3bit_1|adder2|cOut~0_combout\);

-- Location: LCCOMB_X29_Y15_N14
\fullAdder3bit_2|adder2|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder3bit_2|adder2|cOut~0_combout\ = (\pc4_4|count[2]~2_combout\ & ((\fullAdder3bit_2|adder1|cOut~0_combout\) # ((\pc4_3|count~3_combout\ & \dIn[20]~input_o\)))) # (!\pc4_4|count[2]~2_combout\ & (\pc4_3|count~3_combout\ & 
-- (\fullAdder3bit_2|adder1|cOut~0_combout\ & \dIn[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc4_3|count~3_combout\,
	datab => \pc4_4|count[2]~2_combout\,
	datac => \fullAdder3bit_2|adder1|cOut~0_combout\,
	datad => \dIn[20]~input_o\,
	combout => \fullAdder3bit_2|adder2|cOut~0_combout\);

-- Location: LCCOMB_X25_Y15_N16
\fullAdder4bit_1|adder3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_1|adder3|s~0_combout\ = \fullAdder3bit_1|adder2|cOut~0_combout\ $ (\fullAdder3bit_2|adder2|cOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fullAdder3bit_1|adder2|cOut~0_combout\,
	datac => \fullAdder3bit_2|adder2|cOut~0_combout\,
	combout => \fullAdder4bit_1|adder3|s~0_combout\);

-- Location: LCCOMB_X25_Y15_N12
\fullAdder5bit_1|adder3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder5bit_1|adder3|s~combout\ = \fullAdder4bit_1|adder2|cOut~0_combout\ $ (\fullAdder5bit_1|adder2|cOut~0_combout\ $ (\fullAdder4bit_2|adder3|s~0_combout\ $ (\fullAdder4bit_1|adder3|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder4bit_1|adder2|cOut~0_combout\,
	datab => \fullAdder5bit_1|adder2|cOut~0_combout\,
	datac => \fullAdder4bit_2|adder3|s~0_combout\,
	datad => \fullAdder4bit_1|adder3|s~0_combout\,
	combout => \fullAdder5bit_1|adder3|s~combout\);

-- Location: LCCOMB_X25_Y15_N2
\fullAdder4bit_2|adder3|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_2|adder3|cOut~0_combout\ = (\fullAdder3bit_3|adder2|cOut~0_combout\ & ((\fullAdder3bit_4|adder2|cOut~0_combout\) # (\fullAdder4bit_2|adder2|cOut~0_combout\))) # (!\fullAdder3bit_3|adder2|cOut~0_combout\ & 
-- (\fullAdder3bit_4|adder2|cOut~0_combout\ & \fullAdder4bit_2|adder2|cOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder3bit_3|adder2|cOut~0_combout\,
	datac => \fullAdder3bit_4|adder2|cOut~0_combout\,
	datad => \fullAdder4bit_2|adder2|cOut~0_combout\,
	combout => \fullAdder4bit_2|adder3|cOut~0_combout\);

-- Location: LCCOMB_X25_Y15_N30
\fullAdder4bit_1|adder3|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder4bit_1|adder3|cOut~0_combout\ = (\fullAdder4bit_1|adder2|cOut~0_combout\ & ((\fullAdder3bit_1|adder2|cOut~0_combout\) # (\fullAdder3bit_2|adder2|cOut~0_combout\))) # (!\fullAdder4bit_1|adder2|cOut~0_combout\ & 
-- (\fullAdder3bit_1|adder2|cOut~0_combout\ & \fullAdder3bit_2|adder2|cOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder4bit_1|adder2|cOut~0_combout\,
	datab => \fullAdder3bit_1|adder2|cOut~0_combout\,
	datac => \fullAdder3bit_2|adder2|cOut~0_combout\,
	combout => \fullAdder4bit_1|adder3|cOut~0_combout\);

-- Location: LCCOMB_X25_Y15_N0
\fullAdder5bit_1|adder3|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder5bit_1|adder3|cOut~0_combout\ = (\fullAdder5bit_1|adder2|cOut~0_combout\ & ((\fullAdder4bit_2|adder3|s~0_combout\) # (\fullAdder4bit_1|adder2|cOut~0_combout\ $ (\fullAdder4bit_1|adder3|s~0_combout\)))) # (!\fullAdder5bit_1|adder2|cOut~0_combout\ 
-- & (\fullAdder4bit_2|adder3|s~0_combout\ & (\fullAdder4bit_1|adder2|cOut~0_combout\ $ (\fullAdder4bit_1|adder3|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fullAdder4bit_1|adder2|cOut~0_combout\,
	datab => \fullAdder5bit_1|adder2|cOut~0_combout\,
	datac => \fullAdder4bit_2|adder3|s~0_combout\,
	datad => \fullAdder4bit_1|adder3|s~0_combout\,
	combout => \fullAdder5bit_1|adder3|cOut~0_combout\);

-- Location: LCCOMB_X25_Y15_N4
\fullAdder5bit_1|adder4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder5bit_1|adder4|s~combout\ = \fullAdder4bit_2|adder3|cOut~0_combout\ $ (\fullAdder4bit_1|adder3|cOut~0_combout\ $ (\fullAdder5bit_1|adder3|cOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fullAdder4bit_2|adder3|cOut~0_combout\,
	datac => \fullAdder4bit_1|adder3|cOut~0_combout\,
	datad => \fullAdder5bit_1|adder3|cOut~0_combout\,
	combout => \fullAdder5bit_1|adder4|s~combout\);

-- Location: LCCOMB_X25_Y15_N14
\fullAdder5bit_1|adder4|cOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fullAdder5bit_1|adder4|cOut~0_combout\ = (\fullAdder4bit_2|adder3|cOut~0_combout\ & ((\fullAdder4bit_1|adder3|cOut~0_combout\) # (\fullAdder5bit_1|adder3|cOut~0_combout\))) # (!\fullAdder4bit_2|adder3|cOut~0_combout\ & 
-- (\fullAdder4bit_1|adder3|cOut~0_combout\ & \fullAdder5bit_1|adder3|cOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fullAdder4bit_2|adder3|cOut~0_combout\,
	datac => \fullAdder4bit_1|adder3|cOut~0_combout\,
	datad => \fullAdder5bit_1|adder3|cOut~0_combout\,
	combout => \fullAdder5bit_1|adder4|cOut~0_combout\);

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;

ww_count(4) <= \count[4]~output_o\;

ww_count(5) <= \count[5]~output_o\;
END structure;


