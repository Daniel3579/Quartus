-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/20/2022 16:10:07"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	labthirdthird IS
    PORT (
	a : IN std_logic;
	a1 : IN std_logic;
	b : IN std_logic;
	b1 : IN std_logic;
	k : IN std_logic;
	z : IN std_logic;
	p0 : OUT std_logic;
	p : OUT std_logic;
	s1 : OUT std_logic;
	s : OUT std_logic
	);
END labthirdthird;

-- Design Ports Information
-- p0	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF labthirdthird IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_k : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_p0 : std_logic;
SIGNAL ww_p : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL \p0~output_o\ : std_logic;
SIGNAL \p~output_o\ : std_logic;
SIGNAL \s1~output_o\ : std_logic;
SIGNAL \s~output_o\ : std_logic;
SIGNAL \k~input_o\ : std_logic;
SIGNAL \z~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \p0~0_combout\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \p~0_combout\ : std_logic;
SIGNAL \s1~0_combout\ : std_logic;
SIGNAL \s~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_a1 <= a1;
ww_b <= b;
ww_b1 <= b1;
ww_k <= k;
ww_z <= z;
p0 <= ww_p0;
p <= ww_p;
s1 <= ww_s1;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N2
\p0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p0~0_combout\,
	devoe => ww_devoe,
	o => \p0~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\p~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p~0_combout\,
	devoe => ww_devoe,
	o => \p~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\s1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1~0_combout\,
	devoe => ww_devoe,
	o => \s1~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\s~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s~0_combout\,
	devoe => ww_devoe,
	o => \s~output_o\);

-- Location: IOIBUF_X10_Y0_N8
\k~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k,
	o => \k~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\z~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z,
	o => \z~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\a~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\b~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LCCOMB_X6_Y1_N0
\p0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \p0~0_combout\ = (\z~input_o\ & ((\b~input_o\) # (\k~input_o\ $ (\a~input_o\)))) # (!\z~input_o\ & (\b~input_o\ & (\k~input_o\ $ (\a~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k~input_o\,
	datab => \z~input_o\,
	datac => \a~input_o\,
	datad => \b~input_o\,
	combout => \p0~0_combout\);

-- Location: IOIBUF_X22_Y0_N1
\a1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\b1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: LCCOMB_X6_Y1_N10
\p~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \p~0_combout\ = (\p0~0_combout\ & ((\b1~input_o\) # (\a1~input_o\ $ (\k~input_o\)))) # (!\p0~0_combout\ & (\b1~input_o\ & (\a1~input_o\ $ (\k~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1~input_o\,
	datab => \p0~0_combout\,
	datac => \b1~input_o\,
	datad => \k~input_o\,
	combout => \p~0_combout\);

-- Location: LCCOMB_X6_Y1_N28
\s1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s1~0_combout\ = \a1~input_o\ $ (\p0~0_combout\ $ (\b1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1~input_o\,
	datab => \p0~0_combout\,
	datac => \b1~input_o\,
	combout => \s1~0_combout\);

-- Location: LCCOMB_X6_Y1_N6
\s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s~0_combout\ = \z~input_o\ $ (\a~input_o\ $ (\b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \z~input_o\,
	datac => \a~input_o\,
	datad => \b~input_o\,
	combout => \s~0_combout\);

ww_p0 <= \p0~output_o\;

ww_p <= \p~output_o\;

ww_s1 <= \s1~output_o\;

ww_s <= \s~output_o\;
END structure;


