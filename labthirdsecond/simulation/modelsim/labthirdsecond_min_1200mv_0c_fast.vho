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

-- DATE "11/19/2022 22:06:38"

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

ENTITY 	labthirdsecond IS
    PORT (
	S1 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	Z : IN std_logic;
	S2 : OUT std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	K : IN std_logic;
	P : OUT std_logic
	);
END labthirdsecond;

-- Design Ports Information
-- S1	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF labthirdsecond IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_K : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \P~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst11~combout\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;

BEGIN

S1 <= ww_S1;
ww_A <= A;
ww_B <= B;
ww_Z <= Z;
S2 <= ww_S2;
ww_A1 <= A1;
ww_B1 <= B1;
ww_K <= K;
P <= ww_P;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X10_Y0_N9
\S1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\S2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\P~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~combout\,
	devoe => ww_devoe,
	o => \P~output_o\);

-- Location: IOIBUF_X10_Y31_N1
\A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\Z~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: LCCOMB_X12_Y1_N24
inst4 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~combout\ = \A~input_o\ $ (\B~input_o\ $ (\Z~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \B~input_o\,
	datad => \Z~input_o\,
	combout => \inst4~combout\);

-- Location: IOIBUF_X8_Y0_N8
\A1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\B1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\K~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

-- Location: LCCOMB_X12_Y1_N2
inst7 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7~combout\ = (\B~input_o\ & ((\Z~input_o\) # (\A~input_o\ $ (\K~input_o\)))) # (!\B~input_o\ & (\Z~input_o\ & (\A~input_o\ $ (\K~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \B~input_o\,
	datac => \K~input_o\,
	datad => \Z~input_o\,
	combout => \inst7~combout\);

-- Location: LCCOMB_X12_Y1_N28
inst11 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11~combout\ = \A1~input_o\ $ (\B1~input_o\ $ (\inst7~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1~input_o\,
	datac => \B1~input_o\,
	datad => \inst7~combout\,
	combout => \inst11~combout\);

-- Location: LCCOMB_X12_Y1_N6
inst14 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst14~combout\ = (\B1~input_o\ & ((\inst7~combout\) # (\K~input_o\ $ (\A1~input_o\)))) # (!\B1~input_o\ & (\inst7~combout\ & (\K~input_o\ $ (\A1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K~input_o\,
	datab => \A1~input_o\,
	datac => \B1~input_o\,
	datad => \inst7~combout\,
	combout => \inst14~combout\);

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_P <= \P~output_o\;
END structure;


