// Copyright (C) 1991-2010 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II"
// VERSION		"Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"
// CREATED		"Mon Dec 15 21:16:21 2025"

module \4bitmulti (
	CLK,
	Start,
	A1,
	A2,
	A3,
	A4,
	B1,
	B2,
	B3,
	B4,
	M1,
	M2,
	M3,
	M4,
	M5,
	M6,
	M7,
	M8
);


input	CLK;
input	Start;
input	A1;
input	A2;
input	A3;
input	A4;
input	B1;
input	B2;
input	B3;
input	B4;
output	M1;
output	M2;
output	M3;
output	M4;
output	M5;
output	M6;
output	M7;
output	M8;

wire	AA1;
wire	AA2;
wire	AA3;
wire	AA4;
wire	AY1;
wire	AY2;
wire	AY3;
wire	AY4;
wire	D0;
wire	D01;
wire	D02;
wire	D03;
wire	D04;
wire	D05;
wire	D1;
wire	D11;
wire	D12;
wire	D13;
wire	D14;
wire	D15;
wire	D2;
wire	D21;
wire	D22;
wire	D23;
wire	D24;
wire	D25;
wire	D3;
wire	D31;
wire	D32;
wire	D33;
wire	D34;
wire	D35;
wire	D4;
wire	D41;
wire	D42;
wire	D43;
wire	D44;
wire	D45;
wire	D5;
wire	D51;
wire	D52;
wire	D53;
wire	D54;
wire	D55;
wire	D6;
wire	D61;
wire	D62;
wire	D63;
wire	D64;
wire	D65;
wire	D7;
wire	D71;
wire	D72;
wire	D73;
wire	D74;
wire	D75;
wire	ENP;
wire	Q0;
wire	Q1;
wire	Q2;
wire	Q3;
wire	Q4;
wire	Q5;
wire	Q6;
wire	Q7;
wire	QA1;
wire	QA2;
wire	QA3;
wire	QA4;
wire	QA5;
wire	QB1;
wire	QB2;
wire	QB3;
wire	QB4;
wire	QB5;
wire	QC1;
wire	QC2;
wire	QC3;
wire	QC4;
wire	QC5;
wire	QD1;
wire	QD2;
wire	QD3;
wire	QD4;
wire	QD5;
wire	SC;
wire	SUM1;
wire	SUM2;
wire	SUM3;
wire	SUM4;
wire	Y1;
wire	Y2;
wire	Y3;
wire	Y4;
wire	YB;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_51;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_56;
wire	SYNTHESIZED_WIRE_57;
wire	SYNTHESIZED_WIRE_58;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_59;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_60;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_61;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_62;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_63;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_64;

assign	SYNTHESIZED_WIRE_0 = 0;
assign	SYNTHESIZED_WIRE_51 = 1;
assign	SYNTHESIZED_WIRE_3 = 0;
assign	SYNTHESIZED_WIRE_52 = 1;
assign	SYNTHESIZED_WIRE_53 = 0;
assign	SYNTHESIZED_WIRE_11 = 0;
assign	SYNTHESIZED_WIRE_54 = 0;
assign	SYNTHESIZED_WIRE_14 = 1;
assign	SYNTHESIZED_WIRE_16 = 1;
assign	SYNTHESIZED_WIRE_55 = 0;
assign	SYNTHESIZED_WIRE_56 = 1;
assign	SYNTHESIZED_WIRE_57 = 0;
assign	SYNTHESIZED_WIRE_58 = 0;
assign	SYNTHESIZED_WIRE_27 = 1;
assign	SYNTHESIZED_WIRE_28 = 0;
assign	SYNTHESIZED_WIRE_33 = 0;
assign	SYNTHESIZED_WIRE_35 = 0;
assign	SYNTHESIZED_WIRE_36 = 1;
assign	SYNTHESIZED_WIRE_60 = 0;
assign	SYNTHESIZED_WIRE_39 = 1;
assign	SYNTHESIZED_WIRE_61 = 0;
assign	SYNTHESIZED_WIRE_42 = 1;
assign	SYNTHESIZED_WIRE_62 = 0;
assign	SYNTHESIZED_WIRE_45 = 1;
assign	SYNTHESIZED_WIRE_63 = 0;
assign	SYNTHESIZED_WIRE_48 = 1;
assign	SYNTHESIZED_WIRE_64 = 0;




\74283 	b2v_inst(
	.CIN(SYNTHESIZED_WIRE_0),
	.A1(AY1),
	.A2(AY2),
	.B2(AA2),
	.A3(AY3),
	.A4(AY4),
	.B4(AA4),
	.B1(AA1),
	.B3(AA3),
	.SUM4(SUM4),
	.COUT(SC),
	.SUM1(SUM1),
	.SUM2(SUM2),
	.SUM3(SUM3));



\8BitRegister 	b2v_inst11(
	.D0(D0),
	.D1(D1),
	.D2(D2),
	.D3(D3),
	.D4(D4),
	.D5(D5),
	.D6(D6),
	.D7(D7),
	.PRN(SYNTHESIZED_WIRE_51),
	.CLK(CLK),
	.Clear(SYNTHESIZED_WIRE_51),
	.Q0(Q0),
	.Q1(Q1),
	.Q2(Q2),
	.Q3(Q3),
	.Q4(Q4),
	.Q5(Q5),
	.Q6(Q6),
	.Q7(Q7));










\74151 	b2v_inst2(
	.GN(SYNTHESIZED_WIRE_3),
	.C(QC1),
	.B(QB1),
	.A(QA1),
	.D5(Q5),
	.D0(Q0),
	.D1(Q1),
	.D4(Q4),
	.D3(Q3),
	.D2(Q2),
	.D6(Q6),
	.D7(Q7),
	.Y(Y1)
	);





\74161 	b2v_inst23(
	.CLRN(SYNTHESIZED_WIRE_52),
	.CLK(CLK),
	.ENP(ENP),
	.LDN(SYNTHESIZED_WIRE_52),
	.A(SYNTHESIZED_WIRE_53),
	.D(SYNTHESIZED_WIRE_53),
	.ENT(SYNTHESIZED_WIRE_52),
	.B(SYNTHESIZED_WIRE_53),
	.C(SYNTHESIZED_WIRE_53),
	.QD(QD1),
	.QC(QC1),
	.QB(QB1),
	.QA(QA1)
	);



\74151 	b2v_inst3(
	.GN(SYNTHESIZED_WIRE_11),
	.C(QC2),
	.B(QB2),
	.A(QA2),
	.D5(Q5),
	.D0(Q0),
	.D1(Q1),
	.D4(Q4),
	.D3(Q3),
	.D2(Q2),
	.D6(Q6),
	.D7(Q7),
	.Y(Y2)
	);


\74283 	b2v_inst30(
	
	.A1(QA1),
	.A2(QB1),
	.B2(SYNTHESIZED_WIRE_54),
	.A3(QC1),
	.A4(QD1),
	.B4(SYNTHESIZED_WIRE_54),
	.B1(SYNTHESIZED_WIRE_14),
	.B3(SYNTHESIZED_WIRE_54),
	
	
	.SUM1(QA2),
	.SUM2(QB2),
	.SUM3(QC2));


\74283 	b2v_inst31(
	
	.A1(QA1),
	.A2(QB1),
	.B2(SYNTHESIZED_WIRE_16),
	.A3(QC1),
	.A4(QD1),
	.B4(SYNTHESIZED_WIRE_55),
	.B1(SYNTHESIZED_WIRE_55),
	.B3(SYNTHESIZED_WIRE_55),
	
	
	.SUM1(QA3),
	.SUM2(QB3),
	.SUM3(QC3));




\74283 	b2v_inst34(
	
	.A1(QA1),
	.A2(QB1),
	.B2(SYNTHESIZED_WIRE_56),
	.A3(QC1),
	.A4(QD1),
	.B4(SYNTHESIZED_WIRE_57),
	.B1(SYNTHESIZED_WIRE_56),
	.B3(SYNTHESIZED_WIRE_57),
	
	
	.SUM1(QA4),
	.SUM2(QB4),
	.SUM3(QC4));



\74283 	b2v_inst36(
	
	.A1(QA1),
	.A2(QB1),
	.B2(SYNTHESIZED_WIRE_58),
	.A3(QC1),
	.A4(QD1),
	.B4(SYNTHESIZED_WIRE_58),
	.B1(SYNTHESIZED_WIRE_58),
	.B3(SYNTHESIZED_WIRE_27),
	
	
	.SUM1(QA5),
	.SUM2(QB5),
	.SUM3(QC5));


assign	AA1 = A1 & YB;

assign	AA2 = A2 & YB;


\74151 	b2v_inst4(
	.GN(SYNTHESIZED_WIRE_28),
	.C(QC3),
	.B(QB3),
	.A(QA3),
	.D5(Q5),
	.D0(Q0),
	.D1(Q1),
	.D4(Q4),
	.D3(Q3),
	.D2(Q2),
	.D6(Q6),
	.D7(Q7),
	.Y(Y3)
	);

assign	AA3 = A3 & YB;

assign	AA4 = A4 & YB;

assign	SYNTHESIZED_WIRE_59 = QB1 | QC1 | QA1;

assign	AY1 = SYNTHESIZED_WIRE_59 & Y1;

assign	AY2 = SYNTHESIZED_WIRE_59 & Y2;

assign	AY3 = SYNTHESIZED_WIRE_59 & Y3;

assign	AY4 = SYNTHESIZED_WIRE_59 & Y4;


\74151 	b2v_inst5(
	.GN(SYNTHESIZED_WIRE_33),
	.C(QC4),
	.B(QB4),
	.A(QA4),
	.D5(Q5),
	.D0(Q0),
	.D1(Q1),
	.D4(Q4),
	.D3(Q3),
	.D2(Q2),
	.D6(Q6),
	.D7(Q7),
	.Y(Y4)
	);



assign	SYNTHESIZED_WIRE_34 = ~(QB1 & QA1);

assign	ENP = SYNTHESIZED_WIRE_34 & Start;





\74151 	b2v_inst6(
	.GN(SYNTHESIZED_WIRE_35),
	.C(QC1),
	.B(QB1),
	.A(QA1),
	
	.D0(B1),
	.D1(B2),
	
	.D3(B4),
	.D2(B3),
	
	
	.Y(YB)
	);




\74138forMulti 	b2v_inst65(
	.Data(SC),
	.A(QA5),
	.B(QB5),
	.C(QC5),
	.G1(SYNTHESIZED_WIRE_36),
	.G2/(SYNTHESIZED_WIRE_60),
	.G3/(SYNTHESIZED_WIRE_60),
	.Y0(D05),
	.Y1(D15),
	.Y2(D25),
	.Y3(D35),
	.Y4(D45),
	.Y5(D55),
	.Y6(D65),
	.Y7(D75));


\74138forMulti 	b2v_inst66(
	.Data(SUM1),
	.A(QA1),
	.B(QB1),
	.C(QC1),
	.G1(SYNTHESIZED_WIRE_39),
	.G2/(SYNTHESIZED_WIRE_61),
	.G3/(SYNTHESIZED_WIRE_61),
	.Y0(D01),
	.Y1(D11),
	.Y2(D21),
	.Y3(D31),
	.Y4(D41),
	.Y5(D51),
	.Y6(D61),
	.Y7(D71));


\74138forMulti 	b2v_inst67(
	.Data(SUM2),
	.A(QA2),
	.B(QB2),
	.C(QC2),
	.G1(SYNTHESIZED_WIRE_42),
	.G2/(SYNTHESIZED_WIRE_62),
	.G3/(SYNTHESIZED_WIRE_62),
	.Y0(D02),
	.Y1(D12),
	.Y2(D22),
	.Y3(D32),
	.Y4(D42),
	.Y5(D52),
	.Y6(D62),
	.Y7(D72));


\74138forMulti 	b2v_inst68(
	.Data(SUM3),
	.A(QA3),
	.B(QB3),
	.C(QC3),
	.G1(SYNTHESIZED_WIRE_45),
	.G2/(SYNTHESIZED_WIRE_63),
	.G3/(SYNTHESIZED_WIRE_63),
	.Y0(D03),
	.Y1(D13),
	.Y2(D23),
	.Y3(D33),
	.Y4(D43),
	.Y5(D53),
	.Y6(D63),
	.Y7(D73));


\74138forMulti 	b2v_inst69(
	.Data(SUM4),
	.A(QA4),
	.B(QB4),
	.C(QC4),
	.G1(SYNTHESIZED_WIRE_48),
	.G2/(SYNTHESIZED_WIRE_64),
	.G3/(SYNTHESIZED_WIRE_64),
	.Y0(D04),
	.Y1(D14),
	.Y2(D24),
	.Y3(D34),
	.Y4(D44),
	.Y5(D54),
	.Y6(D64),
	.Y7(D74));



or5_0	b2v_inst77(
	.IN1(D01),
	.IN3(D03),
	.IN2(D02),
	.IN5(D05),
	.IN4(D04),
	.OUT(D0));


or5_1	b2v_inst78(
	.IN1(D11),
	.IN3(D13),
	.IN2(D12),
	.IN5(D15),
	.IN4(D14),
	.OUT(D1));


or5_2	b2v_inst79(
	.IN1(D21),
	.IN3(D23),
	.IN2(D22),
	.IN5(D25),
	.IN4(D24),
	.OUT(D2));



or5_3	b2v_inst80(
	.IN1(D31),
	.IN3(D33),
	.IN2(D32),
	.IN5(D35),
	.IN4(D34),
	.OUT(D3));


or5_4	b2v_inst81(
	.IN1(D41),
	.IN3(D43),
	.IN2(D42),
	.IN5(D45),
	.IN4(D44),
	.OUT(D4));


or5_5	b2v_inst82(
	.IN1(D51),
	.IN3(D53),
	.IN2(D52),
	.IN5(D55),
	.IN4(D54),
	.OUT(D5));


or5_6	b2v_inst83(
	.IN1(D61),
	.IN3(D63),
	.IN2(D62),
	.IN5(D65),
	.IN4(D64),
	.OUT(D6));


or5_7	b2v_inst84(
	.IN1(D71),
	.IN3(D73),
	.IN2(D72),
	.IN5(D75),
	.IN4(D74),
	.OUT(D7));


assign	M1 = Q0;
assign	M2 = Q1;
assign	M3 = Q2;
assign	M4 = Q3;
assign	M5 = Q4;
assign	M6 = Q5;
assign	M7 = Q6;
assign	M8 = Q7;

endmodule

module or5_0(IN1,IN3,IN2,IN5,IN4,OUT);
/* synthesis black_box */

input IN1;
input IN3;
input IN2;
input IN5;
input IN4;
output OUT;

endmodule

module or5_1(IN1,IN3,IN2,IN5,IN4,OUT);
/* synthesis black_box */

input IN1;
input IN3;
input IN2;
input IN5;
input IN4;
output OUT;

endmodule

module or5_2(IN1,IN3,IN2,IN5,IN4,OUT);
/* synthesis black_box */

input IN1;
input IN3;
input IN2;
input IN5;
input IN4;
output OUT;

endmodule

module or5_3(IN1,IN3,IN2,IN5,IN4,OUT);
/* synthesis black_box */

input IN1;
input IN3;
input IN2;
input IN5;
input IN4;
output OUT;

endmodule

module or5_4(IN1,IN3,IN2,IN5,IN4,OUT);
/* synthesis black_box */

input IN1;
input IN3;
input IN2;
input IN5;
input IN4;
output OUT;

endmodule

module or5_5(IN1,IN3,IN2,IN5,IN4,OUT);
/* synthesis black_box */

input IN1;
input IN3;
input IN2;
input IN5;
input IN4;
output OUT;

endmodule

module or5_6(IN1,IN3,IN2,IN5,IN4,OUT);
/* synthesis black_box */

input IN1;
input IN3;
input IN2;
input IN5;
input IN4;
output OUT;

endmodule

module or5_7(IN1,IN3,IN2,IN5,IN4,OUT);
/* synthesis black_box */

input IN1;
input IN3;
input IN2;
input IN5;
input IN4;
output OUT;

endmodule
