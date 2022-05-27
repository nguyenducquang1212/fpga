`timescale 1ns/1ns

module fullAdder_tb ();

reg [1:0] a, b;
wire [2:0] s;

fullAdder2Bit DUT(
	.a(a),
	.b(b),
	.s(s)
);

initial begin
	repeat(10) begin
		a = $random();
		b = $random();
		#5;
	end
	$finish;

end

endmodule