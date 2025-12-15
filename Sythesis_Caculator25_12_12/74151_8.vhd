-- Copyright (C) 1991-2010 Altera Corporation
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

-- PROGRAM		"Quartus II"
-- VERSION		"Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"
-- CREATED		"Mon Dec 15 21:27:03 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY altera;
USE altera.maxplus2.all; 

LIBRARY work;

ENTITY 74151_8 IS 
PORT 
( 
	GN	:	IN	 STD_LOGIC;
	C	:	IN	 STD_LOGIC;
	B	:	IN	 STD_LOGIC;
	A	:	IN	 STD_LOGIC;
	D5	:	IN	 STD_LOGIC;
	D0	:	IN	 STD_LOGIC;
	D1	:	IN	 STD_LOGIC;
	D4	:	IN	 STD_LOGIC;
	D3	:	IN	 STD_LOGIC;
	D2	:	IN	 STD_LOGIC;
	D6	:	IN	 STD_LOGIC;
	D7	:	IN	 STD_LOGIC;
	Y	:	OUT	 STD_LOGIC
); 
END 74151_8;

ARCHITECTURE bdf_type OF 74151_8 IS 
BEGIN 

-- instantiate macrofunction 

b2v_inst4 : 74151
PORT MAP(GN => GN,
		 C => C,
		 B => B,
		 A => A,
		 D5 => D5,
		 D0 => D0,
		 D1 => D1,
		 D4 => D4,
		 D3 => D3,
		 D2 => D2,
		 D6 => D6,
		 D7 => D7,
		 Y => Y);

END bdf_type; 