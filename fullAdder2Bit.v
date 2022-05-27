module fullAdder2Bit (
	input [1:0]  a,
	input [1:0]  b,
	output [2:0] s
);

wire c;

fullAdder FA0(
	.c_in (1'b0),
	.a    (a[0]),
	.b    (b[0]),
	.s    (s[0]),
	.c_out(c)
);

fullAdder FA1(
	.c_in (c),
	.a    (a[1]),
	.b    (b[1]),
	.s    (s[1]),
	.c_out(s[2])
);

endmodule