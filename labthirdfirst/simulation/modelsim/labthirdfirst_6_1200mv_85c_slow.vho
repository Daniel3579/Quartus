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

-- DATE "11/20/2022 14:53:07"

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

ENTITY 	labthirdfirst IS
    PORT (
	P : OUT std_logic;
	Z : IN std_logic;
	K : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	S1 : OUT std_logic;
	S : OUT std_logic
	);
END labthirdfirst;

-- Design Ports Information
-- P	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF labthirdfirst IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_K : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL \P~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst1|inst7~combout\ : std_logic;
SIGNAL \inst2|inst7~combout\ : std_logic;
SIGNAL \inst2|inst4~combout\ : std_logic;
SIGNAL \inst1|inst4~combout\ : std_logic;

BEGIN

P <= ww_P;
ww_Z <= Z;
ww_K <= K;
ww_A <= A;
ww_B <= B;
ww_A1 <= A1;
ww_B1 <= B1;
S1 <= ww_S1;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y0_N2
\P~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst7~combout\,
	devoe => ww_devoe,
	o => \P~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\S1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst4~combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\S~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4~combout\,
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOIBUF_X20_Y0_N1
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
\K~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\B1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\Z~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X14_Y1_N0
\inst1|inst7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst7~combout\ = (\Z~input_o\ & ((\B~input_o\) # (\A~input_o\ $ (\K~input_o\)))) # (!\Z~input_o\ & (\B~input_o\ & (\A~input_o\ $ (\K~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \Z~input_o\,
	datac => \K~input_o\,
	datad => \B~input_o\,
	combout => \inst1|inst7~combout\);

-- Location: LCCOMB_X14_Y1_N10
\inst2|inst7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst7~combout\ = (\B1~input_o\ & ((\inst1|inst7~combout\) # (\A1~input_o\ $ (\K~input_o\)))) # (!\B1~input_o\ & (\inst1|inst7~combout\ & (\A1~input_o\ $ (\K~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \K~input_o\,
	datac => \B1~input_o\,
	datad => \inst1|inst7~combout\,
	combout => \inst2|inst7~combout\);

-- Location: LCCOMB_X14_Y1_N4
\inst2|inst4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst4~combout\ = \A1~input_o\ $ (\inst1|inst7~combout\ $ (\B1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \inst1|inst7~combout\,
	datac => \B1~input_o\,
	combout => \inst2|inst4~combout\);

-- Location: LCCOMB_X14_Y1_N22
\inst1|inst4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4~combout\ = \A~input_o\ $ (\Z~input_o\ $ (\B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \Z~input_o\,
	datad => \B~input_o\,
	combout => \inst1|inst4~combout\);

ww_P <= \P~output_o\;

ww_S1 <= \S1~output_o\;

ww_S <= \S~output_o\;
END structure;


