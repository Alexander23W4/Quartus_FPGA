module my_or5(
	input in1,
	input in2,
	input in3,
	input in4,
	input in5,
	output result);
	wire [4:0] in;
	assign in = {in1, in2, in3, in4, in5};
	assign result = |in;
endmodule
	