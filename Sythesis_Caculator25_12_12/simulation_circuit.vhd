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
-- CREATED		"Sun Dec 21 09:25:21 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY simulation_circuit IS 
	PORT
	(
		CLEAR :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		D0 :  IN  STD_LOGIC;
		D1 :  IN  STD_LOGIC;
		D2 :  IN  STD_LOGIC;
		D3 :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		E :  IN  STD_LOGIC;
		out40 :  OUT  STD_LOGIC;
		out41 :  OUT  STD_LOGIC;
		out42 :  OUT  STD_LOGIC;
		out43 :  OUT  STD_LOGIC;
		out10 :  OUT  STD_LOGIC;
		out11 :  OUT  STD_LOGIC;
		out12 :  OUT  STD_LOGIC;
		out13 :  OUT  STD_LOGIC;
		out20 :  OUT  STD_LOGIC;
		out21 :  OUT  STD_LOGIC;
		out22 :  OUT  STD_LOGIC;
		out23 :  OUT  STD_LOGIC;
		out30 :  OUT  STD_LOGIC;
		out31 :  OUT  STD_LOGIC;
		out32 :  OUT  STD_LOGIC;
		out33 :  OUT  STD_LOGIC
	);
END simulation_circuit;

ARCHITECTURE bdf_type OF simulation_circuit IS 

COMPONENT bcd_calculator
	PORT(pin_in_B2 : IN STD_LOGIC;
		 pin_in_A2 : IN STD_LOGIC;
		 pin_in_A3 : IN STD_LOGIC;
		 pin_in_B3 : IN STD_LOGIC;
		 pin_in_A4 : IN STD_LOGIC;
		 pin_in_B4 : IN STD_LOGIC;
		 pin_in_A1 : IN STD_LOGIC;
		 pin_in_B1 : IN STD_LOGIC;
		 pin_in_Carry : IN STD_LOGIC;
		 SUB_ADD : IN STD_LOGIC;
		 out_D1 : OUT STD_LOGIC;
		 out_D2 : OUT STD_LOGIC;
		 out_D4 : OUT STD_LOGIC;
		 out_sub_CF : OUT STD_LOGIC;
		 out_D8 : OUT STD_LOGIC;
		 out_add_C : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT bcd_multiplier
	PORT(a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 bcd_hundreds : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 bcd_ones : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 bcd_tens : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT latch_4bit_separate
	PORT(clk : IN STD_LOGIC;
		 set : IN STD_LOGIC;
		 clear : IN STD_LOGIC;
		 din0 : IN STD_LOGIC;
		 din1 : IN STD_LOGIC;
		 din2 : IN STD_LOGIC;
		 din3 : IN STD_LOGIC;
		 dout0 : OUT STD_LOGIC;
		 dout1 : OUT STD_LOGIC;
		 dout2 : OUT STD_LOGIC;
		 dout3 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT latch_8bit_separate
	PORT(clk : IN STD_LOGIC;
		 set : IN STD_LOGIC;
		 clear : IN STD_LOGIC;
		 din0 : IN STD_LOGIC;
		 din1 : IN STD_LOGIC;
		 din2 : IN STD_LOGIC;
		 din3 : IN STD_LOGIC;
		 din4 : IN STD_LOGIC;
		 din5 : IN STD_LOGIC;
		 din6 : IN STD_LOGIC;
		 din7 : IN STD_LOGIC;
		 dout0 : OUT STD_LOGIC;
		 dout1 : OUT STD_LOGIC;
		 dout2 : OUT STD_LOGIC;
		 dout3 : OUT STD_LOGIC;
		 dout4 : OUT STD_LOGIC;
		 dout5 : OUT STD_LOGIC;
		 dout6 : OUT STD_LOGIC;
		 dout7 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	1D0 :  STD_LOGIC;
SIGNAL	1D1 :  STD_LOGIC;
SIGNAL	1D2 :  STD_LOGIC;
SIGNAL	1D3 :  STD_LOGIC;
SIGNAL	2D0 :  STD_LOGIC;
SIGNAL	2D1 :  STD_LOGIC;
SIGNAL	2D2 :  STD_LOGIC;
SIGNAL	2D3 :  STD_LOGIC;
SIGNAL	AC :  STD_LOGIC;
SIGNAL	aD0 :  STD_LOGIC;
SIGNAL	aD1 :  STD_LOGIC;
SIGNAL	aD2 :  STD_LOGIC;
SIGNAL	aD3 :  STD_LOGIC;
SIGNAL	AL :  STD_LOGIC;
SIGNAL	BL :  STD_LOGIC;
SIGNAL	CF :  STD_LOGIC;
SIGNAL	CL :  STD_LOGIC;
SIGNAL	CL_ :  STD_LOGIC;
SIGNAL	EL :  STD_LOGIC;
SIGNAL	mh :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	mo :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	mt :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	Q :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	Sel_ABC :  STD_LOGIC;
SIGNAL	Sel_ABC_ :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_0 <= '0';
SYNTHESIZED_WIRE_33 <= '1';
SYNTHESIZED_WIRE_34 <= '1';




Sel_ABC_ <= NOT(Sel_ABC);



1D0 <= D0 AND Sel_ABC_;


1D1 <= D1 AND Sel_ABC_;


1D2 <= D2 AND Sel_ABC_;


1D3 <= D3 AND Sel_ABC_;


2D0 <= D0 AND Sel_ABC;


2D1 <= D1 AND Sel_ABC;


2D2 <= D2 AND Sel_ABC;


2D3 <= D3 AND Sel_ABC;


b2v_inst19 : bcd_calculator
PORT MAP(pin_in_B2 => Q(5),
		 pin_in_A2 => Q(1),
		 pin_in_A3 => Q(2),
		 pin_in_B3 => Q(6),
		 pin_in_A4 => Q(3),
		 pin_in_B4 => Q(7),
		 pin_in_A1 => Q(0),
		 pin_in_B1 => Q(4),
		 pin_in_Carry => SYNTHESIZED_WIRE_0,
		 SUB_ADD => BL,
		 out_D1 => aD0,
		 out_D2 => aD1,
		 out_D4 => aD2,
		 out_sub_CF => CF,
		 out_D8 => aD3,
		 out_add_C => AC);


b2v_inst22 : bcd_multiplier
PORT MAP(a => Q(3 DOWNTO 0),
		 b => Q(7 DOWNTO 4),
		 bcd_hundreds => mh,
		 bcd_ones => mo,
		 bcd_tens => mt);


CL_ <= NOT(CL);



SYNTHESIZED_WIRE_8 <= CL_ AND aD3;


SYNTHESIZED_WIRE_1 <= CL AND mo(0);


SYNTHESIZED_WIRE_3 <= CL AND mo(1);


SYNTHESIZED_WIRE_5 <= CL AND mo(2);


SYNTHESIZED_WIRE_7 <= CL AND mo(3);


SYNTHESIZED_WIRE_21 <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


SYNTHESIZED_WIRE_22 <= SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4;


SYNTHESIZED_WIRE_23 <= SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6;


SYNTHESIZED_WIRE_24 <= SYNTHESIZED_WIRE_7 OR SYNTHESIZED_WIRE_8;


SYNTHESIZED_WIRE_10 <= CL_ AND CF AND BL;


SYNTHESIZED_WIRE_9 <= CL_ AND AC AND AL;


SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10;


SYNTHESIZED_WIRE_25 <= SYNTHESIZED_WIRE_11 OR SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_11 <= CL AND mt(0);


SYNTHESIZED_WIRE_26 <= CL AND mt(1);


SYNTHESIZED_WIRE_27 <= CL AND mt(2);


Sel_ABC <= BL OR CL OR AL;


SYNTHESIZED_WIRE_28 <= CL AND mt(3);


SYNTHESIZED_WIRE_29 <= CL AND mh(0);


SYNTHESIZED_WIRE_30 <= CL AND mh(1);


SYNTHESIZED_WIRE_31 <= CL AND mh(2);


SYNTHESIZED_WIRE_32 <= CL AND mh(3);


SYNTHESIZED_WIRE_14 <= 2D0 OR 1D0;


SYNTHESIZED_WIRE_16 <= 2D1 OR 1D1;


SYNTHESIZED_WIRE_18 <= 2D2 OR 1D2;


SYNTHESIZED_WIRE_20 <= 2D3 OR 1D3;


out40 <= SYNTHESIZED_WIRE_35 AND SYNTHESIZED_WIRE_14;


SYNTHESIZED_WIRE_2 <= CL_ AND aD0;


out41 <= SYNTHESIZED_WIRE_35 AND SYNTHESIZED_WIRE_16;


out42 <= SYNTHESIZED_WIRE_35 AND SYNTHESIZED_WIRE_18;


out43 <= SYNTHESIZED_WIRE_35 AND SYNTHESIZED_WIRE_20;


SYNTHESIZED_WIRE_35 <= NOT(EL);



out10 <= EL AND SYNTHESIZED_WIRE_21;


out11 <= EL AND SYNTHESIZED_WIRE_22;


out12 <= EL AND SYNTHESIZED_WIRE_23;


out13 <= EL AND SYNTHESIZED_WIRE_24;


out20 <= EL AND SYNTHESIZED_WIRE_25;


out21 <= EL AND SYNTHESIZED_WIRE_26;


SYNTHESIZED_WIRE_4 <= CL_ AND aD1;


out22 <= EL AND SYNTHESIZED_WIRE_27;


out23 <= EL AND SYNTHESIZED_WIRE_28;


out30 <= EL AND SYNTHESIZED_WIRE_29;


out31 <= EL AND SYNTHESIZED_WIRE_30;


out32 <= EL AND SYNTHESIZED_WIRE_31;


out33 <= EL AND SYNTHESIZED_WIRE_32;


b2v_inst66 : latch_4bit_separate
PORT MAP(clk => CLK,
		 set => SYNTHESIZED_WIRE_33,
		 clear => CLEAR,
		 din0 => A,
		 din1 => B,
		 din2 => C,
		 din3 => E,
		 dout0 => AL,
		 dout1 => BL,
		 dout2 => CL,
		 dout3 => EL);


b2v_inst67 : latch_8bit_separate
PORT MAP(clk => CLK,
		 set => SYNTHESIZED_WIRE_34,
		 clear => CLEAR,
		 din0 => 1D0,
		 din1 => 1D1,
		 din2 => 1D2,
		 din3 => 1D3,
		 din4 => 2D0,
		 din5 => 2D1,
		 din6 => 2D2,
		 din7 => 2D3,
		 dout0 => Q(0),
		 dout1 => Q(1),
		 dout2 => Q(2),
		 dout3 => Q(3),
		 dout4 => Q(4),
		 dout5 => Q(5),
		 dout6 => Q(6),
		 dout7 => Q(7));




SYNTHESIZED_WIRE_6 <= CL_ AND aD2;


END bdf_type;