module fullAdder (
	input  c_in ,
	input  a    ,
	input  b    , 
	output s    ,
	output c_out	
);

assign s = a ^ b ^ c_in;
assign c_out = (!a & b & c_in) | (a & !b & c_in) | (a & b & !c_in) | (a & b & c_in);


endmodule