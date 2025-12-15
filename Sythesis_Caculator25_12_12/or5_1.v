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


module or5_1(IN1,IN3,IN2,IN5,IN4,OUT);
input IN1;
input IN3;
input IN2;
input IN5;
input IN4;
output OUT;

or5	lpm_instance(.IN1(IN1),.IN3(IN3),.IN2(IN2),.IN5(IN5),.IN4(IN4),.OUT(OUT));

endmodule
