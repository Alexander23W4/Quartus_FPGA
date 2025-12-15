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

ENTITY 74283_7 IS 
PORT 
( 
	A1	:	IN	 STD_LOGIC;
	A2	:	IN	 STD_LOGIC;
	B2	:	IN	 STD_LOGIC;
	A3	:	IN	 STD_LOGIC;
	A4	:	IN	 STD_LOGIC;
	B4	:	IN	 STD_LOGIC;
	B1	:	IN	 STD_LOGIC;
	B3	:	IN	 STD_LOGIC;
	SUM1	:	OUT	 STD_LOGIC;
	SUM2	:	OUT	 STD_LOGIC;
	SUM3	:	OUT	 STD_LOGIC
); 
END 74283_7;

ARCHITECTURE bdf_type OF 74283_7 IS 
BEGIN 

-- instantiate macrofunction 

b2v_inst36 : 74283
PORT MAP(A1 => A1,
		 A2 => A2,
		 B2 => B2,
		 A3 => A3,
		 A4 => A4,
		 B4 => B4,
		 B1 => B1,
		 B3 => B3,
		 SUM1 => SUM1,
		 SUM2 => SUM2,
		 SUM3 => SUM3);

END bdf_type; 